using Microsoft.EntityFrameworkCore;
using OpenAIService.Entities;
using Serilog.Events;
using Serilog;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Microsoft.OpenApi.Models;
using System.Net;
using OpenAIService.Filters;
using OpenAIService.Helpers;
using System.IdentityModel.Tokens.Jwt;

Log.Logger = new LoggerConfiguration()
    //Serilog要寫入的最低等級為Information
    .MinimumLevel.Information()
    //Microsoft.AspNetCore開頭的類別等極為warning
    .MinimumLevel.Override("Microsoft.AspNetCore", LogEventLevel.Warning)
    //寫log到Logs資料夾的log.txt檔案中，並且以天為單位做檔案分割
    .WriteTo.File("./Logs/log.txt", rollingInterval: RollingInterval.Day)
    .CreateLogger();

try
{
    Log.Information("Starting web host");
    var builder = WebApplication.CreateBuilder(args);

    builder.Services.AddControllers();
    builder.Services.AddEndpointsApiExplorer();
    builder.Host.UseSerilog();
    builder.Services.AddDbContext<OpenAIContext>(
            options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

    #region swagger
    builder.Services.AddSwaggerGen(options =>
    {
        //c.SwaggerDoc("v1", new OpenApiInfo { Title = "My API", Version = "v1" });
        options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
        {
            Type = SecuritySchemeType.Http,
            Scheme = "bearer",
            BearerFormat = "JWT",
            In = ParameterLocation.Header,
            Name = "Authorization",
            Description = "JWT Authorization header using the Bearer scheme.",
        });
        options.OperationFilter<AuthorizeCheckOperationFilter>();
        #region obsolete
        //options.AddSecurityRequirement(new OpenApiSecurityRequirement
        //{
        //    {
        //        new OpenApiSecurityScheme
        //        {
        //            Reference = new OpenApiReference
        //            {
        //                Type = ReferenceType.SecurityScheme,
        //                Id = "Bearer"
        //            }
        //        },
        //        Array.Empty<string>()
        //    }
        //});
        #endregion
    });
    #endregion

    #region obsolete
    //builder.Services.AddAuthorization();
    //builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
    //    .AddJwtBearer(options =>
    //    {
    //        options.RequireHttpsMetadata = false;
    //        options.SaveToken = true;
    //        options.TokenValidationParameters = new TokenValidationParameters
    //        {
    //            ValidateIssuerSigningKey = true,
    //            IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["Jwt:Key"])),
    //            ValidateIssuer = true,
    //            ValidIssuer = builder.Configuration["Jwt:Issuer"],
    //            ValidateAudience = true,
    //            ValidAudience = builder.Configuration["Jwt:Audience"]
    //        };
    //    });
    #endregion

    #region JWT
    //清除預設映射
    JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
    //註冊JwtHelper
    builder.Services.AddSingleton<JwtHelper>();
    //使用選項模式註冊
    builder.Services.Configure<JwtSettingsOptions>(
        builder.Configuration.GetSection("JwtSettings"));
    //設定認證方式
    builder.Services
      //使用bearer token方式認證並且token用jwt格式
      .AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
      .AddJwtBearer(options => {
          options.TokenValidationParameters = new TokenValidationParameters
          {
              // 可以讓[Authorize]判斷角色
              RoleClaimType = "roles",
              // 預設會認證發行人
              ValidateIssuer = true,
              ValidIssuer = builder.Configuration.GetValue<string>("JwtSettings:Issuer"),
              // 不認證使用者
              ValidateAudience = false,
              // 如果 Token 中包含 key 才需要驗證，一般都只有簽章而已
              ValidateIssuerSigningKey = true,
              // 簽章所使用的key
              IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration.GetValue<string>("JwtSettings:SignKey")))
          };
      });
    #endregion

    var app = builder.Build();

    // Configure the HTTP request pipeline.
    if (app.Environment.IsDevelopment())
    {
        app.UseSwagger();
        app.UseSwaggerUI();
    }

    app.UseHttpsRedirection();
    app.UseAuthentication();
    app.UseAuthorization();
    app.MapControllers();
    app.Run();
}
catch (Exception ex)
{
    Log.Fatal(ex, "Host terminated unexpectedly");
}
finally
{
    Log.CloseAndFlush();
}

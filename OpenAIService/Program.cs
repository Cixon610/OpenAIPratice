using Microsoft.EntityFrameworkCore;
using Serilog.Events;
using Serilog;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Microsoft.OpenApi.Models;
using OpenAIService.Filters;
using System.IdentityModel.Tokens.Jwt;
using OpenAIService.Middleware;
using OpenAI_API;
using OpenAIDAL.Adapter;
using OpenAIDAL.MySql.Entities;
using OpenAIData.Models;
using OpenAICore.Helpers;
using OpenAICore.Services;

Log.Logger = new LoggerConfiguration()
    .MinimumLevel.Information()
    .MinimumLevel.Override("Microsoft.AspNetCore", LogEventLevel.Warning)
    .WriteTo.File("./Logs/log.txt", rollingInterval: RollingInterval.Day)
    .CreateLogger();

try
{
    Log.Information("Starting web host");
    var builder = WebApplication.CreateBuilder(args);

    builder.Services.AddControllers();
    builder.Services.AddEndpointsApiExplorer();
    builder.Host.UseSerilog();
    builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
    builder.Services.AddSingleton(
        options => new OpenAIAPI(builder.Configuration.GetValue<string>("OpenAIAPIKey")));

    #region DB
    //MSSQL
    //builder.Services.AddDbContext<OpenAIContext>(
    //        options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

    builder.Services.AddDbContext<OrderGPTContext>(options =>
        options.UseMySql(builder.Configuration.GetConnectionString("MySqlConnection"), ServerVersion.Parse("8.0.33")));
    #endregion

    #region custom class
    builder.Services.AddScoped<PromptManager>();
    builder.Services.AddScoped<MenuAdapter>();
    builder.Services.AddScoped<ChatAdapter>();
    builder.Services.AddScoped<ChatService>();
    builder.Services.AddScoped<MenuService>();

    #endregion

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
    JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
    builder.Services.AddSingleton<JwtHelper>();
    builder.Services.Configure<JwtSettingsOptions>(
        builder.Configuration.GetSection("JwtSettings"));
    builder.Services
      .AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
      .AddJwtBearer(options => {
          options.TokenValidationParameters = new TokenValidationParameters
          {
              RoleClaimType = "roles",
              ValidateIssuer = true,
              ValidIssuer = builder.Configuration.GetValue<string>("JwtSettings:Issuer"),
              ValidateAudience = false,
              ValidateIssuerSigningKey = true,
              IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration.GetValue<string>("JwtSettings:SignKey")))
          };
      });
    #endregion

    var app = builder.Build();
    app.UseMiddleware<ExceptionHandlerMiddleware>();
    if (app.Environment.IsDevelopment())
    {
        app.UseSwagger();
        app.UseSwaggerUI();
    }
    //app.UseHttpsRedirection();
    app.UseAuthentication();
    app.UseAuthorization();
    //JwtMiddleware需在useAuthentication之後
    app.UseMiddleware<JwtMiddleware>();
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

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
    //Serilog�n�g�J���̧C���Ŭ�Information
    .MinimumLevel.Information()
    //Microsoft.AspNetCore�}�Y�����O������warning
    .MinimumLevel.Override("Microsoft.AspNetCore", LogEventLevel.Warning)
    //�glog��Logs��Ƨ���log.txt�ɮפ��A�åB�H�Ѭ���찵�ɮפ���
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
    //�M���w�]�M�g
    JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
    //���UJwtHelper
    builder.Services.AddSingleton<JwtHelper>();
    //�ϥοﶵ�Ҧ����U
    builder.Services.Configure<JwtSettingsOptions>(
        builder.Configuration.GetSection("JwtSettings"));
    //�]�w�{�Ҥ覡
    builder.Services
      //�ϥ�bearer token�覡�{�ҨåBtoken��jwt�榡
      .AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
      .AddJwtBearer(options => {
          options.TokenValidationParameters = new TokenValidationParameters
          {
              // �i�H��[Authorize]�P�_����
              RoleClaimType = "roles",
              // �w�]�|�{�ҵo��H
              ValidateIssuer = true,
              ValidIssuer = builder.Configuration.GetValue<string>("JwtSettings:Issuer"),
              // ���{�ҨϥΪ�
              ValidateAudience = false,
              // �p�G Token ���]�t key �~�ݭn���ҡA�@�볣�u��ñ���Ӥw
              ValidateIssuerSigningKey = true,
              // ñ���ҨϥΪ�key
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

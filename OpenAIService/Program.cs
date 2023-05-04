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
using OpenAIService.Middleware;

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

using Microsoft.EntityFrameworkCore;
using OpenAIReact.Enitities;
using Serilog;
using Serilog.Events;

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

    // Add services to the container.
    builder.Services.AddControllersWithViews();
    builder.Services.AddDbContext<OpenAIContext>(
        options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
    builder.Host.UseSerilog();
    var app = builder.Build();

    // Configure the HTTP request pipeline.
    if (!app.Environment.IsDevelopment())
    {
        // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
        app.UseHsts();
    }

    app.UseHttpsRedirection();
    app.UseStaticFiles();
    app.UseRouting();

    app.MapControllerRoute(
        name: "default",
        pattern: "{controller}/{action=Index}/{id?}");

    app.MapFallbackToFile("index.html"); ;

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
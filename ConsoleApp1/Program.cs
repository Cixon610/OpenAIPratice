// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

await Delay("T1");
await Delay("T2");
await Delay("T3");

async Task Delay(string text)
{
    Console.WriteLine($"In {text}");
    Thread.Sleep(1000);
    Console.WriteLine($"Out {text}");
}

Console.ReadLine();
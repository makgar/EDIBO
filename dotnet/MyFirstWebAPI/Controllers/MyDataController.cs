using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace MyFirstWebAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class MyDataController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
            //"Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
            "Masterchief", "Marcus Fenix", "Booker", "Altaïr Ibn-LaʼAhad", "B.J. Blazkowicz"
        };

        public const double PI = 3.1415926535897931;

        private readonly ILogger<MyDataController> _logger;

        public MyDataController(ILogger<MyDataController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IEnumerable<MyData> Get()
        {
            var rng = new Random();
            return Enumerable.Range(1, 5).Select(index => new MyData
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = rng.Next(-20, 55),
                Summary = Summaries[rng.Next(Summaries.Length)]
            })
            .ToArray();
        }
    }
}

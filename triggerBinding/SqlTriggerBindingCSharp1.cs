using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Sql;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;


namespace Company.Function
{
    public static class SqlTriggerBinding
    {
        // Visit https://aka.ms/sqltrigger to learn how to use this trigger binding
        [FunctionName("SqlTriggerBindingCSharp1")]
    public static void Run(
            [SqlTrigger("[dbo].[person]", "connection-string")] IReadOnlyList<SqlChange<person>> changes,
            ILogger log)
        {
            log.LogInformation("SQL Changes: " + JsonConvert.SerializeObject(changes));

        }
    }

public class person
{
    public int person_id { get; set; }
    public string person_name { get; set; }
    public string person_email { get; set; }
    public string pet_preference { get; set; }
}
}

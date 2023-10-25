module.exports =  function(handlebars) {
    return function(arg1, arg2, options) {
        const knex = require("knex")({
            client: "postgresql",
            connection: {
              database: "quiz",
              user: "postgres",
              password: "postgres",
            },
          });
          let b = {question: "nah"}
        let results =  knex('history').select("*");
        return arg1.map((e)=>{
            return (e.correct_answer == arg2[arg1.indexOf(e)]) ?   options.fn(b) : options.inverse(b);
            //return(arg1.indexOf(e))
        }
        )
     
    };
  }
module.exports = function (handlebars) {
  return function (arg1, arg2, options) {
    arg1.map((e) => {
      if (
        e.correct_answer ===
        arg2[arg1.indexOf(e)].toString().replaceAll("_", " ")
      ) {
        console.log("correct");
        return "text-white";
      }
    });
  };
};

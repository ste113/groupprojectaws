module.exports = function (handlebars) {

  return function (arg1, arg2, options) {
    return arg1.map((e) => {
      return e.correct_answer == arg2[arg1.indexOf(e)]
        ? options.fn()
        : options.inverse();
      //return(arg1.indexOf(e))
    });
  };
};

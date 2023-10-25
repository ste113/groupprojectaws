

module.exports = function (handlebars) {
  return function (arg1, arg2, options) {
    console.log(arg2)
    return arg1.map((e) => {
      return e.correct_answer == arg2[correctanswers.indexOf(e)]
        ? options.fn(e)
        : options.inverse(e);
    });
  };
};

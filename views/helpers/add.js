module.exports = function (handlebars) {
  return function (arg1, arg2) {
    //return new handlebars.SafeString('Hello!');

    return arg1 + arg2;
  };
};

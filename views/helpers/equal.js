module.exports = function (handlebars) {
  return function (arg1, arg2, options) {
    //return new handlebars.SafeString('Hello!');

    return arg1 == arg2 ? options.fn(this) : options.inverse(this);
  };
};

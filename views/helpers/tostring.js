module.exports = function (handlebars) {
  return function (arg1) {
    //return new handlebars.SafeString('Hello!');
    return arg1.toString().replaceAll(" ", "_");
  };
};

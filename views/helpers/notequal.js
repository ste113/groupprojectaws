module.exports = function(handlebars) {
    
    return function(arg1, arg2, options) {
        //return new handlebars.SafeString('Hello!');
      
        return (arg1 == arg2) ?  options.inverse(this): options.fn(this);
     
    };
  }

  
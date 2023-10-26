module.exports = function (handlebars) {
  return function (arg1, arg2, args3) {
    try{
      if (
        arg1[args3].correct_answer === arg1[args3].choice_1 &&
        arg2[args3].toString().replaceAll("_", " ") === arg1[args3].correct_answer
      ) {
        return "checked";
      } else if (
        arg1[args3].correct_answer !== arg1[args3].choice_1 &&
        arg2[args3].toString().replaceAll("_", " ") === arg1[args3].choice_1
      ){
        return "checked"
      }
    }
    catch(err){
      console.log(err)
    }
  };
};

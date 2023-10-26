module.exports = function (handlebars) {
  return function (arg1, arg2, args3) {
    try{
      if (
        arg1[args3].correct_answer === arg1[args3].choice_2 &&
        arg2[args3].toString().replaceAll("_", " ") === arg1[args3].correct_answer
      ) {
        return "bg-gray-400";
      } else if (
        arg1[args3].correct_answer !== arg1[args3].choice_2 &&
        arg2[args3].toString().replaceAll("_", " ") === arg1[args3].choice_2
      ) {
        return "bg-red-400";
      } else if (
        arg1[args3].correct_answer === arg1[args3].choice_2 &&
        arg2[args3].toString().replaceAll("_", " ") !== arg1[args3].correct_answer
      ) {
        return "bg-green-400 ";
      }
    }catch(err){
      console.log(err)
    }
   
  };
};

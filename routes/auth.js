var express = require('express');
var router = express.Router();
var passport = require('passport');
var LocalStrategy = require('passport-local');
var bcrypt = require('bcrypt');
var flash = require('express-flash');

const knex = require("knex")({
    client: "postgresql",
    connection: {
      database: "quiz",
      user: "postgres",
      password: "postgres",
    },
  });

router.use(flash())



passport.use(new LocalStrategy(async function verify(username, password, cb) {
    let selected = await knex('users').select('*').where('username' , '=', username);
    let row = selected[0];

    if(!row){
        return cb(null, false, {message: 'No user with that username!'});
    }

    try{
        if (await bcrypt.compare(password, row.password)){
            return cb(null, row)

        } else{
            return cb(null, false, {message: "Passoword Incorrect!"})
        }
    } catch(e){
        return cb(e)
    }
    
}));


passport.serializeUser(function(user, cb) {
    process.nextTick(function() {
      cb(null, { id: user.id, username: user.username });
    });
  });

passport.deserializeUser(function(user, cb) {
    process.nextTick(function() {
      return cb(null, user);
      
    });
  });

router.post('/logout', function(req, res, next) {
    req.logout(function(err) {
      if (err) { return next(err); }
      res.redirect('/');
    });
  });

router.get("/login", (req, res) => {
    res.render("login", { layout: "main" });
});

router.get("/", (req, res) => {
    if(req.user !== undefined){
        res.render("loggedin", { layout: "main", name: req.user.username});
    }
    else{
        res.render("loggedout", {layout: "main"})
    }
    
    
    
});//


router.post('/login/password', passport.authenticate('local', {
    successRedirect: '/',
    failureFlash: true,
    failureRedirect: '/login',
}));




module.exports = router;
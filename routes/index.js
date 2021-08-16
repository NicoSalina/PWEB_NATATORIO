const express = require('express');
const router = express.Router();

router.get('/', function(req, res, next) {
  user = req.session.name;
  res.render('index');
});

module.exports = router;

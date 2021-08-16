const express = require('express');
const router = express.Router();

const aboutUs = (req, res) => {
  const user = req.session.name;
  res.render('aboutUs')
}

router.get('/', aboutUs);
module.exports = router;
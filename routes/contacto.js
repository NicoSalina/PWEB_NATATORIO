const express = require('express');
const router = express.Router();

const contacto = (req, res) => {
  const user = req.session.name;
  res.render('contacto')
}

router.get('/', contacto);
module.exports = router;
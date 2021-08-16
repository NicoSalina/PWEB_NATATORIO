const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const dotenv = require('dotenv');
const hbs = require('hbs')
const session = require('express-session');
const {verifyUser, verifyAdmin} = require('./middlewares/auth');
dotenv.config();

const indexRouter = require('./routes/index');
const registro = require('./routes/registro');
const productos = require('./routes/productos');
const login = require('./routes/login');
const sobreNosotros = require('./routes/sobreNosotros');
const contacto = require('./routes/contacto');
const adminIndex = require('./routes/admin/index');
const adminCategorias = require('./routes/admin/categorias');
const adminProductos = require('./routes/admin/productos');
const adminUsuarios = require('./routes/admin/usuarios');

const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
hbs.registerPartials(__dirname + '/views/Partials', function (err){})
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
  secret: 'passwordSecreto',
  cookie: {maxAge: null},
  resave: false,
  saveUninitialized: false,
}))

//ALL
app.use('/', indexRouter);
app.use('/registro', registro);
app.use('/productos', verifyUser, productos);
app.use('/login', login);
app.use('/sobreNosotros', sobreNosotros);
app.use('/contacto', contacto);


// ADMIN
app.use('/admin', verifyAdmin, adminIndex);
app.use('/admin/productos', adminProductos);
app.use('/admin/categorias', adminCategorias);
app.use('/admin/usuarios', adminUsuarios);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;

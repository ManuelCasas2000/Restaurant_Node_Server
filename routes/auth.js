const {Router}         = require('express');
const router           = Router();
const {check}          = require('express-validator');
const {crearUsuario, 
       loginUsuario, 
       revalidarToken} = require('../controllers/auth');
const {validarCampos}  = require('../middlewares/validar-campos');
const { validarJWT }   = require('../middlewares/validar-jwt');

router.post('/new', [
    check('name', 'El nombre es obligarotorio.').not().isEmpty(),
    check('email','El email no es válido.').isEmail(),
    check('password', 'La contraseña es obligatoria y de mínimo 4 caracteres.').isLength({min:4}),
    validarCampos
], crearUsuario);

router.post('/', [
    check('email','El email no es válido.').isEmail(),
    check('password', 'La contraseña es obligatoria y de mínimo 4 caracteres.').isLength({min:4}),
    validarCampos
] ,loginUsuario);

router.get('/renew',validarJWT, revalidarToken);

module.exports = router;

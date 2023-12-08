const {Router} = require('express');
const {check}  = require('express-validator');
const Usuario  = require('../models/Usuario');
const {
    existeEmail, 
    existeUsuarioPorId,
    existeUsuarioPorIdActivo
}              = require('../helpers/db-validators');
const {
    usuariosGet,
    usuarioGet,
    usuarioPost,
    usuarioPut,
    usuarioDelete
}              = require('../controllers/usersControllers');
const { validarCampos } = require('../middlewares/validar-campos');

const router = Router();

router.get('/', usuariosGet);
router.get('/:id', [
    check('id').custom(existeUsuarioPorIdActivo),
    validarCampos    
], usuarioGet);
router.post('/', [
    check('nombre','El campo Nombre es obligatorio').not().isEmpty(),
    check('email','El correo no es válido').isEmail(),
    check('email').custom(existeEmail),
    validarCampos
],usuarioPost);
router.put('/:id',[
    check('id').custom(existeUsuarioPorId),
    check('email','El correo no es válido').isEmail(),
    check('email').custom(existeEmail),
    validarCampos
], usuarioPut);
router.delete('/:id',[
    check('id').custom(existeUsuarioPorIdActivo),
    validarCampos
],usuarioDelete);

module.exports = router;




const {Router}          = require('express');
const { check }         = require('express-validator');
const router            = Router();
const {getBookings, 
       newBooking, 
       updateBooking, 
       dropBooking}     = require('../controllers/bookings');
const { isDate }        = require('../helpers/isDate');
const { validarCampos } = require('../middlewares/validar-campos');
const {validarJWT}      = require('../middlewares/validar-jwt');

router.use(validarJWT);
router.get('/', getBookings);

router.post('/',[
    check('title','El título es obligatorio.').not().isEmpty(),
    check('start','La fecha de inicio es obligatoria.').custom(isDate),
    check('end','La fecha final es obligatoria.').custom(isDate),
    validarCampos

], newBooking);

router.put('/:id',[
    check('title','El título es obligatorio.').not().isEmpty(),
    check('start','La fecha de inicio es obligatoria.').custom(isDate),
    check('end','La fecha final es obligatoria.').custom(isDate),
    check('id','Id no exite en BBDD.').isMongoId(),
    validarCampos
], updateBooking);

router.delete('/:id', dropBooking);

module.exports = router;


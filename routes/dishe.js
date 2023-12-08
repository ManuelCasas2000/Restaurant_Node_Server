const {Router} = require('express');
const { dishesGet, dishesGetPage, disheCard } = require('../controllers/dishes');

const router = Router();

// Get de todos los platos -> localhost:3000/api/dishes
router.get('/', dishesGet);

// Get de todos los platos (paginado) -> localhost:3000/api/dishes/bypage?page=2&limit=2
router.get('/bypage', dishesGetPage);

// Get de detalles de un plato (toda la información) -> localhost:3000/api/dishes/53064
router.get('/byid', disheCard);


// localhost:3000/api/dishes?page=1&limit=4

//router.get('/', dishesGetPage);
// router.get('/', (req,res) => {
//     res.json({
//         ok: true,
//         msg: 'get API Dishes'
//     });
// });

module.exports = router;


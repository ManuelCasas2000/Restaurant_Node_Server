const { response } = require('express');
const DisheAPI = require('../models/Dishe');
const DishList = require('../models/DishList');
const { sleep } = require('../helpers/sleep');

const dishesGet = async(req, res = response) => {
    try {
        // const dishes = await DisheAPI.findAll();
        //await sleep(2);
        const dishes = await DishList.findAll();
        res.json(dishes);
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error internoen get.'
        })
    }
}

// localhost:3000/api/dishes?page=1&limit=4
// https://www.bezkoder.com/node-js-sequelize-pagination-mysql/

const dishesGetPage = async(req, res = response) => {
    try {
        const page = req.query.page || 1;
        const limit = req.query.limit || 2;
        const skip = (page - 1) * limit;
        // const dishes = await DisheAPI.findAll({limit: limit, offset: skip})
        // const count = await DisheAPI.count();
        const dishes = await DishList.findAll({limit: limit, offset: skip})
        const count = await DishList.count();
        res.json(dishes);
        // res.json({
        //     msg: dishes,
        //     currentPage: page,
        //     limit: limit,
        //     skip: skip,
        // });

    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error interno en get paginación.'
        })
    }
}

const disheCard = async (req,res = response) => {
    try {
        
        // const idMeal = req.params.id;
        console.log("Entra en disheCard");
        const id = req.query.id;
        console.log("Entra en disheCard con id:", id);
        const dishe = await DisheAPI.findByPk(id);
        // const dishe = await DisheAPI.findOne({where: {idMeal:idMeal}});
        // const dishe = await DisheAPI.findOne({where: {id:id}});
        res.json(dishe);
        // res.json({
        //     idMeal,
        //     msg: dishe
        // })
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error al buscar detalle de plato.'
        })        
    }

}


module.exports = {
    disheCard,
    dishesGet,
    dishesGetPage,
}
const {DataTypes, INTEGER} = require('sequelize');
const { db } = require('../db/connection');

// CREATE TABLE IF NOT EXISTS Dishes(
//     id INTEGER PRIMARY KEY,
//     name VARCHAR (50) NOT NULL,
//     idMeal INTEGER NOT NULL,
//     cathegory VARCHAR (20) NOT NULL,
//     texto VARCHAR (100) NOT NULL,
//     instructions VARCHAR (200) NOT NULL,
//     ingredients VARCHAR (200) NOT NULL,
//     gluten VARCHAR(2) NOT NULL,
//     price INTEGER NOT NULL,
//     createdAt timestamp,
//     updatedAt timestamp);

// insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
// values (2,"Segundo",134,"Categoria"
// ,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
// ,"si",323);



const DishList = db.define('DishList', {
    id: {
        type: INTEGER,
        required: true,
        primaryKey: true
    },
    name: {
        type: String,
        required: true
    },
    idMeal: {
        type: INTEGER,
        required: true
    },
    cathegory: {
        type: String,
        required: true
    },
    texto: {
        type: String,
        required: true
    },
    image: {
        type: String,
        required: true
    },
})

module.exports = DishList;
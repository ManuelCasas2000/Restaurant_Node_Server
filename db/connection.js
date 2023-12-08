
const mongoose = require('mongoose');
mongoose.set('strictQuery', false);
const {Sequelize} = require('sequelize');

const dbConnection = async() => {
    try {
        await mongoose.connect( process.env.MONGODB_CNN);
    } catch (error) {
        console.log(error);
        throw new Error('Error a la hora de iniciar la base de datos');
    }
}

const dbConnectionAPI = new Sequelize('sqliteAPI','root','', {
    host:'db/sqliteAPI.db',
    dialect:'sqlite'
})

const db = new Sequelize('sqliteAPI','root','', {
    host:'db/sqliteAPI.db',
    dialect:'sqlite'
});

module.exports = {
    dbConnection,
    dbConnectionAPI,
    db
}
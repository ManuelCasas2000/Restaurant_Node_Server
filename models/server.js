const express        = require('express');
var cors             = require('cors');
const userR          = require('../routes/usersRoutes');
const userAuth       = require('../routes/auth');
const calendar       = require('../routes/bookings');
const dishes         = require('../routes/dishe');
const mensajes       = require('../routes/mensajes');
const {dbConnection, dbConnectionAPI} = require('../db/connection');

class Server {

    constructor() {
        this.app = express();
        this.port = process.env.PORT;
        this.tabla = process.env.TABLA_USUARIOS;
        this.Connection();
        this.ConnectionAPI();
        this.usuariosPath = '/api/auth';
        this.calendarPath = '/api/events';
        this.dishesPath = '/api/dishes';
        this.mensajes = '/api/mensajes';
        // Middlewares
        this.middlewares();
        this.app.use(cors());
        this.app.use(express.json());
        // Rutas de mi app
        this.routes();

    }

    async Connection() {
        try {
            await dbConnection();
            console.log('Conectado a BBDD MongoDB.');
        } catch (error) {
            console.log('Error en la conexión a BBDD', error);
            throw new Error();
        }
    }


    async ConnectionAPI() {
        try {
            await dbConnectionAPI.authenticate();
            console.log('Conectado a BBDD SQLite.');
        } catch (error) {
            console.log('Error en la conexión a BBDD', error);
            throw new Error();
        }
    }

    async dbCreateTable() {
        try {
            await db.query(this.tabla);
            console.log('Tabla creada.')
        } catch (error) {
            console.log('Error en la creación de la tabla en BBDD', error);
            throw new Error();
        }
    }

    middlewares() {
        this.app.use(express.static('public'));
    }

    routes() {
        this.app.use(this.usuariosPath,userAuth);
        this.app.use(this.calendarPath,calendar);
        this.app.use(this.dishesPath,dishes);
        this.app.use(this.mensajes,mensajes);
    }

    listen() {
        this.app.listen(this.port, () => {
            console.log(`Servidor escuchando en puerto: ${this.port}` )
        });
    }


}

module.exports = Server;
const Usuario = require('../models/Usuario');

const existeUsuarioPorId = async(id) => {
    const existeUsuario = await Usuario.findByPk(id);
    if(!existeUsuario) {
        throw new Error(`El Id no existe ${id}.`)
    }
}

const existeUsuarioPorIdActivo = async(id='') => {
    const existeUsuario = await Usuario.findOne({where: {
        estado: 1,
        id
    }});
    if(!existeUsuario) {
        throw new Error(`El Id ${id} no existe (no esta activo).`)
    }
}

const existeEmail = async(correo = '') => {
    const hayEmail = await Usuario.findOne({where: {
        email: correo
    }});
    if(hayEmail) {
        throw new Error(`El email indicado ${correo} ya existe.`)
    }
}

module.exports = {
    existeEmail,
    existeUsuarioPorId,
    existeUsuarioPorIdActivo
};
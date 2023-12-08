const {response}           = require('express');
const { validationResult } = require('express-validator');
const Usuario              = require('../models/Usuario');

const usuariosGet = async(req,res = response) => {
    try {
        const usuarios = await Usuario.findAll({
            where: {
                estado: 1
            }
        });
        res.json(usuarios)
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error interno en usuariosGet'
        })        
    }
}

const usuarioGet = async(req,res = response) => {
    const {id} = req.params;
    try {
        const usuario = await Usuario.findByPk(id);
        if(usuario) {
            res.json(usuario);
        } else {
            res.status(400).json({
                msg: `El usuario con id ${id} no existe en BBDD.`
            });
        }
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error interno.....'
        })        
    }
}

const usuarioPost = async(req,res = response) => { // Crear
    const {body} = req;
    const errors = validationResult(req);
    try {
        if(!errors.isEmpty()) {
            return res.status(400).json({
                msg: 'Error al dar de alta al usuario:',
                msg: errors
            })
        }
        const usuario = await Usuario.create(body);
        await usuario.save();
        res.json({
            msg: 'Usuario creado correctamente.'
        })
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error interno.....'
        })        
    }
}

const usuarioPut = async(req,res = response) => { // Actualizar
    const {id} = req.params;
    const {body} = req;
    const errors = validationResult(req);
    try {
        if(!errors.isEmpty()) {
            return res.status(400).json({
                msg: 'Error al dar de alta al usuario:',
                msg: errors
            })
        }  
        const usuario = await Usuario.findByPk(id);
        await usuario.update(body);
        res.json({
            msg: 'Usuario modificado correctamente'
        })
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error interno.....'
        })        
    }

}

const usuarioDelete = async(req,res = response) => {
    const {id} = req.params;
    try {
        const usuario = await Usuario.findByPk(id);
        if(!usuario) {
            return res.status(400).json({
                msg: `No existe ningun usuario con id ${id}.`
            })
        }
        // await usuario.destroy();
        await usuario.update({estado:false});
        res.json({
            msg:`Usuario con id ${id} borrado logicamente.`
        })
        
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Error interno.....'
        })       
    }
}

module.exports = {
    usuarioDelete,
    usuariosGet,
    usuarioGet,
    usuarioPost,
    usuarioPut
}

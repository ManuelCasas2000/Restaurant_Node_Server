const express            = require('express');
const bcrypt             = require('bcryptjs');
const Usuario            = require('../models/Usuario');
const {generarJWT}       = require('../helpers/jwt');
const {validationResult} = require('express-validator');

const crearUsuario = async(req, res= response) => {
    const {name, email, password} = req.body;
    try {
        let findUsuario = await Usuario.findOne({email: email});
        if(findUsuario) {
            return res.status(400).json({
                ok: false,
                msg: 'Ya existe el usuario en BBDD.'
            })
        }
        const usuario = new Usuario(req.body);
        const salt = bcrypt.genSaltSync();
        usuario.password = bcrypt.hashSync(password,salt);
        await usuario.save();
        const token = await generarJWT(usuario.id, usuario.name);
        res.status(201).json({
            msg:"Petición POST de creación de usuario.",
            ok:true,
            uid: usuario.id,
            name: usuario.name,
            email: usuario.email,
            password: usuario.password,
            token
        })
        
    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok:false,
            msg:"Error al crear usuario en BBDD (ver logs)."
        })
    }
}

const loginUsuario = async(req, res = response) => {
    const {email, password} = req.body;
    try {
        const usuario = await Usuario.findOne({email:email});
        if(!usuario) {
            return res.status(400).json({
                ok: false,
                msg: "Usuario no encontrado."
            })
        }
        const validPassword = bcrypt.compareSync(password, usuario.password);
        if(!validPassword) {
            return res.status(400).json({
                ok: false,
                msg: "Contraseña erronea."
            })
        }
        const token = await generarJWT(usuario.id, usuario.name);
        res.status(201).json({
            msg:"Petición POST de login de usuario.",
            ok:true,
            uid: usuario.id,
            email: usuario.email,
            name: usuario.name,
            password: usuario.password,
            token
        })
        
    } catch (error) {
        console.error(error);
        res.status(500).json({
            ok: false,
            msg: "Error al hacer login (ver logs)."
        })
    }
}

const revalidarToken = async(req, res = response) => {
    const {uid,name} = req;
    try {
        const token = await generarJWT(uid,name);
        res.status(200).json({
            msg:"Petición GET de renew de Token.",
            ok:true,
            uid,
            name,
            token
        })
    } catch (error) {
        console.error(error);
        res.status(500).json({
            ok: false,
            msg: 'Error al revalidar el token (ver logs).'
        })
    }
}

module.exports = {
    crearUsuario,
    loginUsuario,
    revalidarToken
}
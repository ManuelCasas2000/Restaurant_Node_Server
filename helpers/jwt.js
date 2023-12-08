const jwt = require('jsonwebtoken');

const generarJWT = (uid, name) => {
    return new Promise((resolve, reject) => {
        const payload = {uid,name};
        jwt.sign(payload, process.env.SECRET_JWT_SEED, {
            expiresIn: process.env.TOKEN_EXPIRES
        }, (err, token) => {
            if(err) {
                console.log(err);
                PromiseRejectionEvent("Error al generar el token.")
            }
            resolve(token);
        })
    })
}

module.exports = {
    generarJWT
}

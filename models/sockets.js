class Sockets {
    constructor(io) {
        this.io = io;
        this.socketEvents();
    }

    socketEvents() {
        // On connection
        this.io.on('connection', (socket) => {
            // TODO Validar el JWT -> Si el token no es válido: Desconectar

            // TODO Sabes qué usuario está activo mendiante el UID

            // TODO Emitir todos los ususarios conectados

            // TODO Socket join: Une a un usuario en una sala en particular

            // TODO Escuchar cuando un cliente manda un mensaje "mensaje-personal"

            // TODO Disconnect

        });
    }
}

module.exports = Sockets;
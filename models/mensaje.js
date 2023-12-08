const { Schema, model } = require("mongoose");

const MensajeEschema = Schema({

    de: {
        type: Schema.Types.ObjectId, // Id de Mongoose
        ref: 'Usuario',
        required: true,
    },
    para: {
        type: String,
        required: true,
    },
    mensaje: {
        type: String,
        required: true,
    }
}, {
    timestamps: true // Añade fecha de creación y fecha de última modificación
});

MensajeEschema.method('toJSON', function() {
    const {_v, ...object} = this.toObject();
    return object;
});

module.exports = model('Mensaje', MensajeEschema);
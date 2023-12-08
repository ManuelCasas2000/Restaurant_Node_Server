const {response} = require('express');
const Booking    = require('../models/Booking');

const getBookings = async(req, res = response) => {
    try {
        const bookings = await Booking.find().populate('user','name');
        res.status(201).json({
            ok: true,
            msg: 'getBookings',
            bookings
        })
        
    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg:'Error al obtener las reservas.'
        })
    }
};

const newBooking = async(req, res = response) => {
    const booking = new Booking(req.body);
    try {
        booking.user = req.uid;
        const bookingSaved = await booking.save();
        res.status(201).json({
            ok: true,
            msg: 'newBooking',
            body: req.body,
            evento: bookingSaved
        })
        
    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg:'Error al grabar una reserva.'
        })
    }
};

const updateBooking = async(req, res = response) => {
    const bookingId = req.params.id;
    const uid = req.uid;
    try {
        const booking = await Booking.findById(bookingId);
        if(booking.user.toString() !== uid) { // Se quiere actualizar el evento de otra persona
            return res.status(401).json({
                ok: false,
                msg:'No es el propietario de esa reserva.'
            })    
        }
        const newBooking = {
            ...req.body,
            user: uid
        }
        const bookingUpdated = await Booking.findByIdAndUpdate(booking, newBooking, {new:true});
        res.status(201).json({
            ok: true,
            msg: 'updateBooking -> Reserva actualizada correctamente.',
            bookingId,
            newBooking,
            body: req.body
        })
        
    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg:'Error al modificar una reserva.'
        })
    }
};

const dropBooking = async(req, res = response) => {
    const bookingId = req.params.id;
    const uid = req.uid;
    try {
        const booking = await Booking.findById(bookingId);
        if(booking.user.toString() !== uid) {
            return res.status(401).json({
                ok: false,
                msg: "No es el propitario de la reserva."
            })
        }
        const bookingDeleted = await Booking.findByIdAndDelete(bookingId);
        res.status(201).json({
            ok: true,
            msg: 'dropBooking -> Reserva borrada.',
            bookingId,
            bookingDeleted,
            body: req.body
        })
        
    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg:'Error al borrar una reserva.'
        })
    }
};

module.exports = {
    dropBooking,
    getBookings, 
    newBooking, 
    updateBooking, 
}
'use strict';

const jwt = require('jsonwebtoken');
const config = require('../config'); // Assume you have a config file for JWT secret

module.exports = function (req, res, next) {
    const token = req.headers['authorization'] && req.headers['authorization'].split(' ')[1];

    if (!token) {
        return res.status(403).send('A token is required for authentication');
    }

    jwt.verify(token, config.JWT_SECRET, (err, decoded) => {
        if (err) {
            return res.status(401).send('Invalid Token');
        }
        req.user = decoded;
        return next();
    });
};
const express = require('express');
const morgan = require('morgan');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware configuration
app.use(morgan('dev')); // Logging
app.use(express.json()); // Parse JSON bodies

// Basic routing
app.get('/', (req, res) => {
    res.send('Welcome to the Data Migration Dashboard!');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
const express = require('express');
const usersRouter = require('./routes/users');

const app = express();
const PORT = process.env.PORT || 3000;

// ---------------------------------------------------------------
// Middleware
// express.json() parses incoming JSON request bodies and makes
// them available on req.body (needed for POST / PUT requests).
// ---------------------------------------------------------------
app.use(express.json());

// Simple request logger — helpful for seeing the
// Client → Request → Server flow while you test with Postman.
app.use((req, res, next) => {
  console.log(`${new Date().toISOString()} - ${req.method} ${req.originalUrl}`);
  next();
});

// ---------------------------------------------------------------
// Basic test route
// ---------------------------------------------------------------
app.get('/', (req, res) => {
  res.status(200).json({ message: 'API is working' });
});

// ---------------------------------------------------------------
// Users API routes
// Everything under /api/users is handled by routes/users.js
// ---------------------------------------------------------------
app.use('/api/users', usersRouter);

// ---------------------------------------------------------------
// 404 handler — runs when no route above matched
// ---------------------------------------------------------------
app.use((req, res) => {
  res.status(404).json({
    success: false,
    message: `Route ${req.originalUrl} not found`,
  });
});

// ---------------------------------------------------------------
// Global error handler — catches anything thrown/passed to next()
// ---------------------------------------------------------------
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({
    success: false,
    message: 'Something went wrong on the server',
  });
});

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});

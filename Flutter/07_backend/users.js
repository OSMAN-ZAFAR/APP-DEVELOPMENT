const express = require('express');
const router = express.Router();

// ---------------------------------------------------------------
// In-memory "database"
// In a real app this array would be replaced by a real database
// (MongoDB, PostgreSQL, MySQL, etc). Keeping it in memory means
// the data resets every time the server restarts.
// ---------------------------------------------------------------
let users = [
  { id: 1, name: 'Ali', email: 'ali@example.com', age: 22 },
  { id: 2, name: 'Sara', email: 'sara@example.com', age: 25 },
];

// Keeps track of the next id to assign (avoids id collisions after deletes)
let nextId = 3;

// Small helper to validate the shape of incoming user data
function validateUserPayload(body, { partial = false } = {}) {
  const errors = [];
  const { name, email, age } = body;

  if (!partial || name !== undefined) {
    if (!name || typeof name !== 'string' || !name.trim()) {
      errors.push('name is required and must be a non-empty string');
    }
  }

  if (!partial || email !== undefined) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!email || typeof email !== 'string' || !emailRegex.test(email)) {
      errors.push('email is required and must be a valid email address');
    }
  }

  if (!partial || age !== undefined) {
    if (age === undefined || typeof age !== 'number' || Number.isNaN(age) || age <= 0) {
      errors.push('age is required and must be a positive number');
    }
  }

  return errors;
}

// ---------------------------------------------------------------
// GET /api/users
// Fetch every user
// ---------------------------------------------------------------
router.get('/', (req, res) => {
  res.status(200).json({
    success: true,
    count: users.length,
    data: users,
  });
});

// ---------------------------------------------------------------
// GET /api/users/:id
// Fetch a single user by id
// ---------------------------------------------------------------
router.get('/:id', (req, res) => {
  const id = Number(req.params.id);
  const user = users.find((u) => u.id === id);

  if (!user) {
    return res.status(404).json({
      success: false,
      message: `User with id ${id} not found`,
    });
  }

  res.status(200).json({
    success: true,
    data: user,
  });
});

// ---------------------------------------------------------------
// POST /api/users
// Create a new user
// ---------------------------------------------------------------
router.post('/', (req, res) => {
  const errors = validateUserPayload(req.body || {});

  if (errors.length > 0) {
    return res.status(400).json({
      success: false,
      message: 'Validation failed',
      errors,
    });
  }

  const { name, email, age } = req.body;

  // Prevent duplicate emails
  const emailTaken = users.some((u) => u.email.toLowerCase() === email.toLowerCase());
  if (emailTaken) {
    return res.status(409).json({
      success: false,
      message: `A user with email ${email} already exists`,
    });
  }

  const newUser = {
    id: nextId++,
    name: name.trim(),
    email: email.trim(),
    age,
  };

  users.push(newUser);

  res.status(201).json({
    success: true,
    message: 'User created successfully',
    data: newUser,
  });
});

// ---------------------------------------------------------------
// PUT /api/users/:id
// Update an existing user (full or partial update)
// ---------------------------------------------------------------
router.put('/:id', (req, res) => {
  const id = Number(req.params.id);
  const userIndex = users.findIndex((u) => u.id === id);

  if (userIndex === -1) {
    return res.status(404).json({
      success: false,
      message: `User with id ${id} not found`,
    });
  }

  const errors = validateUserPayload(req.body || {}, { partial: true });
  if (errors.length > 0) {
    return res.status(400).json({
      success: false,
      message: 'Validation failed',
      errors,
    });
  }

  const { name, email, age } = req.body;

  const updatedUser = {
    ...users[userIndex],
    ...(name !== undefined && { name: name.trim() }),
    ...(email !== undefined && { email: email.trim() }),
    ...(age !== undefined && { age }),
  };

  users[userIndex] = updatedUser;

  res.status(200).json({
    success: true,
    message: 'User updated successfully',
    data: updatedUser,
  });
});

// ---------------------------------------------------------------
// DELETE /api/users/:id
// Remove a user
// ---------------------------------------------------------------
router.delete('/:id', (req, res) => {
  const id = Number(req.params.id);
  const userIndex = users.findIndex((u) => u.id === id);

  if (userIndex === -1) {
    return res.status(404).json({
      success: false,
      message: `User with id ${id} not found`,
    });
  }

  const [deletedUser] = users.splice(userIndex, 1);

  res.status(200).json({
    success: true,
    message: 'User deleted successfully',
    data: deletedUser,
  });
});

module.exports = router;

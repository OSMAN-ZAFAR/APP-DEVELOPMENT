# Users API — Node.js + Express Backend

A simple REST backend built with **Node.js** and **Express.js**, meant to
show a Flutter developer exactly what happens behind the scenes when a
mobile app sends or receives data:

```
Client (Flutter app) → Request → Server (Express) → Processing → Response → Client
```

No database is used — users are stored in an in-memory JavaScript array
so you can focus purely on how HTTP requests and responses work.

---

## Part 1: Setup & Run

```bash
# 1. Install dependencies
npm install

# 2. Start the server
npm start
# or, for auto-restart on file changes:
npm run dev
```

The server starts on **http://localhost:3000** (or the port set in the
`PORT` environment variable).

### Test route

```
GET http://localhost:3000/
```

Response:
```json
{ "message": "API is working" }
```

---

## Part 2: REST Concepts Used

| Method | Purpose        | Example endpoint     |
|--------|----------------|-----------------------|
| GET    | Fetch data     | `GET /api/users`      |
| POST   | Create data    | `POST /api/users`     |
| PUT    | Update data    | `PUT /api/users/:id`  |
| DELETE | Delete data    | `DELETE /api/users/:id` |

Every request follows the same cycle:

1. **Client** sends an HTTP request (method + URL + optional JSON body).
2. **Server** (Express) routes it to the matching handler.
3. **Processing** — the handler validates input and reads/writes the
   in-memory `users` array.
4. **Response** — the server sends back a JSON body and an HTTP status
   code (`200`, `201`, `400`, `404`, `409`, `500`, etc.).
5. **Client** parses the JSON and updates its UI.

---

## Part 3–6: Users API Reference

Base URL: `http://localhost:3000/api/users`

Example user object:
```json
{ "id": 1, "name": "Ali", "email": "ali@example.com", "age": 22 }
```

### `GET /api/users`
Returns every user.

**Response `200`**
```json
{
  "success": true,
  "count": 2,
  "data": [
    { "id": 1, "name": "Ali", "email": "ali@example.com", "age": 22 },
    { "id": 2, "name": "Sara", "email": "sara@example.com", "age": 25 }
  ]
}
```

### `GET /api/users/:id`
Returns one user by id.

- `200` — user found, returns `{ success: true, data: {...} }`
- `404` — no user with that id, returns `{ success: false, message: "..." }`

### `POST /api/users`
Creates a new user from the JSON request body.

**Request body**
```json
{ "name": "Ali", "email": "ali@example.com", "age": 22 }
```

**Validation rules**
- `name` — required, non-empty string
- `email` — required, must look like a valid email, and must be unique
- `age` — required, positive number

**Responses**
- `201` — created, returns the new user (with a server-generated `id`)
- `400` — validation failed, returns a list of `errors`
- `409` — a user with that email already exists

### `PUT /api/users/:id`
Updates an existing user. You can send the full object or just the
fields you want to change (partial update) — any field that's missing
from the body simply won't be validated or overwritten.

**Request body (example — partial)**
```json
{ "age": 23 }
```

**Responses**
- `200` — updated, returns the updated user
- `400` — validation failed on one of the provided fields
- `404` — no user with that id

### `DELETE /api/users/:id`
Removes a user.

**Responses**
- `200` — deleted, returns the removed user
- `404` — no user with that id

---

## Part 7: Testing with Postman

Import these requests into Postman (or just recreate them manually) and
try them in this order so you can see the array change over time:

1. **Create User** — `POST /api/users`
   - Body → raw → JSON:
     ```json
     { "name": "Bilal", "email": "bilal@example.com", "age": 30 }
     ```
   - Expect `201 Created` with the new user (note the `id` it's given).

2. **Get Users** — `GET /api/users`
   - Expect `200 OK` with an array that now includes Bilal.

3. **Get Single User** — `GET /api/users/3` (use the id from step 1)
   - Expect `200 OK` with just that user.
   - Try an id that doesn't exist (e.g. `/api/users/999`) → expect `404`.

4. **Update User** — `PUT /api/users/3`
   - Body → raw → JSON:
     ```json
     { "age": 31 }
     ```
   - Expect `200 OK` with the updated user.

5. **Delete User** — `DELETE /api/users/3`
   - Expect `200 OK` confirming deletion.
   - Run `GET /api/users` again to confirm the user is gone.

**Things worth noticing while testing:**
- The **request body** must be set to `raw` / `JSON` in Postman, and the
  `Content-Type: application/json` header must be present (Postman adds
  this automatically when you choose the JSON body type).
- Every response is JSON with a `success` boolean, so your Flutter app
  can branch on that instead of guessing from the HTTP status alone.
- Because data lives only in memory, **restarting the server resets it**
  back to the two seed users (Ali and Sara).

---

## Project Structure

```
users-api/
├── server.js          # Express app setup, middleware, route mounting
├── routes/
│   └── users.js        # All /api/users CRUD logic + validation
├── package.json
└── README.md
```

## Note

This task intentionally stops here — it is **not** wired up to a
Flutter app. The next step (outside this task) would be to point a
Flutter app's `http` package calls at `http://localhost:3000/api/users`
(or a deployed URL) and consume these same endpoints.

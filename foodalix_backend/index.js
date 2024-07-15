// index.js
const app = require('./app');
require('./config/db'); // Ensure this line is present to initialize the DB connection
const port = 3000;
const UserModel = require('./model/user_model');

app.get('/', (req, res) => {
  res.send('hello world!');
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});

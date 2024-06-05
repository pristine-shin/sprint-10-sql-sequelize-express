const express = require('express');
const app = express();

// app.use(errorHandler)

// function errorHandler(err, req, res, next) {
//   console.error(err);
//   next(err)
// }

//My attempt
// app.get('/', (req, res) => {
//   res.send('GET / This is the root URL');
// });

// app.get('/*', (req, res) => {
//   throw new Error("Sorry, the requested resource couldn't be found")
// })

// app.use((err, req, res, next) => {
//   console.error(err);
//   res.status(404);
//   res.send("Resource Not Found")
// })

//Solution
app.get('/', (req, res) => {
  res.send('GET / This is the root URL');
});

app.use((req, res, next) => {
  const error = new Error("Sorry, the requested resource couldn't be found")
  error.statusCode = 404;
  next(error);
})

app.use((err, req, res, next) => {
  console.log(err);
  const statusCode = err.statusCode || 500;
  res.status(statusCode);
  res.json({
    message: err.message || 'Something went wrong',
    statusCode
  })
})

const port = 5001;
app.listen(port, () => console.log('Server is listening on port', port));

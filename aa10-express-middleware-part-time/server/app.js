const express = require('express');
const app = express();

//phase 1
require('express-async-errors');
app.use(express.json());

//phase 2
app.use((req, res, next) => {
  console.log(req.method, req.url);
  res.on('finish', () => {
    // read and log the status code of the response
    console.log(res.statusCode)
  });
  next();
})

//phase 3
const dogsRouter = require('./routes/dogs');
app.use('/dogs', dogsRouter);


//GIVEN CODE ************************************************
// For testing purposes, GET /
app.get('/', (req, res) => {
  res.json("Express server running. No content provided at root level. Please use another route.");
});

// For testing express.json middleware
app.post('/test-json', (req, res, next) => {
  // send the body as JSON with a Content-Type header of "application/json"
  // finishes the response, res.end()
  res.json(req.body);
  next();
});

// For testing express-async-errors
app.get('/test-error', async (req, res) => {
  throw new Error("Hello World!")
});

  //Also phase 2
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

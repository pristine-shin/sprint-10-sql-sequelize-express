// ------------------------------  SERVER DATA ------------------------------

let nextDogId = 1;
function getNewDogId() {
  const newDogId = nextDogId;
  nextDogId++;
  return newDogId;
}

const dogs = [
  {
    dogId: getNewDogId(),
    name: "Fluffy"
  },
  {
    dogId: getNewDogId(),
    name: "Digby"
  }
];

// ------------------------------  MIDDLEWARES ------------------------------

const validateDogInfo = (req, res, next) => {
  if (!req.body || !req.body.name) {
    const err = new Error("Dog must have a name");
    err.statusCode = 400;
    next(err);
  }
  next();
};
const validateDogId = (req, res, next) => {
  const { dogId } = req.params;
  const dog = dogs.find(dog => dog.dogId == dogId);
  if (!dog) {
    const err = new Error("Couldn't find dog with that dogId")
    err.statusCode = 404;
    throw err;
    // return next(err); // alternative to throwing it
  }
  next();
}

// ------------------------------  ROUTE HANDLERS ------------------------------

// GET /dogs
const getAllDogs = (req, res) => {
  res.json(dogs);
};

// GET /dogs/:dogId
const getDogById = (req, res) => {
  const { dogId } = req.params;
  const dog = dogs.find(dog => dog.dogId == dogId);
  res.json(dog);
}

// POST /dogs
const createDog = (req, res) => {
  const { name } = req.body;
  const newDog = {
    dogId: getNewDogId(),
    name
  };
  dogs.push(newDog);
  res.json(newDog);
};

// PUT /dogs/:dogId
const updateDog = (req, res) => {
  const { name } = req.body;
  const { dogId } = req.params;
  const dog = dogs.find(dog => dog.dogId == dogId);
  dog.name = name;
  res.json(dog);
};

// DELETE /dogs/:dogId
const deleteDog = (req, res) => {
  const { dogId } = req.params;
  const dogIdx = dogs.findIndex(dog => dog.dogId == dogId);
  dogs.splice(dogIdx, 1);
  res.json({ message: "success" });
};

// ------------------------------  ROUTER ------------------------------

// Your code here
const express = require('express');

const router = express.Router();

//	getAllDogs	retrieves info for all dogs
router.get('/', (req, res) => {
  getAllDogs(req, res)
})

// getDogById	retrieves info for a single dog
router.get('/:dogId', validateDogId, (req, res) => {
  getDogById(req, res)
})

// createDog adds a dog
router.post('/', validateDogInfo, (req, res) => {
  createDog(req, res)
})

// updateDog	updates a single dog
router.put('/:dogId', validateDogId, validateDogInfo, (req, res) => {
  updateDog(req, res)
})

// deleteDog	deletes a single dog
router.delete('/:dogId', validateDogId, (req, res) => {
  deleteDog(req, res)
})

//phase 5
const dogFoodRouter = require('./dog-foods');
router.use('/:dogId/foods', validateDogId, dogFoodRouter)

module.exports = router;

// ------------------------------  SERVER DATA ------------------------------

let nextFoodId = 1;
function getNewFoodId() {
  const newFoodId = nextFoodId;
  nextFoodId++;
  return newFoodId;
}

const foods = [
  {
    foodId: getNewFoodId(),
    name: "Kibble",
    dogId: 1
  },
  {
    foodId: getNewFoodId(),
    name: "Bone",
    dogId: 1
  },
  {
    foodId: getNewFoodId(),
    name: "Biscuit",
    dogId: 2
  }
];

// ------------------------------  MIDDLEWARES ------------------------------

const validateFoodInfo = (req, res, next) => {
  if (!req.body || !req.body.name) {
    const err = new Error("Food must have a name");
    err.statusCode = 400;
    next(err);
  }
  next();
};

// ------------------------------  ROUTE HANDLERS ------------------------------

// GET /dogs/:dogId/foods
const getFoodsByDogId = (req, res) => {
  const { dogId } = req.params;
  res.json(foods.filter(food => food.dogId == dogId));
};

// POST /dogs/:dogId/foods
const createFood = (req, res) => {
  const { name } = req.body;
  const { dogId } = req.params;
  const newFood = {
    foodId: getNewFoodId(),
    name,
    dogId
  };
  foods.push(newFood);
  res.json(newFood);
};

// ------------------------------  ROUTER ------------------------------

// Your code here
const express = require('express');

const router = express.Router({ mergeParams: true });

// getFoodsByDogId	retrieves the food log for a single dog
router.get('/', (req, res) => {
  getFoodsByDogId(req, res)
})

// createFood	add a food to a dog's food log
router.post('/', validateFoodInfo, (req, res) => {
  createFood(req, res)
})

module.exports = router;

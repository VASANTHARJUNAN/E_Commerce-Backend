//const { UserRegisteration} = require('../controllers/user.controller')
//const { get } = require('mongoose');
const uc = require('../controllers/user.controller')

const express = require('express');
const router =express.Router();

//cloth
router.route("/cloth").post(uc.controllerCreation);
router.route("/cloth/:id").get(uc.controllerFetch);
//post bag
router.route('/bag').post(uc.Bag);
router.route('/bag/:id').put(uc.updateBag);
router.route('/bag').get(uc.getBag);
router.route('/bag/:id').delete(uc.delBag);
//order
router.route('/order').post(uc.postOrder);
router.route('/order').get(uc.getOrder);
//checkout
 router.route('/check').post(uc.postCheck);
 router.route('/check/:id').put(uc.putCheck);
 router.route('/check').get(uc.getCheck);
 //38 profile
 router.route("/profile/:id").get(uc.profiles)
router.route("/profile").post(uc.Creation)
//11 kids
router.route('/kid').post(uc.kidsControl)
router.route('/kid').get(uc.kidsGetControl)
//11 mens
router.route('/men').post(uc.mensControl)
router.route('/men').get(uc.mensGetControl)
//11 womens
router.route('/women').post(uc.womensControl)
router.route('/women').get(uc.womensGetControl)
//1 reg login
router.route("/signup").post(uc.UserRegister);
router.route("/login").get (uc.login);
//40 setting
 router.route("/findname/:id").get(uc.Fullname);
 router.route("/create/DOB").post(uc.Dateofbirth);
router.route("/change/password/:id").put(uc.UpadtePassword);


module.exports = router;



module.exports=
    router
;
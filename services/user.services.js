// const {User} =require('../models/usermodel');
// const{Product}=require('../Task/product')
const Bcrypt = require('bcryptjs');
const {Bag}=require('../Model/30bag');
const { Order } = require('../Model/40.order');
const{Check}=require('../Model/31check');
const {userProduct} =require("../Model/9.cloth");
const { profile } = require("../Model/38profile");
const { Kids }= require('../Model/11Kids');
const { Mens }= require('../Model/11mens');
const { Womens }= require('../Model/11womens');
const {Users} = require("../Model/1signup");


//1 signup
const Registration = async (req)=>{
  let body =req.body;
  const {password} = body;
  console.log(password,"password");
  const salt = await Bcrypt.genSalt(10);
  const hash = await Bcrypt.hash(password,salt);
  const datas = {...body,...{password:hash}};
  console.log(datas);
  const creation = await Users.create(datas);
  console.log(creation);
  return creation;
};

const login = async(req)=>{
  let body=req.body;
  const {password,email}=body;
  console.log(body);
  let findByEmail=await Users.findOne({email:email})
 console.log(findByEmail);
  if(!findByEmail){
      return null
  }
  else{
      let comp = await Bcrypt.compare(password,findByEmail.password )
     
     
     
     console.log(comp)
      if(comp){
          let clientdata={
              name:findByEmail.name,
              email:findByEmail.email,
              active:findByEmail.active,
              _id:findByEmail._id
              }
              //console.log(clientdata)
               return clientdata;  
      }else{
          return null;
      }
  }
};
//40 settings
const FindFullName = async (req) => {
  let id = req.params.id;
  let findname = await Users.findById(id);
  if (!findname) {
    return null;
  } else {
    if(findname){
      let Fname = {
        name : findname.name
      };
      return Fname;
    }else{
      return null;
    }
  }
};

const dateofbirth = async (req) => {
  let body = req.body;
  let Dob = await profile.create(body);
  if (!Dob) {
    return null;
  } else {
    return Dob;
  }
};

const updateUrlId = async (req) => {
  let id = req.params.id;
  console.log(id);
  let body = req.body;
  console.log(body);
  let updateById = await profile.findById(id);
  console.log(updateById);
  if (!updateById) {
    return null;
  } else {
    updateById = await profile.findByIdAndUpdate({ _id: id }, body, {
      new: true,
    });
    return updateById;
  }
};


// cloth 9
const serviceCreation = async(req)=>{
  let body = req.body;
  // console.log(body);
  let creationProduct = await userProduct.create(body);
  return creationProduct;
};

const serviceFetch = async(req)=>{
  let id = req.params.id;
  // let body = req.body;
  let fetchproductById = await userProduct.findById(id);
  return fetchproductById
  
}

// Bag post                     //30
const Bags=async (req) =>{
    let body = req.body;
    let creation= await Bag.create(body)
    return creation
 }
 //bag update
 const bagput =async(req)=>{
    let id= req.params.id;
    let body=req.body;
    let update = await Bag.findById(id);
    //console.log(update);
     if(!update){
         return "user not found";
     }
     else{ 
       let update = await Bag.findByIdAndUpdate({_id:id}, body,{new:true});
       //console.log(update);
         return update;

    }
}
//get bag
const bagget=async(req)=>{
    let creation =await Bag.find();
    return creation;
}
//delete bag
const bagDelete = async (req) => {
    let id = req.params.id;
    let findIdandelete = await Bag.findById(id)
    if(!findIdandelete) {
        return "User Not Fount";
      } else {
        let findIdandelete = await Bag.findByIdAndDelete(id)
        return findIdandelete
      }
}
//post order40
const orderpost=async (req) =>{
  let body = req.body;
  let creation= await Order.create(body)
  return creation
}
//order get
const orderget=async(req)=>{
  let creation =await Order.find();
  return creation;
}
//checkout  post 31
const checkpost=async (req) =>{
  let body = req.body;
  let creation= await Check.create(body)
  return creation
}
//check update
const checkput =async(req)=>{
  let id= req.params.id;
  let body=req.body;
  let update = await Check.findById(id);
  console.log(update);
   if(!update){
       return "user not found";
   }
   else{ 
     let update = await Check.findByIdAndUpdate({_id:id}, body,{new:true});
     console.log(update);
       return update;

  }
}
//get update
const checkget=async (req)=>{
  let creation=await Check.find()
  return creation
}
//38
const findProfile = async (req) => {
  let id = req.params.id
  let findProfileDetail = await profile.findById(id)
  if (!findProfileDetail) {
      return null
  }
  else {
      return findProfileDetail
  }
}
const profileCreation = async (req) => {
  let body = req.body
  let creation = await profile.create(body)
  if (!creation) {
      return null
  }
  else {
      return creation
  }
}

//11 kid
const kids = async (req) =>{
  let body = req.body;
  const creation = await Kids.create(body);
  return creation;
}

const kidsGet = async(req)=>{
  let body = req.body;
  const kidsFind = await Kids.find();
  return kidsFind;
}
// 11 mens
const mens = async (req) =>{
  let body = req.body;
  const creation = await Mens.create(body);
  return creation;
}

const mensGet = async(req)=>{
  let body = req.body;
  const mensFind = await Mens.find();
  return mensFind;
}
//womens
const womens = async (req) =>{
  let body = req.body;
  const creation = await Womens.create(body);
  return creation;
}

const womensGet = async(req)=>{
  let body = req.body;
  const womensFind = await Womens.find();
  return womensFind;
}



module.exports={
  Registration,login,//1
   serviceCreation,serviceFetch,//9
   kids,kidsGet,mens,mensGet, womens,womensGet,          //11
    Bags, bagDelete,bagget,bagput,//30
    checkget,checkput,checkpost,//31
    findProfile, profileCreation,//38
    orderpost,orderget,//40
    FindFullName, dateofbirth, updateUrlId,//41
    
    
};
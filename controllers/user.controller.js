const us =require('../services/user.services');
const{ getAuthToken}=require('../middleware/jwt.config')

//1
const UserRegister = async (req,res)=>{
    const userReg = await us.Registration(req);
    if(!userReg){
        res.status(400).send({message:"user not found"})
    }else{
        res.status(201).send(userReg);
    }
};

const login= async(req,res)=>{
    try{
     const data = await us.login(req);
     if (data!= null){
        let tokens = await getAuthToken(data)
         res.status(201).send({data:data,token:tokens});
     }else{
         res.status(401).send({message:"Login Ivalid"})
     }
    }catch(error){
     res.status(401).send({message:"Login Invalid"})
    }
 }; 
 //41
 const Fullname = async (req,res)=>{
    let findfullname = await us.FindFullName(req)
    if(findfullname == null){
        res.status(401).send({message : "Unauthorised user"})
    }else{
        res.send(findfullname);
    }
};

const Dateofbirth = async (req,res)=>{
    let createdob = await us.dateofbirth(req);
    if(createdob == null){
        res.status(400).send({message : "User not created"});
    }else{
        res.status(200).send(createdob);
    }
};

const UpadtePassword = async(req,res)=>{
    let updatepass = await us.updateUrlId(req)
    if(updatepass == null){
        res.status(401).send({message : "Uanuthorised user"});
    }else{
        res.status(201).send(updatepass);
    }
};


// 9cloth
const controllerCreation = async(req,res)=>{
    const productCreate = await us.serviceCreation(req)
    if(!productCreate){
        res.status(400).send({message:"Creation Failed"})
    }else{
        res.send(productCreate)
    }
};

//9 cloth
const controllerFetch = async(req,res)=>{
    const fetchproductById = await us.serviceFetch(req)
    // console.log(fetchproductById);
    if(!fetchproductById){
        res.status(400).send({message:"Fetch Failed"})
    }else{
        res.send(fetchproductById)
    }
}


//post bag
const  Bag =async(req,res)=>{
   try{
       const Ba =await us.Bags(req);
       res.status(200).send(Ba);
       
   }
   catch(error){
       res.status(400).send({message:"login failed catch"})
   }

}

//put bag
const updateBag =async(req,res)=>{
   try{
       const ub = await us.bagput(req);
       res.status(200).send(ub);
   }
   catch(error){
       res.status(400).send({message:"login failed catch"})
   }
}
//get bag
const getBag =async(req,res)=>{
   try{
       const ub = await us.bagget(req);
       res.status(200).send(ub);
   }
   catch(error){
       res.status(400).send({message:"login failed catch"})
   }
}
//Del bag
const delBag =async(req,res)=>{
   try{
       const ub = await us.bagDelete(req);
       res.status(200).send(ub);
   }
   catch(error){
       res.status(400).send({message:"login failed catch"})
   }
}
//post order
const postOrder =async(req,res)=>{
    try{
        const ub = await us.orderpost(req);
        res.status(200).send(ub);
    }
    catch(error){
        res.status(400).send({message:"login failed catch"})
    }
}
//get order
const getOrder =async(req,res)=>{
    try{
        const ub = await us.orderget(req);
        res.status(200).send(ub);
    }
    catch(error){
        res.status(400).send({message:"login failed catch"})
    }
}
//checkout post 31
const postCheck =async(req,res)=>{
    try{
        const ub = await us.checkpost(req);
        res.status(200).send(ub);
    }
    catch(error){
        res.status(400).send({message:"login failed catch"})
    }
}
//checkout update 31
const putCheck =async(req,res)=>{
    try{
        const ub = await us.checkput(req);
        res.status(200).send(ub);
    }
    catch(error){
        res.status(400).send({message:"login failed catch"})
    }

}
//check get 31
const getCheck =async(req,res)=>{
    try{
        const ub = await us.checkget(req);
        res.status(200).send(ub);
    }
    catch(error){
        res.status(400).send({message:"login failed catch"})
    }

}
//38 profile
const profiles = async (req, res) => {
    let FindProfile = await us.findProfile(req);
    if (!FindProfile == null) {
      res.status(401).send({ messege: "Unauthorised profile" });
    } else {
      res.send(FindProfile);
    }
  };
  
  const Creation = async (req, res) => {
    let createProfiles = await us.profileCreation(req);
  
    if (!createProfiles == null) {
      res.status(401).send({ messege: "not created" });
    } else {
      res.send(createProfiles);
    }
  };
  //11kids
  const kidsControl = async (req,res)=>{
    const kidsController = await us.kids(req);
    if(!kidsController){
        res.status(400).send({message:'product not found'})
    }else{
        res.status(201).send(kidsController);
    }
};

const kidsGetControl = async (req,res)=>{
    const kidsgetController = await us.kids(req);
    if(!kidsgetController){
        res.status(400).send({message:'product not found'})
    }else{
        res.status(201).send(kidsgetController);
    }
};
//11 mens
const mensControl = async (req,res)=>{
    const mensController = await us.mens(req);
    if(!mensController){
        res.status(400).send({message:'product not found'})
    }else{
        res.status(201).send(mensController);
    }
};

const mensGetControl = async (req,res)=>{
    const mensgetController = await us.mens(req);
    if(!mensgetController){
        res.status(400).send({message:'product not found'})
    }else{
        res.status(201).send(mensgetController);
    }
};
//womens
const womensControl = async (req,res)=>{
    const womensController = await us.womens(req);
    if(!womensController){
        res.status(400).send({message:'product not found'})
    }else{
        res.status(201).send(womensController);
    }
};

const womensGetControl = async (req,res)=>{
    const womensgetController = await us.womens(req);
    if(!womensgetController){
        res.status(400).send({message:'product not found'})
    }else{
        res.status(201).send(womensgetController);
    }
};



module.exports=
{
    UserRegister,login,//1
    controllerCreation,controllerFetch,//9
    kidsControl,kidsGetControl, mensControl,mensGetControl, womensControl,womensGetControl ,  //11
   Bag,delBag,getBag,updateBag,//30
   profiles,Creation,//38
   getCheck,putCheck,postCheck,//39
   postOrder,getOrder,//40
   Fullname,Dateofbirth, UpadtePassword,//41
   
   };

const userRoute= require('../Router/user.router');
const express =require("express");
const router=express.Router();

const Application= [
    {
        path: '/users',
        route:  userRoute,
    },
];

Application.forEach((paths)=>{
    
    router.use(paths.path, paths.route);

});

 module.exports = router;










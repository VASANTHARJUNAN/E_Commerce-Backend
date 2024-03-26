const mongoose =require('mongoose');
const {v4}=require('uuid');

const userSchema=mongoose.Schema(
    {
        _id:{
            type: String,
            default:v4
        },
        Address:{
            type:String,
            required:true
        },
        Payment:{
            type:String,
            required:true
        },
        active:{
            type:Boolean,
            default:true
        }
       
},{timestamps:true}
);
const Check=mongoose.model('Check',userSchema);
module.exports={
    Check
};

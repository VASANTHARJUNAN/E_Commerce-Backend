const mongoose =require('mongoose');
const {v4}=require('uuid');

const userSchema=mongoose.Schema(
    {
        _id:{
            type: String,
            default:v4
        },
        Orderno:{
            type:String,
            required:true
        },
        Trackingno:{
            type:String,
            required:true
        },
        status:{
            type:String,
            required:true
        },
        active:{
            type:Boolean,
            default:true
        }
       
},{timestamps:true}
);
const Order=mongoose.model('Order',userSchema);
module.exports={
    Order
};

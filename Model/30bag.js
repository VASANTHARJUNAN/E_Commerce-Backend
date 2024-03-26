const mongoose =require('mongoose');
const {v4}=require('uuid');

const userSchema=mongoose.Schema(
    {
        _id:{
            type: String,
            default:v4
        },
        Dresstype:{
            type:String,
            required:true
        },
        color:{
            type:String,
            required:true
        },
        size:{
            type:String,
            required:true
        },
        quantity:{
            type:Number,
            required:true
        },
        price:{
            type:String,
            required:true
        },
        active:{
            type:Boolean,
            default:true
        }

},{timestamps:true}
);
const Bag=mongoose.model('Bag',userSchema);
module.exports={
    Bag
};

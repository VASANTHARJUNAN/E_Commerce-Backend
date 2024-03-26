const mongoose = require("mongoose");
const {v4}=require("uuid");



const productSchema =  mongoose.Schema({
    _id:{
        type:String,
        default:v4,
    },
    title:{
        type:String,
        require:true,
    },
    categories:{
        type:String,
    },
    rating:{
        type:Number,
    },
    discountPrice:{
        type:Number,
    },
    originalPrice:{
        type:Number,
    },
    active:{
        type:Boolean,
        default:true,
    },
    
},{
    timestamps:true,
})

const userProduct = mongoose.model("Page-9",productSchema)


module.exports={
    userProduct,
};
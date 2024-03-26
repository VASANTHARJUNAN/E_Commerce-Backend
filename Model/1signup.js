const mongoose = require("mongoose");
const { v4 } = require('uuid');

const userSchema = new mongoose.Schema({
    _id: {
        type:String,
        default:v4,
    },
    name:{
        type:String,
        trim:true,
        required:true,
    },
    email:{
        type:String,
        required:true,
    },
    dob:{
        type:String
    },
    password:{
        type: String,
        required: true,
    },
    active:{
        type:Boolean,
        default:true,
    }
},{timestamps:true});

const Users = mongoose.model("users",userSchema);

module.exports = {
    Users,
};
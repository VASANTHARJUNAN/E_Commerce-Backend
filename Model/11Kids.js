const mongoose = require('mongoose');
const {v4} =require('uuid');

const kidsSchema = mongoose.Schema(
    {
        _id:{
            type: 'string',
            default:v4,
        },
        collections:{
            type:'string',
            // required:true
        }
    },
    {timestamps:true}
);

const Kids =mongoose.model("kids",kidsSchema);
module.exports={
    Kids
};
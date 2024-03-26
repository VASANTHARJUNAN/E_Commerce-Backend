const mongoose = require('mongoose');
const {v4} =require('uuid');

const womensSchema = mongoose.Schema(
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

const Womens =mongoose.model("Womens",womensSchema);
module.exports={
    Womens,
};
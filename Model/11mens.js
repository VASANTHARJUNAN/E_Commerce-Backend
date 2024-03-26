const mongoose = require('mongoose');
const {v4} =require('uuid');

const mensSchema = mongoose.Schema(
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

const Mens =mongoose.model("mens",mensSchema);
module.exports={
    Mens,
};
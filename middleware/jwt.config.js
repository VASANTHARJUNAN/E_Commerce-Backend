const JWT = require('jsonwebtoken')

const getAuthToken = async (data)=>{
    const { _id } = data;
    let token = JWT.sign({id:_id},"ALAN")
    return token;
}

module.exports ={ getAuthToken};
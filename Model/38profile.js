const mongoose = require("mongoose");
const { v4 } = require("uuid");

const myProfileSchema = mongoose.Schema(
  {
    _id: {
      type: String,
      default: v4,
    },
    name: {
      type: String,
      trim: true,
      required: true,
    },
    shippingAddress: {
      type: String,
      trim: true,
      required: true,
    },
    paymentMethods: {
      type: String,
      trim: true,
      required: true,
    },
    promoCodes: {
      type: String,
      trim: true,
      required: true,
    },
    myReviews: {
      type: String,
      trim: true,
      required: true,
    },
    settings: {
      type: String,
      trim: true,
      required: true,
    },
    active: {
      type: Boolean,
      default: true,
    },
  },
  { timestamps: true }
);

const profile = mongoose.model("profile", myProfileSchema)

module.exports = {
    profile
}
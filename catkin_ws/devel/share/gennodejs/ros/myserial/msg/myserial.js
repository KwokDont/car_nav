// Auto-generated. Do not edit!

// (in-package myserial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class myserial {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a1 = null;
      this.a2 = null;
      this.a3 = null;
      this.a4 = null;
      this.a5 = null;
      this.a6 = null;
      this.a7 = null;
      this.a8 = null;
      this.a9 = null;
    }
    else {
      if (initObj.hasOwnProperty('a1')) {
        this.a1 = initObj.a1
      }
      else {
        this.a1 = 0.0;
      }
      if (initObj.hasOwnProperty('a2')) {
        this.a2 = initObj.a2
      }
      else {
        this.a2 = 0.0;
      }
      if (initObj.hasOwnProperty('a3')) {
        this.a3 = initObj.a3
      }
      else {
        this.a3 = 0.0;
      }
      if (initObj.hasOwnProperty('a4')) {
        this.a4 = initObj.a4
      }
      else {
        this.a4 = 0.0;
      }
      if (initObj.hasOwnProperty('a5')) {
        this.a5 = initObj.a5
      }
      else {
        this.a5 = 0.0;
      }
      if (initObj.hasOwnProperty('a6')) {
        this.a6 = initObj.a6
      }
      else {
        this.a6 = 0.0;
      }
      if (initObj.hasOwnProperty('a7')) {
        this.a7 = initObj.a7
      }
      else {
        this.a7 = 0.0;
      }
      if (initObj.hasOwnProperty('a8')) {
        this.a8 = initObj.a8
      }
      else {
        this.a8 = 0.0;
      }
      if (initObj.hasOwnProperty('a9')) {
        this.a9 = initObj.a9
      }
      else {
        this.a9 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myserial
    // Serialize message field [a1]
    bufferOffset = _serializer.float32(obj.a1, buffer, bufferOffset);
    // Serialize message field [a2]
    bufferOffset = _serializer.float32(obj.a2, buffer, bufferOffset);
    // Serialize message field [a3]
    bufferOffset = _serializer.float32(obj.a3, buffer, bufferOffset);
    // Serialize message field [a4]
    bufferOffset = _serializer.float32(obj.a4, buffer, bufferOffset);
    // Serialize message field [a5]
    bufferOffset = _serializer.float32(obj.a5, buffer, bufferOffset);
    // Serialize message field [a6]
    bufferOffset = _serializer.float32(obj.a6, buffer, bufferOffset);
    // Serialize message field [a7]
    bufferOffset = _serializer.float32(obj.a7, buffer, bufferOffset);
    // Serialize message field [a8]
    bufferOffset = _serializer.float32(obj.a8, buffer, bufferOffset);
    // Serialize message field [a9]
    bufferOffset = _serializer.float32(obj.a9, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myserial
    let len;
    let data = new myserial(null);
    // Deserialize message field [a1]
    data.a1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a2]
    data.a2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a3]
    data.a3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a4]
    data.a4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a5]
    data.a5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a6]
    data.a6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a7]
    data.a7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a8]
    data.a8 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a9]
    data.a9 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'myserial/myserial';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f27b126aa6a2fa91707e5d51287b08bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 a1
    float32 a2
    float32 a3
    float32 a4
    float32 a5
    float32 a6
    float32 a7
    float32 a8
    float32 a9
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myserial(null);
    if (msg.a1 !== undefined) {
      resolved.a1 = msg.a1;
    }
    else {
      resolved.a1 = 0.0
    }

    if (msg.a2 !== undefined) {
      resolved.a2 = msg.a2;
    }
    else {
      resolved.a2 = 0.0
    }

    if (msg.a3 !== undefined) {
      resolved.a3 = msg.a3;
    }
    else {
      resolved.a3 = 0.0
    }

    if (msg.a4 !== undefined) {
      resolved.a4 = msg.a4;
    }
    else {
      resolved.a4 = 0.0
    }

    if (msg.a5 !== undefined) {
      resolved.a5 = msg.a5;
    }
    else {
      resolved.a5 = 0.0
    }

    if (msg.a6 !== undefined) {
      resolved.a6 = msg.a6;
    }
    else {
      resolved.a6 = 0.0
    }

    if (msg.a7 !== undefined) {
      resolved.a7 = msg.a7;
    }
    else {
      resolved.a7 = 0.0
    }

    if (msg.a8 !== undefined) {
      resolved.a8 = msg.a8;
    }
    else {
      resolved.a8 = 0.0
    }

    if (msg.a9 !== undefined) {
      resolved.a9 = msg.a9;
    }
    else {
      resolved.a9 = 0.0
    }

    return resolved;
    }
};

module.exports = myserial;

// Auto-generated. Do not edit!

// (in-package myserial.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class myserialsrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A1 = null;
      this.A2 = null;
      this.A3 = null;
      this.A4 = null;
      this.A5 = null;
      this.A6 = null;
      this.A7 = null;
      this.A8 = null;
      this.A9 = null;
    }
    else {
      if (initObj.hasOwnProperty('A1')) {
        this.A1 = initObj.A1
      }
      else {
        this.A1 = 0.0;
      }
      if (initObj.hasOwnProperty('A2')) {
        this.A2 = initObj.A2
      }
      else {
        this.A2 = 0.0;
      }
      if (initObj.hasOwnProperty('A3')) {
        this.A3 = initObj.A3
      }
      else {
        this.A3 = 0.0;
      }
      if (initObj.hasOwnProperty('A4')) {
        this.A4 = initObj.A4
      }
      else {
        this.A4 = 0.0;
      }
      if (initObj.hasOwnProperty('A5')) {
        this.A5 = initObj.A5
      }
      else {
        this.A5 = 0.0;
      }
      if (initObj.hasOwnProperty('A6')) {
        this.A6 = initObj.A6
      }
      else {
        this.A6 = 0.0;
      }
      if (initObj.hasOwnProperty('A7')) {
        this.A7 = initObj.A7
      }
      else {
        this.A7 = 0.0;
      }
      if (initObj.hasOwnProperty('A8')) {
        this.A8 = initObj.A8
      }
      else {
        this.A8 = 0.0;
      }
      if (initObj.hasOwnProperty('A9')) {
        this.A9 = initObj.A9
      }
      else {
        this.A9 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myserialsrvRequest
    // Serialize message field [A1]
    bufferOffset = _serializer.float32(obj.A1, buffer, bufferOffset);
    // Serialize message field [A2]
    bufferOffset = _serializer.float32(obj.A2, buffer, bufferOffset);
    // Serialize message field [A3]
    bufferOffset = _serializer.float32(obj.A3, buffer, bufferOffset);
    // Serialize message field [A4]
    bufferOffset = _serializer.float32(obj.A4, buffer, bufferOffset);
    // Serialize message field [A5]
    bufferOffset = _serializer.float32(obj.A5, buffer, bufferOffset);
    // Serialize message field [A6]
    bufferOffset = _serializer.float32(obj.A6, buffer, bufferOffset);
    // Serialize message field [A7]
    bufferOffset = _serializer.float32(obj.A7, buffer, bufferOffset);
    // Serialize message field [A8]
    bufferOffset = _serializer.float32(obj.A8, buffer, bufferOffset);
    // Serialize message field [A9]
    bufferOffset = _serializer.float32(obj.A9, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myserialsrvRequest
    let len;
    let data = new myserialsrvRequest(null);
    // Deserialize message field [A1]
    data.A1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A2]
    data.A2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A3]
    data.A3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A4]
    data.A4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A5]
    data.A5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A6]
    data.A6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A7]
    data.A7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A8]
    data.A8 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [A9]
    data.A9 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'myserial/myserialsrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e8ab01964adad3e006b48c1a37034a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 A1
    float32 A2
    float32 A3
    float32 A4
    float32 A5
    float32 A6
    float32 A7
    float32 A8
    float32 A9
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myserialsrvRequest(null);
    if (msg.A1 !== undefined) {
      resolved.A1 = msg.A1;
    }
    else {
      resolved.A1 = 0.0
    }

    if (msg.A2 !== undefined) {
      resolved.A2 = msg.A2;
    }
    else {
      resolved.A2 = 0.0
    }

    if (msg.A3 !== undefined) {
      resolved.A3 = msg.A3;
    }
    else {
      resolved.A3 = 0.0
    }

    if (msg.A4 !== undefined) {
      resolved.A4 = msg.A4;
    }
    else {
      resolved.A4 = 0.0
    }

    if (msg.A5 !== undefined) {
      resolved.A5 = msg.A5;
    }
    else {
      resolved.A5 = 0.0
    }

    if (msg.A6 !== undefined) {
      resolved.A6 = msg.A6;
    }
    else {
      resolved.A6 = 0.0
    }

    if (msg.A7 !== undefined) {
      resolved.A7 = msg.A7;
    }
    else {
      resolved.A7 = 0.0
    }

    if (msg.A8 !== undefined) {
      resolved.A8 = msg.A8;
    }
    else {
      resolved.A8 = 0.0
    }

    if (msg.A9 !== undefined) {
      resolved.A9 = msg.A9;
    }
    else {
      resolved.A9 = 0.0
    }

    return resolved;
    }
};

class myserialsrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.B1 = null;
      this.B2 = null;
      this.B3 = null;
      this.B4 = null;
      this.B5 = null;
      this.B6 = null;
      this.B7 = null;
      this.B8 = null;
      this.B9 = null;
    }
    else {
      if (initObj.hasOwnProperty('B1')) {
        this.B1 = initObj.B1
      }
      else {
        this.B1 = 0.0;
      }
      if (initObj.hasOwnProperty('B2')) {
        this.B2 = initObj.B2
      }
      else {
        this.B2 = 0.0;
      }
      if (initObj.hasOwnProperty('B3')) {
        this.B3 = initObj.B3
      }
      else {
        this.B3 = 0.0;
      }
      if (initObj.hasOwnProperty('B4')) {
        this.B4 = initObj.B4
      }
      else {
        this.B4 = 0.0;
      }
      if (initObj.hasOwnProperty('B5')) {
        this.B5 = initObj.B5
      }
      else {
        this.B5 = 0.0;
      }
      if (initObj.hasOwnProperty('B6')) {
        this.B6 = initObj.B6
      }
      else {
        this.B6 = 0.0;
      }
      if (initObj.hasOwnProperty('B7')) {
        this.B7 = initObj.B7
      }
      else {
        this.B7 = 0.0;
      }
      if (initObj.hasOwnProperty('B8')) {
        this.B8 = initObj.B8
      }
      else {
        this.B8 = 0.0;
      }
      if (initObj.hasOwnProperty('B9')) {
        this.B9 = initObj.B9
      }
      else {
        this.B9 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myserialsrvResponse
    // Serialize message field [B1]
    bufferOffset = _serializer.float32(obj.B1, buffer, bufferOffset);
    // Serialize message field [B2]
    bufferOffset = _serializer.float32(obj.B2, buffer, bufferOffset);
    // Serialize message field [B3]
    bufferOffset = _serializer.float32(obj.B3, buffer, bufferOffset);
    // Serialize message field [B4]
    bufferOffset = _serializer.float32(obj.B4, buffer, bufferOffset);
    // Serialize message field [B5]
    bufferOffset = _serializer.float32(obj.B5, buffer, bufferOffset);
    // Serialize message field [B6]
    bufferOffset = _serializer.float32(obj.B6, buffer, bufferOffset);
    // Serialize message field [B7]
    bufferOffset = _serializer.float32(obj.B7, buffer, bufferOffset);
    // Serialize message field [B8]
    bufferOffset = _serializer.float32(obj.B8, buffer, bufferOffset);
    // Serialize message field [B9]
    bufferOffset = _serializer.float32(obj.B9, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myserialsrvResponse
    let len;
    let data = new myserialsrvResponse(null);
    // Deserialize message field [B1]
    data.B1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B2]
    data.B2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B3]
    data.B3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B4]
    data.B4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B5]
    data.B5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B6]
    data.B6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B7]
    data.B7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B8]
    data.B8 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B9]
    data.B9 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'myserial/myserialsrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49ce2fd0a53e99aa800d1c6398f8efd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 B1
    float32 B2
    float32 B3
    float32 B4
    float32 B5
    float32 B6
    float32 B7
    float32 B8
    float32 B9
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myserialsrvResponse(null);
    if (msg.B1 !== undefined) {
      resolved.B1 = msg.B1;
    }
    else {
      resolved.B1 = 0.0
    }

    if (msg.B2 !== undefined) {
      resolved.B2 = msg.B2;
    }
    else {
      resolved.B2 = 0.0
    }

    if (msg.B3 !== undefined) {
      resolved.B3 = msg.B3;
    }
    else {
      resolved.B3 = 0.0
    }

    if (msg.B4 !== undefined) {
      resolved.B4 = msg.B4;
    }
    else {
      resolved.B4 = 0.0
    }

    if (msg.B5 !== undefined) {
      resolved.B5 = msg.B5;
    }
    else {
      resolved.B5 = 0.0
    }

    if (msg.B6 !== undefined) {
      resolved.B6 = msg.B6;
    }
    else {
      resolved.B6 = 0.0
    }

    if (msg.B7 !== undefined) {
      resolved.B7 = msg.B7;
    }
    else {
      resolved.B7 = 0.0
    }

    if (msg.B8 !== undefined) {
      resolved.B8 = msg.B8;
    }
    else {
      resolved.B8 = 0.0
    }

    if (msg.B9 !== undefined) {
      resolved.B9 = msg.B9;
    }
    else {
      resolved.B9 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: myserialsrvRequest,
  Response: myserialsrvResponse,
  md5sum() { return '8201a68440ff5daa0bba491b406dad47'; },
  datatype() { return 'myserial/myserialsrv'; }
};

// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Jint_ControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.typ = null;
      this.t1 = null;
      this.t2 = null;
      this.t3 = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('typ')) {
        this.typ = initObj.typ
      }
      else {
        this.typ = 0;
      }
      if (initObj.hasOwnProperty('t1')) {
        this.t1 = initObj.t1
      }
      else {
        this.t1 = 0.0;
      }
      if (initObj.hasOwnProperty('t2')) {
        this.t2 = initObj.t2
      }
      else {
        this.t2 = 0.0;
      }
      if (initObj.hasOwnProperty('t3')) {
        this.t3 = initObj.t3
      }
      else {
        this.t3 = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Jint_ControlRequest
    // Serialize message field [typ]
    bufferOffset = _serializer.int8(obj.typ, buffer, bufferOffset);
    // Serialize message field [t1]
    bufferOffset = _serializer.float32(obj.t1, buffer, bufferOffset);
    // Serialize message field [t2]
    bufferOffset = _serializer.float32(obj.t2, buffer, bufferOffset);
    // Serialize message field [t3]
    bufferOffset = _serializer.float32(obj.t3, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Jint_ControlRequest
    let len;
    let data = new Jint_ControlRequest(null);
    // Deserialize message field [typ]
    data.typ = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [t1]
    data.t1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t2]
    data.t2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t3]
    data.t3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/Jint_ControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4bea38b68db5f09da552c90010c046f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 typ
    float32 t1
    float32 t2
    float32 t3
    float32 time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Jint_ControlRequest(null);
    if (msg.typ !== undefined) {
      resolved.typ = msg.typ;
    }
    else {
      resolved.typ = 0
    }

    if (msg.t1 !== undefined) {
      resolved.t1 = msg.t1;
    }
    else {
      resolved.t1 = 0.0
    }

    if (msg.t2 !== undefined) {
      resolved.t2 = msg.t2;
    }
    else {
      resolved.t2 = 0.0
    }

    if (msg.t3 !== undefined) {
      resolved.t3 = msg.t3;
    }
    else {
      resolved.t3 = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

class Jint_ControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Jint_ControlResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Jint_ControlResponse
    let len;
    let data = new Jint_ControlResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/Jint_ControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fe5af303955c287688e7347e9b00278';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Jint_ControlResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: Jint_ControlRequest,
  Response: Jint_ControlResponse,
  md5sum() { return '27dce5e8a7342082f1bb452fe4d0a953'; },
  datatype() { return 'beginner_tutorials/Jint_Control'; }
};

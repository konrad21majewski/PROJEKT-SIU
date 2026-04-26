// Auto-generated. Do not edit!

// (in-package turtlesim.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetTurtlesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTurtlesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTurtlesRequest
    let len;
    let data = new GetTurtlesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetTurtlesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTurtlesRequest(null);
    return resolved;
    }
};

class GetTurtlesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.list = null;
    }
    else {
      if (initObj.hasOwnProperty('list')) {
        this.list = initObj.list
      }
      else {
        this.list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTurtlesResponse
    // Serialize message field [list]
    bufferOffset = _arraySerializer.string(obj.list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTurtlesResponse
    let len;
    let data = new GetTurtlesResponse(null);
    // Deserialize message field [list]
    data.list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetTurtlesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e09fa9aad51508cfdcab3b64f048ce0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] list
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTurtlesResponse(null);
    if (msg.list !== undefined) {
      resolved.list = msg.list;
    }
    else {
      resolved.list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTurtlesRequest,
  Response: GetTurtlesResponse,
  md5sum() { return '8e09fa9aad51508cfdcab3b64f048ce0'; },
  datatype() { return 'turtlesim/GetTurtles'; }
};

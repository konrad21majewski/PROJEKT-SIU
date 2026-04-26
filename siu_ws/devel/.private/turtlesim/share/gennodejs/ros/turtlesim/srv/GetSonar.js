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

class GetSonarRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fov_center = null;
      this.fov_range = null;
      this.range_min = null;
      this.range_max = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('fov_center')) {
        this.fov_center = initObj.fov_center
      }
      else {
        this.fov_center = 0.0;
      }
      if (initObj.hasOwnProperty('fov_range')) {
        this.fov_range = initObj.fov_range
      }
      else {
        this.fov_range = 0.0;
      }
      if (initObj.hasOwnProperty('range_min')) {
        this.range_min = initObj.range_min
      }
      else {
        this.range_min = 0.0;
      }
      if (initObj.hasOwnProperty('range_max')) {
        this.range_max = initObj.range_max
      }
      else {
        this.range_max = 0.0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSonarRequest
    // Serialize message field [fov_center]
    bufferOffset = _serializer.float32(obj.fov_center, buffer, bufferOffset);
    // Serialize message field [fov_range]
    bufferOffset = _serializer.float32(obj.fov_range, buffer, bufferOffset);
    // Serialize message field [range_min]
    bufferOffset = _serializer.float32(obj.range_min, buffer, bufferOffset);
    // Serialize message field [range_max]
    bufferOffset = _serializer.float32(obj.range_max, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSonarRequest
    let len;
    let data = new GetSonarRequest(null);
    // Deserialize message field [fov_center]
    data.fov_center = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fov_range]
    data.fov_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_min]
    data.range_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_max]
    data.range_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetSonarRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '806295c5008144c60089d69500f850f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 fov_center
    float32 fov_range
    float32 range_min
    float32 range_max
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSonarRequest(null);
    if (msg.fov_center !== undefined) {
      resolved.fov_center = msg.fov_center;
    }
    else {
      resolved.fov_center = 0.0
    }

    if (msg.fov_range !== undefined) {
      resolved.fov_range = msg.fov_range;
    }
    else {
      resolved.fov_range = 0.0
    }

    if (msg.range_min !== undefined) {
      resolved.range_min = msg.range_min;
    }
    else {
      resolved.range_min = 0.0
    }

    if (msg.range_max !== undefined) {
      resolved.range_max = msg.range_max;
    }
    else {
      resolved.range_max = 0.0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class GetSonarResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.closest = null;
    }
    else {
      if (initObj.hasOwnProperty('closest')) {
        this.closest = initObj.closest
      }
      else {
        this.closest = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSonarResponse
    // Serialize message field [closest]
    bufferOffset = _serializer.float32(obj.closest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSonarResponse
    let len;
    let data = new GetSonarResponse(null);
    // Deserialize message field [closest]
    data.closest = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetSonarResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17b66a616facd3a4f2b8c2dac4757c63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 closest
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSonarResponse(null);
    if (msg.closest !== undefined) {
      resolved.closest = msg.closest;
    }
    else {
      resolved.closest = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSonarRequest,
  Response: GetSonarResponse,
  md5sum() { return '1cfc3e38ad4d4d3e12abc0a04d9a93e2'; },
  datatype() { return 'turtlesim/GetSonar'; }
};

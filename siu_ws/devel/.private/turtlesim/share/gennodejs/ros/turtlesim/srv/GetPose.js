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

let Pose = require('../msg/Pose.js');

//-----------------------------------------------------------

class GetPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPoseRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPoseRequest
    let len;
    let data = new GetPoseRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPoseRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class GetPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPoseResponse
    // Serialize message field [pose]
    bufferOffset = Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPoseResponse
    let len;
    let data = new GetPoseResponse(null);
    // Deserialize message field [pose]
    data.pose = Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '582239f3e6c49527a893bd9673357b39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    turtlesim/Pose pose
    
    
    ================================================================================
    MSG: turtlesim/Pose
    float32 x
    float32 y
    float32 theta
    
    float32 linear_velocity
    float32 angular_velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPoseResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPoseRequest,
  Response: GetPoseResponse,
  md5sum() { return 'd2e1f87d4f41d06b5a0b3a27a28052fe'; },
  datatype() { return 'turtlesim/GetPose'; }
};

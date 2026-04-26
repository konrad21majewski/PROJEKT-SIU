// Auto-generated. Do not edit!

// (in-package turtlesim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Cell {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red = null;
      this.green = null;
      this.blue = null;
      this.distance = null;
      this.occupy = null;
    }
    else {
      if (initObj.hasOwnProperty('red')) {
        this.red = initObj.red
      }
      else {
        this.red = 0.0;
      }
      if (initObj.hasOwnProperty('green')) {
        this.green = initObj.green
      }
      else {
        this.green = 0.0;
      }
      if (initObj.hasOwnProperty('blue')) {
        this.blue = initObj.blue
      }
      else {
        this.blue = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('occupy')) {
        this.occupy = initObj.occupy
      }
      else {
        this.occupy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cell
    // Serialize message field [red]
    bufferOffset = _serializer.float32(obj.red, buffer, bufferOffset);
    // Serialize message field [green]
    bufferOffset = _serializer.float32(obj.green, buffer, bufferOffset);
    // Serialize message field [blue]
    bufferOffset = _serializer.float32(obj.blue, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [occupy]
    bufferOffset = _serializer.float32(obj.occupy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cell
    let len;
    let data = new Cell(null);
    // Deserialize message field [red]
    data.red = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [green]
    data.green = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [blue]
    data.blue = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [occupy]
    data.occupy = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlesim/Cell';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '688818a433dd67daefd39f411918d8b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 red
    float32 green 
    float32 blue
    float32 distance 
    float32 occupy 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cell(null);
    if (msg.red !== undefined) {
      resolved.red = msg.red;
    }
    else {
      resolved.red = 0.0
    }

    if (msg.green !== undefined) {
      resolved.green = msg.green;
    }
    else {
      resolved.green = 0.0
    }

    if (msg.blue !== undefined) {
      resolved.blue = msg.blue;
    }
    else {
      resolved.blue = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.occupy !== undefined) {
      resolved.occupy = msg.occupy;
    }
    else {
      resolved.occupy = 0.0
    }

    return resolved;
    }
};

module.exports = Cell;

// Auto-generated. Do not edit!

// (in-package turtlesim.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose = require('../msg/Pose.js');

//-----------------------------------------------------------

let Mrow = require('../msg/Mrow.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GetCameraImageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.frame_pixel_size = null;
      this.cell_count = null;
      this.x_offset = null;
      this.goal = null;
      this.show_matrix_cells_and_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('frame_pixel_size')) {
        this.frame_pixel_size = initObj.frame_pixel_size
      }
      else {
        this.frame_pixel_size = 0;
      }
      if (initObj.hasOwnProperty('cell_count')) {
        this.cell_count = initObj.cell_count
      }
      else {
        this.cell_count = 0;
      }
      if (initObj.hasOwnProperty('x_offset')) {
        this.x_offset = initObj.x_offset
      }
      else {
        this.x_offset = 0;
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new Pose();
      }
      if (initObj.hasOwnProperty('show_matrix_cells_and_goal')) {
        this.show_matrix_cells_and_goal = initObj.show_matrix_cells_and_goal
      }
      else {
        this.show_matrix_cells_and_goal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCameraImageRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [frame_pixel_size]
    bufferOffset = _serializer.int16(obj.frame_pixel_size, buffer, bufferOffset);
    // Serialize message field [cell_count]
    bufferOffset = _serializer.int16(obj.cell_count, buffer, bufferOffset);
    // Serialize message field [x_offset]
    bufferOffset = _serializer.int16(obj.x_offset, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = Pose.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [show_matrix_cells_and_goal]
    bufferOffset = _serializer.bool(obj.show_matrix_cells_and_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCameraImageRequest
    let len;
    let data = new GetCameraImageRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame_pixel_size]
    data.frame_pixel_size = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cell_count]
    data.cell_count = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [x_offset]
    data.x_offset = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [show_matrix_cells_and_goal]
    data.show_matrix_cells_and_goal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 31;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetCameraImageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b88844795ddd586031f3b49efb235166';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int16 frame_pixel_size
    int16 cell_count
    int16 x_offset
    turtlesim/Pose goal
    bool show_matrix_cells_and_goal
    
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
    const resolved = new GetCameraImageRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.frame_pixel_size !== undefined) {
      resolved.frame_pixel_size = msg.frame_pixel_size;
    }
    else {
      resolved.frame_pixel_size = 0
    }

    if (msg.cell_count !== undefined) {
      resolved.cell_count = msg.cell_count;
    }
    else {
      resolved.cell_count = 0
    }

    if (msg.x_offset !== undefined) {
      resolved.x_offset = msg.x_offset;
    }
    else {
      resolved.x_offset = 0
    }

    if (msg.goal !== undefined) {
      resolved.goal = Pose.Resolve(msg.goal)
    }
    else {
      resolved.goal = new Pose()
    }

    if (msg.show_matrix_cells_and_goal !== undefined) {
      resolved.show_matrix_cells_and_goal = msg.show_matrix_cells_and_goal;
    }
    else {
      resolved.show_matrix_cells_and_goal = false
    }

    return resolved;
    }
};

class GetCameraImageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
      this.m_rows = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('m_rows')) {
        this.m_rows = initObj.m_rows
      }
      else {
        this.m_rows = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCameraImageResponse
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [m_rows]
    // Serialize the length for message field [m_rows]
    bufferOffset = _serializer.uint32(obj.m_rows.length, buffer, bufferOffset);
    obj.m_rows.forEach((val) => {
      bufferOffset = Mrow.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCameraImageResponse
    let len;
    let data = new GetCameraImageResponse(null);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [m_rows]
    // Deserialize array length for message field [m_rows]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.m_rows = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.m_rows[i] = Mrow.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    object.m_rows.forEach((val) => {
      length += Mrow.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlesim/GetCameraImageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa2b089c65dd022d4b833c4f0146f099';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image image
    Mrow[] m_rows
    
    
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: turtlesim/Mrow
    Cell[] cells
    
    ================================================================================
    MSG: turtlesim/Cell
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
    const resolved = new GetCameraImageResponse(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.m_rows !== undefined) {
      resolved.m_rows = new Array(msg.m_rows.length);
      for (let i = 0; i < resolved.m_rows.length; ++i) {
        resolved.m_rows[i] = Mrow.Resolve(msg.m_rows[i]);
      }
    }
    else {
      resolved.m_rows = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCameraImageRequest,
  Response: GetCameraImageResponse,
  md5sum() { return 'a8626d9b6b0964d1462185bf70bbc823'; },
  datatype() { return 'turtlesim/GetCameraImage'; }
};

// Auto-generated. Do not edit!

// (in-package ros_tengine.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rectangle = require('./Rectangle.js');
let Vector2D = require('./Vector2D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FaceObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.boundingbox = null;
      this.landmark = null;
      this.probability = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('boundingbox')) {
        this.boundingbox = initObj.boundingbox
      }
      else {
        this.boundingbox = new Rectangle();
      }
      if (initObj.hasOwnProperty('landmark')) {
        this.landmark = initObj.landmark
      }
      else {
        this.landmark = [];
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [boundingbox]
    bufferOffset = Rectangle.serialize(obj.boundingbox, buffer, bufferOffset);
    // Serialize message field [landmark]
    // Serialize the length for message field [landmark]
    bufferOffset = _serializer.uint32(obj.landmark.length, buffer, bufferOffset);
    obj.landmark.forEach((val) => {
      bufferOffset = Vector2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [probability]
    bufferOffset = _serializer.float32(obj.probability, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceObject
    let len;
    let data = new FaceObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [boundingbox]
    data.boundingbox = Rectangle.deserialize(buffer, bufferOffset);
    // Deserialize message field [landmark]
    // Deserialize array length for message field [landmark]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmark = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmark[i] = Vector2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [probability]
    data.probability = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.landmark.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_tengine/FaceObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f59aacefeb98a82d28461251a7540445';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Face bounding box with marker positions
    Header header
    Rectangle boundingbox
    Vector2D[] landmark
    float32 probability
    
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
    MSG: ros_tengine/Rectangle
    # openCV style rectangle with size and 2D position
    Vector2D position
    Vector2D size
    
    ================================================================================
    MSG: ros_tengine/Vector2D
    # simple 2D vector
    float32 x
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaceObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.boundingbox !== undefined) {
      resolved.boundingbox = Rectangle.Resolve(msg.boundingbox)
    }
    else {
      resolved.boundingbox = new Rectangle()
    }

    if (msg.landmark !== undefined) {
      resolved.landmark = new Array(msg.landmark.length);
      for (let i = 0; i < resolved.landmark.length; ++i) {
        resolved.landmark[i] = Vector2D.Resolve(msg.landmark[i]);
      }
    }
    else {
      resolved.landmark = []
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    return resolved;
    }
};

module.exports = FaceObject;

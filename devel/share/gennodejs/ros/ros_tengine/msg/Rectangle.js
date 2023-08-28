// Auto-generated. Do not edit!

// (in-package ros_tengine.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vector2D = require('./Vector2D.js');

//-----------------------------------------------------------

class Rectangle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Vector2D();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new Vector2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rectangle
    // Serialize message field [position]
    bufferOffset = Vector2D.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = Vector2D.serialize(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rectangle
    let len;
    let data = new Rectangle(null);
    // Deserialize message field [position]
    data.position = Vector2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = Vector2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_tengine/Rectangle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c203b85004c7420de46fab775f4b516b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Rectangle(null);
    if (msg.position !== undefined) {
      resolved.position = Vector2D.Resolve(msg.position)
    }
    else {
      resolved.position = new Vector2D()
    }

    if (msg.size !== undefined) {
      resolved.size = Vector2D.Resolve(msg.size)
    }
    else {
      resolved.size = new Vector2D()
    }

    return resolved;
    }
};

module.exports = Rectangle;

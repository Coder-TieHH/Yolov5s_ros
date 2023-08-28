# ROS_Tengine_NPU #

This is a ROS package for [Tengine](https://github.com/OAID/Tengine/blob/tengine-lite/), a high-performance neural network inference framework  by **[OPEN AI LAB](http://www.openailab.com)** optimized for embedded devices:

- ARM NEON assembly level optimization
- Sophisticated memory management and data structure design, very low memory footprint
- Completely separated front-end/back-end design, Supports CPU, GPU, NPU and other heterogeneous computing units
- Extensible model design, supports uint8/int8 quantization storage
- Can import caffe/pytorch/mxnet/onnx/ncnn models

## Setting up ##
* Khadas VIM3 device
* USB Camera
* [Tengine Compile with TIM-VX ](https://tengine-docs.readthedocs.io/zh_CN/latest/source_compile/compile_timvx.html)
### Library ###

## ROS package ##
```bash
git clone git@github.com:Coder-TieHH/Yolov5n_ros.git
cd ros_tengine
git submodule update --init
```
```bash
├── Catkin_make.sh
├── Clean.sh
├── Run.sh
└── src
    ├── ros_tengine
    │   ├── assets
    │   │   └── models
    │   │       └── yolov3_uint8.tmfile
    │   ├── CMakeLists.txt
    │   ├── include
    │   │   └── ros_tengine
    │   │       ├── c_api.h
    │   │       ├── defines.h
    │   │       ├── timer.hpp
    │   │       ├── timvx_device.h
    │   │       ├── types.hpp
    │   │       ├── yolo.hpp
    │   │       └── yolo_layer.hpp
    │   ├── launch
    │   │   └── yolov3.launch
    │   ├── lib
    │   │   └── libtengine-lite.so
    │   ├── msg
    │   │   ├── Euler.msg
    │   │   ├── FaceObject.msg
    │   │   ├── Object.msg
    │   │   ├── Rectangle.msg
    │   │   └── Vector2D.msg
    │   ├── package.xml
    │   └── src
    │       ├── timer.cc
    │       ├── yolo.cpp
    │       ├── yolo_layer.cpp
    │       └── yolov3_node.cpp
    └── usb_cam
```

## How to build ##
```bash
bash Catkin_make.sh
```
## How to run ##
```bash
bash Run.sh
```

## :v:  Acknowledgements ##
[Tengine](https://github.com/OAID/Tengine/blob/tengine-lite/)

[Insightface-NPU](https://github.com/mlbo/Insightface-NPU)

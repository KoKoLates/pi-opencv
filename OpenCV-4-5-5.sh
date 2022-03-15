#!/bin/bash

echo "Raspberry Pi with 32-bit OS"
echo "Installing OpenCV 4-5-5"
cd ~

# Install the dependencies
sudo apt-get install build-essential cmake git unzip pkg-config -y
sudo apt-get install libjpeg-dev libtiff-dev libpng-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y 
sudo apt-get install libgtk2.0-dev libcanberra-gtk* libgtk-3-dev -y
sudo apt-get install libgstreamer1.0-dev gstreamer1.0-gtk3 -y 
sudo apt-get install libgstreamer-plugins-base1.0-dev gstreamer1.0-gl -y 
sudo apt-get install libtbb2 libtbb-dev libdc1394-22-dev -y 
sudo apt-get install libv4l-dev v4l-utils -y 
sudo apt-get install libopenblas-dev libatlas-base-dev libblas-dev -y
sudo apt-get install liblapack-dev gfortran libhdf5-dev -y
sudo apt-get install libprotobuf-dev libgoogle-glog-dev libgflags-dev -y
sudo apt-get install protobuf-compiler -y
sudo apt-get install python3-dev python3-numpy python3-pip -y 

# Remove older version
cd ~
sudo rm -rf opencv*

# Install OpenCV 4-5-5
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.5.zip 
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.5.zip 

# Unzip
unzip opencv.zip 
unzip opencv_contrib.zip

# Rename folder and Clean up the zip file
mv opencv-4.5.5 opencv
mv opencv_contrib-4.5.5 opencv_contrib
rm opencv.zip
rm opencv_contrib.zip

# Build install directory
cd ~/opencv
mkdir build
cd build

# cmake configuration
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
-D ENABLE_NEON=ON \
-D WITH_OPENMP=ON \
-D WITH_OPENCL=OFF \
-D BUILD_TIFF=ON \
-D WITH_FFMPEG=ON \
-D WITH_TBB=ON \
-D BUILD_TBB=ON \
-D WITH_GSTREAMER=ON \
-D BUILD_TESTS=OFF \
-D WITH_EIGEN=OFF \
-D WITH_V4L=ON \
-D WITH_LIBV4L=ON \
-D WITH_VTK=OFF \
-D WITH_QT=OFF \
-D OPENCV_ENABLE_NONFREE=ON \
-D INSTALL_C_EXAMPLES=OFF \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D PYTHON3_PACKAGES_PATH=/usr/lib/python3/dist-packages \
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D BUILD_EXAMPLES=OFF ..

# Make
make -j4
sudo make install
sudo ldconfig

make clean 
sudo apt-get update

echo "Successfully install OpenCV 4.5.5"

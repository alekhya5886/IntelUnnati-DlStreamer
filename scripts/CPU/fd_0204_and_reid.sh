gst-launch-1.0 -v filesrc location=/data/crowd.mp4 ! decodebin ! videoconvert ! videoscale ! \
video/x-raw,width=640,height=480 ! \
gvadetect model=/models/intel/face-detection-0204/FP32/face-detection-0204.xml device=CPU ! \
gvatrack tracking-type=short-term-imageless ! \
gvaclassify model=/models/intel/face-reidentification-retail-0095/FP32/face-reidentification-retail-0095.xml device=CPU ! \
gvametaconvert ! gvawatermark ! videoconvert ! fpsdisplaysink video-sink=fakesink sync=false
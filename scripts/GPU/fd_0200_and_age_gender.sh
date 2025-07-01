gst-launch-1.0 -v filesrc location=/data/crowd.mp4 ! decodebin ! videoconvert ! videoscale ! \
video/x-raw,width=640,height=480 ! \
gvadetect model=/models/intel/face-detection-0200/FP32/face-detection-0200.xml device=GPU ! \
gvatrack tracking-type=short-term-imageless ! \
gvaclassify model=/models/intel/age-gender-recognition-retail-0013/FP32/age-gender-recognition-retail-0013.xml device=GPU ! \
gvametaconvert ! gvawatermark ! videoconvert ! fpsdisplaysink video-sink=fakesink sync=false
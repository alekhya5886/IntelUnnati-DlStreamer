# IntelUnnati-DlStreamer
This project builds a real-time video pipeline (Decode → Detect → Classify) using Intel DL Streamer on CPU and GPU. It evaluates performance to find the optimal FPS, stream count, and best detection/classification models for Intel hardware.
# 🧠 Real-Time Video Analytics using Intel DL Streamer

> Face Detection · Emotion Recognition · Face Re-identification  
> *Built with Intel® DL Streamer, OpenVINO™ Toolkit, and GStreamer*

---

## 📌 Overview

This project implements a real-time, GStreamer-based video pipeline (Decode → Detect → Classify) using Intel® DL Streamer on both CPU and GPU. It aims to evaluate how efficiently Intel hardware can support multiple video streams and AI models for edge inference. The goal: determine optimal FPS, stream support, and best model combinations.

---

## 🎯 Problem Statement

> Create a pipeline (Decode → Detect → Classify) on Intel hardware (CPU and GPU),  
> run it across multiple streams, and evaluate FPS and performance for different model pairs.

---

## 💻 Hardware & Software Setup

| Component        | Details |
|------------------|---------|
| *CPU*          | Intel® Core™ i5-1135G7 @ 2.40GHz (4 cores / 8 threads) |
| *GPU*          | Integrated Intel® Iris® Xe Graphics |
| *OS*           | Ubuntu 24.04 LTS via WSL2 (Windows 11 host) |
| *Docker*       | Docker Desktop with WSL2 backend |
| *Frameworks*   | DL Streamer · OpenVINO™ Toolkit · OpenCV · GStreamer |
| *Models*       | face-detection, face-reid, emotion, age-gender |
| *Input*        | MP4 test video of a moving crowd with visible faces |

---

## 🧱 Pipeline Architecture
![WhatsApp Image 2025-07-01 at 19 24 53_6e637713](https://github.com/user-attachments/assets/f0c7914e-4979-4183-8060-28467d9f39bf)
> Each component uses DL Streamer GStreamer plugins. Output is logged with performance stats.

---

## 🔍 Model Combinations Evaluated

| Detection Model        | Classification Model                  | Purpose               |
|------------------------|----------------------------------------|------------------------|
| face-detection-0205    | emotions-recognition-retail-0003       | Emotion classification |
| face-detection-0204    | face-reidentification-retail-0095      | Face re-identification |
| face-detection-0200    | age-gender-recognition-retail-0013     | Age & gender analysis  |

---

## ▶ Sample GStreamer Pipeline (CPU)

```bash
gst-launch-1.0 -v filesrc location=/data/crowd.mp4 ! decodebin ! videoconvert ! videoscale ! \
video/x-raw,width=640,height=480 ! \
gvadetect model=/models/intel/face-detection-0205/FP32/face-detection-0205.xml device=CPU ! \
gvatrack tracking-type=short-term-imageless ! \
gvaclassify model=/models/intel/emotions-recognition-retail-0003/FP32/emotions-recognition-retail-0003.xml device=CPU ! \
gvametaconvert ! gvawatermark ! videoconvert ! fpsdisplaysink video-sink=fakesink sync=false

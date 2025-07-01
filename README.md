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

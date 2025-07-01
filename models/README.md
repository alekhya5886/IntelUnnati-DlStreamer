# DL Streamer Project: Model Information

This project uses pre-trained models from the OpenVINO™ Model Zoo. Download links and descriptions are provided below.

---

##  Detection Models

### 1. [face-detection-0205](https://github.com/openvinotoolkit/open_model_zoo/tree/master/models/intel/face-detection-0205)
- *Type*: Face Detection
- *Input Size*: 256x256
- *Use Case*: Robust frontal face detection with SSD-based architecture

### 2. [face-detection-0204](https://github.com/openvinotoolkit/open_model_zoo/tree/master/models/intel/face-detection-0204)
- *Type*: Face Detection
- *Input Size*: 120x120
- *Use Case*: Lightweight face detector for edge devices

### 3. [face-detection-0200](https://github.com/openvinotoolkit/open_model_zoo/tree/master/models/intel/face-detection-0200)
- *Type*: Face Detection
- *Input Size*: 256x256
- *Use Case*: General purpose frontal face detection

---

##  Face Re-Identification

### 4. [face-reidentification-retail-0095](https://github.com/openvinotoolkit/open_model_zoo/tree/master/models/intel/face-reidentification-retail-0095)
- *Type*: Face Re-Identification
- *Input Size*: 128x128
- *Use Case*: Compare and match faces across frames

---

##  Emotion Recognition

### 5. [emotions-recognition-retail-0003](https://github.com/openvinotoolkit/open_model_zoo/tree/master/models/intel/emotions-recognition-retail-0003)
- *Type*: Emotion Classification
- *Input Size*: 64x64
- *Use Case*: Classifies facial expressions (neutral, happy, sad, surprise, angry)

---

##  Age & Gender Classification

### 6. [age-gender-recognition-retail-0013](https://github.com/openvinotoolkit/open_model_zoo/tree/master/models/intel/age-gender-recognition-retail-0013)
- *Type*: Age and Gender Classification
- *Input Size*: 62x62
- *Use Case*: Predicts gender and age range from face

---

##  Download Instructions

To download all models manually using the OpenVINO downloader tool:

```bash
# Navigate to your OpenVINO directory
cd ~/openvino

# Download models using omz_downloader
omz_downloader --name face-detection-0205 \
               --name face-detection-0204 \
               --name face-detection-0200 \
               --name face-reidentification-retail-0095 \
               --name emotions-recognition-retail-0003 \
               --name age-gender-recognition-retail-0013

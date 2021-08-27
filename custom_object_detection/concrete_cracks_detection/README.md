# Custom Object Detection
This is a concrete cracks detection model using YOLOv5. 

## Images
All data was found via internet using [Yandex Images](https://yandex.ru/images/). All rights go to their respective owners.

## Model
The model accuracy as of now is 22.1%. The reason is it needs more epochs to run. I used 30 epoch and it took an entire day on my laptop. I have tested what I wanted originally, more accuracy is a matter of time now.  

## Requirements
* Python
* YOLO
* Install YOLO dependencies via `pip` (requirements.txt)

## Training
1. Download YOLO 
```
git clone https://github.com/ultralytics/yolov5.git yolov5
```
2. Copy `custom_config.yaml` to `yolov5/data`
```
cp custom_config.yaml yolov5/data
```
3. Train the model
```
python3 train.py --batch 16 --epochs 120 --data custom_config.yaml --weights yolov5x.pt --nosave --cache 
```
Adjust the `--batch` variable depending on how much RAM you have. I have 8Gb, so I've used `--batch 4`. It was optimal on my setup. 

## Results
The results may be found at `yolov5/runs/detect/exp#`, where `#` is a number.











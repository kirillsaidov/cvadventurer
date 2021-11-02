# Face-Mask Detection
This model detects a human face and a mask using YOLOv5. 

## Images
All data was found via internet using [Yandex Images](https://yandex.ru/images/). All rights go to their respective owners.

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
3. Create a data folder with your images
```
- data
    - images
	- train
	- test
	- val
    - labels
	- train
	- test
	- val
```
4. Train the model
```
python3 train.py --batch 16 --epochs 120 --data custom_config.yaml --weights yolov5x.pt --nosave --cache 
```
Adjust the `--batch` variable depending on how much RAM you have. I have 8Gb, so I've used `--batch 4`. It was optimal on my setup. 

## Results
The results may be found at `yolov5/runs/detect/exp#`, where `#` is a number.











import easyocr
import cv2

img=cv2.imread('Capture.JPG')
reader = easyocr.Reader(['en'],gpu=False)
result=reader.readtext(img)

print(result)
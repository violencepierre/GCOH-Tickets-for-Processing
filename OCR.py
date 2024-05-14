import easyocr
import cv2

img=cv2.imread('Capture.JPG')
reader = easyocr.Reader(['en'],gpu=False)
result=reader.readtext(img)

chest='CN09Z03AK1'

print(result[0][1])

if chest==result[0][1]:
    print('SAME!!!')
else:
    print('not same')
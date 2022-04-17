clc;
clear all;
Image=imread("C:\Program Files\scilab-6.1.1\IPCV\images\balloons.png");
subplot(1,3,1);imshow(Image);title('Image in RGB color Space')

HSV = rgb2hsv(Image);
imwrite(HSV,'HSV.tif');
subplot(1,3,2);imshow(HSV);title('Image in HSV color Space')

CMY = imcomplement(Image);
imwrite(CMY,'CMY.tif');
subplot(1,3,3);imshow(CMY);title('Image in CMY Color Space __By Mazhar Solkar');

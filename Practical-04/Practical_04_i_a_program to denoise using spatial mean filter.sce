clc;
clear all;
Image = imread('C:\Program Files\scilab-6.1.1\IPCV\images\balloons.png');
NoisyImage = imnoise(Image,'salt & pepper');
F1 = fspecial('average',3);
FilterImage = imfilter(NoisyImage,F1)

subplot(1,3,1);
imshow(Image);
title('Original Image');

subplot(1,3,2);
imshow(NoisyImage);
title('Noisy Imgae');

subplot(1,3,3);
imshow(FilterImage);
title('Filtered Imgae __By Mazhar Solkar');


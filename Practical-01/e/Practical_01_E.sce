clc;
close;

a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\Lena_dark.png');
b = imread('gaussian.jpg');
c = imsubtract(a,b);
imshow(c);
title('__By Mazhar Solkar')
imwrite(c,'Difference.jpg');

















/*
Practical 01:
(D) Program to perform image averaging (image addition) for noise reduction.
*/

clc;
close;

disp('Mazhar Solkar')
disp('R.NO: 32')

a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\Lena_dark.png');
subplot(2,2,1);
imshow(a);
title('original image');

b = imnoise(a,'gaussian');
subplot(2,2,2);
imshow(b);
title('output image');

//imwrite(b,'gaussian.jpg')

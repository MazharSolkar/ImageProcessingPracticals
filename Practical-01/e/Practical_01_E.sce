/*
Practical 01:
(E) Program to compare images using subtraction for enhancing the difference between images.
*/

clc;
close;

disp('Mazhar Solkar')
disp('R.NO: 32')

a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\Lena_dark.png');
b = imread('gaussian.jpg');
c = imsubtract(a,b);
imshow(c);
imwrite(c,'Difference.jpg');

















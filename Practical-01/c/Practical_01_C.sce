/*
Practical 01
(C) Program to study the effects of varying the number of intensity levels in a digital
image
*/

clc;
close;

disp('Mazhar Solkar')
disp('R.NO: 32')

img =imread('C:\Program Files\scilab-6.1.1\IPCV\images\Lena.png');
img = rgb2gray(img);
[r,c,s] = size(img);
k = [1 2 3 4 5 6 7 8];
for i = 1:length(k)
    d=2^i;
    z=round(img/d);
    subplot(3, 3, i);
    imshow(z*d);
end

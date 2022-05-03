clc;
clear all;
a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\baboon.png');
b = double(a);
subplot(1,2,1);
imshow(a);
title('original image')

k=10;   //constant value
[m,n] = size(b);
for i = 1:m
    for j = 1:n
        c(i,j) = k*log(1+b(i,j));   //s = k*log(1+r)
    end
end
subplot(1,2,2);
imshow(uint8(c));
title('Log transform image __By Mazhar Solkar');



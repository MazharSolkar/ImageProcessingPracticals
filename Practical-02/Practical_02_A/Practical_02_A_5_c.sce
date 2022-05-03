clc;
clear all;

a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\Lena.png');
b = double(a);

for i=1:8
    f=bitget(b,i)
    subplot(2,4,i);
    imshow(f);
    title('bit plane'+string(i)+'__By Mazhar');
end



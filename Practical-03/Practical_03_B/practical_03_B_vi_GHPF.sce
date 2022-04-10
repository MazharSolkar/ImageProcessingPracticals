clc;
clear;
a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\cameraman.tif');
a= im2double(a);
subplot(2,3,1),imshow(a),title('Input Image');

[m,n] = size(a);

A = fft2(a);
subplot(2,3,2),imshow(uint8(abs(A))),title('F.T. of i/p without shift');

A_shift = fftshift(A);
A_real = abs(A_shift);
subplot(2,3,3),imshow(uint8(A_real)),title('F.T of i/p after shift');

D0 = 30;
d = zeros(m,n);
order = 1;
for u =1:m
    for v=1:n
        d(u,v)=sqrt((u-(m/2))^2+(v-(n/2))^2);
        h(u,v)=1/((1+(D0/d(u,v))^(2*order)));
     end
end
subplot(2,3,4),imshow(h),title('Gaussian High pass Filter')
subplot(2,3,5),mesh(h),title('surface plot IHPF')

H_high = A_shift.*h;
H_high_shift = fftshift(H_high);
H_high_shift = ifft(H_high_shift);
B_real = abs(H_high_shift);
subplot(2,3,6),imshow(B_real),title('Gaussian High pass image __By Mazhar Solkar')



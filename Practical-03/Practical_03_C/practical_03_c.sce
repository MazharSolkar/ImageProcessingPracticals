clc;
clear all;
a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\moon.tif');
a = im2double(a);
subplot(2,2,1),imshow(a),title('Input Image');
[m,n] = size(a);
D0 = 50;
A = fft2(a);
A_shift = fftshift(A);
A_real = abs(A_shift);
H = zeros(m,n);
D = zeros(m,n);
for u=1:m
    for v=1:n
        D(u,v)=sqrt((u-(m/2))^2+(v-(n/2))^2);
        if D(u,v) <= D0
            H(u,v) = 0;
        else
            H(u,v) = 1;
        end
     end    
end

AHB = 2.0;
H1 = (AHB-1)+H;
X = A_shift.*H;
X1 = A_shift.*H;
XA = abs(ifft(X));
XB = abs(ifft(X1));

subplot(2,2,2),imshow(XA),title('High pass image');
subplot(2,2,3),imshow(XB),title('High boost image');
subplot(2,2,4),imshow(a+XA),title('Input + High pass = Laplacian Image __By Mazhar Solkar')

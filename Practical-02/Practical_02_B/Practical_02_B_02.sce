close all;
clear all;
clc
warning off;
// Read the image
a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\lena.png');
// Convert to grayscale incase it is color
a = rgb2gray(a);
b=size(a);
a=double(a);

// Loop for Getting the Histogram of the Original image
freq_counts = zeros(1,256);
for i=1:b(1)
    for j=1:b(2)
        for k=0:255
            if a(i,j)==k
                freq_counts(k+1)=freq_counts(k+1)+1;
            end
        end
    end
end

//Generating PDF out of histogram by diving by total no. of pixels
pdf=(1/(b(1)*b(2)))*freq_counts;

//Generating CDF out of PDF
cdf = zeros(1,256);
cdf(1)=pdf(1);
for i=2:256
    cdf(i)=cdf(i-1)+pdf(i);
end
cdf = round(255*cdf);
// histogram equilized image
ep = zeros(b); //ep is for output
for i=1:b(1) //loop tracing the rows of image
    for j=1:b(2) //loop tracing thes columns of image
      t=(a(i,j)+1); //pixel values in image
      ep(i,j)=cdf(t); //Making the ouput image using cdf as the transformationfunction
    end
end

// Loop for Getting the Histogram of the Equalized image
hist2 = zeros(1,256);
for i=1:b(1)
    for j=1:b(2)
        for k=0:255
          if ep(i,j)==k
             hist2(k+1)=hist2(k+1)+1;
          end
        end
    end
end

subplot(2,2,1);
imshow(uint8(a));title('Original image');
subplot(2,2,3);
imshow(uint8(ep));title('Histogram equalized image --by Mazhar Solkar R.No: 32');
subplot(2,2,2);
plot2d3([0:255],freq_counts);title('Histogram of original image');
subplot(2,2,4);
plot2d3([0:255],hist2);title('Histogram of equalized image --by Mazhar Solkar R.No: 32');

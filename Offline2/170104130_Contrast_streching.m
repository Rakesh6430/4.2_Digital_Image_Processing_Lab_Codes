
%Reading the input image
I = imread('cameraman.png');

%displaying the input image
figure;

subplot(2,4,1);imshow(I);title('Input Image');

hist1=zeros(1,256);
for i=1:row
    for j=1:col
        hist1(I(i,j)+1)=hist1(I(i,j)+1)+1;   
    end
end

subplot(2,4,2),bar(hist1);
title('Input Image Histogram');

%Finding maximum value
A = min(I(:));
%Finding minimum value
B = max(I(:));
%Finding the difference
D= B-A;
%Storing highsest possilbe intensity value
M = ((2^8)-1);

%Getting R value for each pixel
[row,col]=size(I);
R=I;
for i=1:row
    for j=1:col
        R(i,j) = (((I(i,j)-A)/D)*M) + A;
    end
end

%Plotting output image and its histogram
subplot(2,4,3),imshow(R);title('Contrast Strech Image');


hist2=zeros(1,256);
for i=1:row
    for j=1:col
        hist2(R(i,j)+1)=hist2(R(i,j)+1)+1;   
    end
end

subplot(2,4,4),bar(hist2);
title('Output Image Histogram');

imwrite(R,'F:\Department\Reading Materials\4.2\CSE4228(DIP Lab)\Offline2\output Of Contrast.jpg');
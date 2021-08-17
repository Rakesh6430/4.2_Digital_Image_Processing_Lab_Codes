clear all
close all
I=imread('cameraman.png');
figure;
subplot(2,4,1),imshow(I);title('Input Image');

subplot(2,4,2),imhist(I);title('Histogram of Input Image');

zero=0;

grey_level=zeros(1,255);

zero_pdf=0;

other_pdf=zeros(1,255);

zero_cdf=0;

other_cdf=zeros(1,255);


[row,col]=size(I);

%computing number of grey levels 
for i=1:row
    for j=1:col
        num=I(i,j);
        if num==0
            zero=zero+1;
        else
            grey_level(num)=grey_level(num)+1;
        end    
    end
end


%computing pdf

%for zero intensity
zero_pdf=zero/(row*col);

%for other intensity
for i=2:255
    other_pdf(i)=grey_level(i)/(row*col);
end


% computing cdf

%for zero position

zero_cdf=zero_pdf;

%for one position
other_cdf(1)=other_pdf(1)+zero_cdf;

%for other position
for i=2:255
    other_cdf(i)=other_cdf(i-1)+other_pdf(i);
end


%Multiplying each cdf by L-1

zero_cdf=zero_cdf*(255);
other_cdf=other_cdf*(255);

%Rounding the value

%for zero intensity
zero_cdf=round(zero_cdf);

% for other intensity values
for i=1:255
    other_cdf(i)=round(other_cdf(i));
end

%Getting output image with updated intesnsity values using cdf 
for i=1:row
    for j=1:col
        num=I(i,j);
        if num==0
          I(i,j)=zero_cdf;
        else
          I(i,j)=other_cdf(num); 
        end
    end
end


subplot(2,4,3),imshow(I);title('Histogram Equalized Image');
subplot(2,4,4),imhist(I);title('Histogram Equalized ');




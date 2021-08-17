I = imread('Input_image1.jpg');
figure;
imshow(I);

[row,col] = size(I);


I1 = imread('Input_image2.jpg');
figure;
imshow(I1);

[rows,cols] = size(I1);


%col1 = I(:, 1:85);

redChannel = I(:, 1:85, 1);
greenChannel = I(:, 1:85, 2);
blueChannel = I(:, 1:85, 3);

col1 = cat(3, redChannel, greenChannel, blueChannel);
%figure;
%imshow(col1);







%col2 = I1(:, 86:170);
redChannel = I1(:, 86:170, 1);
greenChannel = I1(:, 86:170, 2);
blueChannel = I1(:, 86:170, 3);

col2 = cat(3, redChannel, greenChannel, blueChannel);

%figure;
%imshow(col2);




%col3 = I(:, 171:255);
redChannel = I(:, 171:255, 1);
greenChannel = I(:, 171:255, 2);
blueChannel = I(:, 171:255, 3);
col3 = cat(3, redChannel, greenChannel, blueChannel);

%figure;
%imshow(col3);


%col4 = I1(:, 256:340);
redChannel = I1(:, 256:340, 1);
greenChannel = I1(:, 256:340, 2);
blueChannel = I1(:, 256:340, 3);

col4 = cat(3, redChannel, greenChannel, blueChannel);

%figure;
%imshow(col4);

%col5 = I(:, 341:425);

redChannel = I(:, 341:425, 1);
greenChannel = I(:, 341:425, 2);
blueChannel = I(:, 341:425, 3);

col5 = cat(3, redChannel, greenChannel, blueChannel);

%figure;
%imshow(col5);

%col6 = I1(:, 426:512);
redChannel = I1(:, 426:512, 1);
greenChannel = I1(:, 426:512, 2);
blueChannel = I1(:, 426:512, 3);

col6 = cat(3, redChannel, greenChannel, blueChannel);

%figure;
%imshow(col6);



 
result = horzcat(col1,col2);
result1 = horzcat(result,col3);

result2 = horzcat(result1,col4);

result3 = horzcat(result2,col5);
result4 = horzcat(result3,col6);



figure;
imshow(result4);
imwrite(result4,'F:\Department\Reading Materials\4.2\CSE4228(DIP Lab)\output.jpg');


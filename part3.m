%Understanding different kind of noise and filters 
img = imread('00006727_004.png');
%histogram(img);
%Introducing salt and pepper noise with variance 0.2
J1 = imnoise(img,'salt & pepper',0.5);
%imshowpair(img,J,'montage');
filterWindow = ones(3) / 9;
filteredImage1 = imfilter(J1, filterWindow); % Worked Okay okay
filteredImage2 = imgaussfilt(J1); %It didnot filtered properly
filteredImage3 = medfilt2(J1); %It worked perfectly
Himage1 = adapthisteq(filteredImage1);
Himage2 = adapthisteq(filteredImage2);
Himage3 = adapthisteq(filteredImage3);
if true
 figure;
subplot(3,2,1),imshow(img);
subplot(3,2,2),imshow(J1);
subplot(3,2,3),imshow(Himage1);
subplot(3,2,4),imshow(Himage2);
subplot(3,2,5),imshow(Himage3);
end
if true
 figure;
subplot(3,2,1),histogram(img); %Histogram of original image
subplot(3,2,2),histogram(J1); %Histogram of Noised image
subplot(3,2,3),histogram(Himage1); 
subplot(3,2,4),histogram(Himage2);
subplot(3,2,5),histogram(Himage3);
end
val1 = psnr(Himage1,img);
val2 = psnr(Himage2,img);
val3 = psnr(Himage3,img);
%%%Printing SNR values for different filter with CLAHE
disp(val1);
disp(val2);
disp(val3);
%%%**********************************************************
%%***********************************************************
%INtroducing Gaussian Noise
J2 = imnoise(img, 'gaussian', 0, 0.02);
%figure,imshowpair(img,J,'montage');
filterWindow = ones(3) / 9;
filteredImage4 = imfilter(J2, filterWindow); %Worked good for gaussian noise
filteredimage5 = imgaussfilt(J2); %
filteredImage6 = medfilt2(J2); %It worked ok 
Himage4 = adapthisteq(filteredImage4);
Himage5 = adapthisteq(filteredimage5);
Himage6 = adapthisteq(filteredImage6);

%imshowpair(filteredImage1,Himage1,'montage');
val4 = psnr(Himage4,img);
val5 = psnr(Himage5,img);
val6 = psnr(Himage6,img);
%%%Printing SNR values for different filter with CLAHE
disp(val4);
disp(val5);
disp(val6);
if true
 figure;
subplot(3,2,1),imshow(img);
subplot(3,2,2),imshow(J2);
subplot(3,2,3),imshow(Himage4);
subplot(3,2,4),imshow(Himage5);
subplot(3,2,5),imshow(Himage6);
end
if true
 figure;
subplot(3,2,1),histogram(img); %Histogram of original image
subplot(3,2,2),histogram(J2); %Histogram of Noised image
subplot(3,2,3),histogram(Himage4); 
subplot(3,2,4),histogram(Himage5);
subplot(3,2,5),histogram(Himage6);
end
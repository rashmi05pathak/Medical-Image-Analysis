
img = imread('00006728_000.png');
[height, width] = size(img);
[counts,binlocation] = imhist(img);
cumval = zeros(256);
cumval(1) = counts(1);
for i = 2:256
    cumval(i) = cumval(i-1)+counts(i); %calculating cumulative value of frequency
end
%image is 1024 by 1024 and we have 256 gray levels
%disp(height);
cumval_desired = zeros(256);
desired_count = (height * width)/256;
cumval_desired(1) = desired_count;
%cumval_desired(256) = desired_count;
for i = 2:256
    %cumval_desired(n-i) =  cumval_desired(n-i+1) + desired_count;
    cumval_desired(i) =  cumval_desired(i-1) + cumval_desired(1);
end
output_histogram = zeros(256);
i = 0;
j = 0;
mapping = zeros(256);
for i = 1:256
    for j = 1:255
        if (cumval(i) == cumval_desired(j)) || (cumval(i) < cumval_desired(j))
            break;
        end
    end
    output_histogram(j) = output_histogram(j) + counts(i); %output bins for similar bins you need to add the count of intensities
    mapping(i) = j; % j can be repeated multiple times
end
img1 = zeros(1024,1024);
for i = 1:1024
    for j = 1:1024
        img1(i,j) = img(i,j);
    end
end
for i = 1:1024
    for j = 1:1024
        v = img(i,j);
        if v == 0
            v = 1;
        end
        img1(i,j) = mapping(v);
    end
end
imshowpair(img,img1,'montage');
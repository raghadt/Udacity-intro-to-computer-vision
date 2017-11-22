// Problem Set 0: Images as Functions

img = imread('input/ps0-1-a-1.png');
red = img(:,:,1);
blue = img(:,:,2);
green = img(:,:,3);

//2. a. Swap the red and blue pixels

img(:,:,2) = red;
img(:,:,1) = blue;
imshow(img);
imwrite(img, fullfile('output', 'ps0­2­a­1.png'));

// b. Create a monochrome image (img1_green) by selecting the green channel of image 1
img = imread('input/ps0-1-a-1.png');
img(:,:,1)=green;
img(:,:,1)=green;
imshow(img);
imwrite(img, fullfile('output', 'ps0­2­b­1.png'));

//c. Create a monochrome image (img1_red) by selecting the red channel of image 1

img = imread('input/ps0-1-a-1.png');
img(:,:,2)=red;
img(:,:,3)=red;
imshow(img);
imwrite(img, fullfile('output', 'ps0­2­c­1.png'));

// 3. a. Take the inner center square region of 100x100 pixels of monochrome version of image 1 and insert them into the center of monochrome version of image 2 Output: Store the new image created as ps0­3­a­1.png

// 4.a. What is the min and max of the pixel values of img1_green? What is the mean? What is the standard deviation? And how did you compute these?
img_mean = mean2(img1);
st_dev=std2(img1);

//b. Subtract the mean from all pixels, then divide by standard deviation, then multiply by 10 (if your image is 0 to 255) or by 0.05 (if your image ranges from 0.0 to 1.0). Now add the mean back in.
img4= img1-img_mean;
img4=(img4/st_dev)*10;
imwrite(img4, fullfile('output', 'ps0­4­b­1.png'));

// c.Shift img1_green to the left by 2 pixels.
filter= [0 0 0 0 0;0 0 0 0 1;0 0 0 0 0];
img5= imfilter(img1, filter);

// d.Subtract the shifted version of img1_green from the original, and save the difference image.
img6=img1-img5;
imwrite(img6, fullfile('output', 'ps0­4­d­1.png'));


// 5. a. Take the original colored image (image 1) and start adding Gaussian noise to the pixels in the green channel. Increase sigma until the noise is somewhat visible. Output: ps0­5­a­1.png, text response: What is the value of sigma you had to use?


noise = imnoise(img1,'gaussian',0.2);

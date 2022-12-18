# Medical-Image-Analysis
This repo contains Assignments of ED6001.
Outer code files are of assignment 1 which solves below problem:
Part 1: Geometric transforms
For target to source mapping, use bilinear interpolation.
1. Translate the image by tx = 5.5 and ty= 4.4 pixels
2. In plane rotate the image about the image centre with an angle of 35° and -125°
3. Scale the image by a factor of 0.4 and 1.4
Summarize your observations.
Part 2: Histograms
1. Use the input image assigned to your roll number and try to enhance the contrast of the image using histogram equalization technique.
2. Summarize your observations.
Part 3: Understanding of various types of noise and filters


Assignment 2 solves below problem:
Warwick dataset for gland segmentation in Colon histology images in MICCAI’15 is available for open access at https://warwick.ac.uk/fac/cross_fac/tia/data/glascontest/download/.

Assignment 3 is in folder EE20S051. Which solves below problem:
Part 1: Denoising
Denoise the image using appropriate filter.
Summarize your observations as:
a. What is the prominent noise identified in the image or introduced by yourself in the given image?
b. Type of filter used to denoise
c. Plot the residuals and analyze the performance of filter using the metric, PSNR
Part 2: Contrast enhancement and edge detection
i. Enhance the contrast of the images. Visualize the input and the contrast enhanced image using histograms.
ii. After contrast enhancement, try to detect the edges of the sternum (crop the image such that it encompasses atleast twice the size of the sternum) using various edge detectors and compare the performance of the edge detectors.
Part 3: Observe the application of Hough Transform
1. Use the best contrast enhanced edge detected image from part 2 and apply Hough transform to locate the sternum.


clc
clear all
close all

I = im2double(imread('Images\Cameraman_LR.tif'));
O = im2double(imread('Images\Cameraman_org.tif'));

[row, col] = size(I);

J3 = imresize (I, 2);
J4 = My_imresize (I);


c = PSNR(J3, O);
d = PSNR(J4, O);

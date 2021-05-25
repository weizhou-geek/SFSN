
clc
clear all
close all


imgref = double(rgb2gray(imread('ref.bmp')));
imgdis = double(rgb2gray(imread('dis.bmp')));

[sf, sn] = compute_sf_sn(imgref, imgdis);

%If test on the whole database, normalize sn
%sn = normalization(sn, 0, 1, max(sn), min(sn));
sf
sn
pred_score = (1+0.9)*sf+(1-0.9)*sn



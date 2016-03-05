h=[-1,-2,-1;0,0,0;1,2,1];
im=imread('cameraman.tif');
im1=conv2(h,double(im));
subplot(2,1,1);
imshow(im);
subplot(2,1,2);
imshow(im1,[]);
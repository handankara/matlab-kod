a = imread('image.jpg');

b = rgb2gray(a);
e = graythresh(a);
c = im2bw(a, e);
d = imadjust(a, [0 1], [1 0]);

subplot(2, 2, 1), subimage(a);   %orjinal resim
subplot(2, 2, 2), subimage(b);   %gri resim
subplot(2, 2, 3), subimage(c);   %siyah beyaz resim
subplot(2, 2, 4), subimage(d);   %negatif resim


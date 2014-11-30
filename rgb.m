a = imread('image.jpg');
d = a;
c = a;
b = a;

b(:, :, 2) = 0;
b(:, :, 3) = 0;
c(:, :, 1) = 0;
c(:, :, 3) = 0;
d(:, :, 1) = 0;
d(:, :, 2) = 0;

subplot(2, 2, 1), subimage(a);  title('Orjinal Hali');
subplot(2, 2, 2), subimage(b);  title('Kirmizi Bilesen');
subplot(2, 2, 3), subimage(c);  title('Yesil Bilesen');
subplot(2, 2, 4), subimage(d);  title('Mavi Bilesen');

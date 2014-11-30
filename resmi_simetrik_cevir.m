img = imread('image.jpg');

b = rgb2gray(img);        % rgb resmi gri resme çevir.
f = b(end:-1:1,:);
g = b(:,end:-1:1);

subplot(1, 3, 1), subimage(b);
subplot(1, 3, 2), subimage(g);
subplot(1, 3, 3), subimage(f);

imRescoled = imresize(img, 0.75 ,'bil');
imshow(imRescoled)

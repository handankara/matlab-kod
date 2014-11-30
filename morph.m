BW = imread('circles.png');
imshow(BW);
BW2 = bwmorph(BW, 'remove');     % morph iki resmin ara değerini bulup yeni resim üretmedir.
figure                           % resimde sadece çizim görünür.
imshow(BW2)
BW3 = bwmorph(BW, 'skel', Inf);
figure
imshow(BW3)

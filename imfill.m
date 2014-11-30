img = imread('coins.png');          %resmi oku.
img_1 = im2bw(img);                 %resmi siyah-beyaz yap.
img_2 = imfill(img_1, 'holes');     %imfill() ile yuvarlak nesnelerin içindeki siyah noktaları yok eder.
figure, imshow(img_1)               % bw resmi göster.
figure, imshow(img_2)               %yuvarlak nesnelerindeki siyah noktaları temizlenmiş resmi göster.

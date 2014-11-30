bwOriginal = imread('text.png');                     %orjinal resimi oku.
figure, imshow(bwOriginal)                           %orjinal resmi göster.

%bwareaopen() ile orjinal resimdeki verilen pikselin altında piksel'e sahip olanlar kaldırılır. 
%50 sayısı piksel'i gösterir değiştirilebilir.

bwAreaOpen_50pixels = bwareaopen(bwOriginal, 50);   
figure, imshow(bwAreaOpen_50pixels)                  %yeni resmi göster.

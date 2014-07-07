xo=0;
adim_sayisi=1;
Ek=1e-3;
x1=xo-(fonksiyon(xo)/fturev1(xo));
Et=(x1-xo)/x1;
if abs(Et)==Ek
   fprintf('Denklemin Koku:%d\n',x1);
end

if abs(Et)>Ek
    disp('Hesaplama baslasin.');
end
fprintf('adim sayisi       x0        x1        Et\n');
fprintf('............................................\n');
while abs(Et)>Ek
    xo=x1;
    x1=xo-(fonksiyon(xo)/fturev1(x1));
    Et=(x1-xo)/x1;
    adim_sayisi=adim_sayisi+1;
    bagil_hata=abs((xo-x1)/2);
    fprintf('%4.1d %19.7f %10.7f %10.7f\n',adim_sayisi,xo,x1,bagil_hata);
end
   if abs(Et)<Ek
      break
   end
    
    
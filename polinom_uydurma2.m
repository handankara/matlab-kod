function polinom_uydurma    %2x2 lik matris için uydurma.

%f(x) = c0 + c1*x);   fonksiyonumuz.

N = input('Adim Sayisini Giriniz:');
fprintf('\n'); 
x = input('x degerlerini giriniz:\n');
fprintf('\n'); 
y = input('y degerlerini giriniz:\n');
fprintf('\n');         

x1 = 0;
x2 = 0;
y1 = 0;
xy = 0;
referans_y = 0;
fx = 0;
fy = 0;

 for i = 1:N
     
     x1 = x1 + x(1,i);                       %x1 1 den N 'e xi deðerlerinin toplamýdýr.
     x2 = x2 + x(1,i)^2;                     %x2  1 den N 'e xi^2  deðerlerinin toplamýdýr.
     y1 = y1+y(1,i);                         %y1  1 den N 'e yi deðerlerinin toplamýdýr.
     xy = xy + x(1,i)*y(1,i);                %xy  1 den N 'e xi*yi deðerlerinin toplamýdýr.
     referans_y = referans_y + (1/N)*y(1,i); 
 end
 

 fprintf('Denklemin matris halde gösterimi:\n');
 fprintf('\n'); 
 
 fprintf('[%d     %d][c0] = [%d]\n',N,x1,y1); 
 fprintf('[%d     %d][c1]  [%d]\n',x1,x2,xy);
 fprintf('\n');

 c1 =((N*xy)-(x1*y1))/(N*x2-x1^2);
 c0 =(y1-(x1*c1))/N;
  
 for i = 1:N
     
     fx = fx + (((c0+c1*x(1,i))-referans_y)^2);
     fy = fy+(y(1,i)-referans_y)^2;
    
     
 end

 r = sqrt(fx/fy);         %r regrasyon katsayýsýdýr.
 
 fprintf('Sonuçlarýmýz:\n');
 fprintf('\n');
 fprintf('co =%d\n',c0);
 fprintf('c1 =%d\n',c1);
 fprintf('r=%d\n',r);

end

%ÇIKTI

%Adim Sayisini Giriniz:12

%x degerlerini giriniz:
%[-10,-5,-2,0,8,12,19,25,30,33,36,40]

%y degerlerini giriniz:
%[100,88,75,70,73,77,82,88,85,81,75,78]

%Denklemin matris halde gösterimi:

%[12     186][c0] = [972]
%[186     6208][c1]  [14719]

%co =8.261759e+001
%c1 =-1.043609e-001
%r=2.185743e-001
%>>


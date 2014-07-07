function Cramer
fprintf('A.X=B formatindaki soruyu cramer yontemiyle cozunuz:\n');
M=input('3x3 luk A matrisi girin: ');
%A matrisiniz:
    % 3     4    -5
    %-2    -5     7
    %-7     2    -3

    fprintf('\nmatrisiniz:\n');
disp(M);

S=input('B matrisini girin: ');
fprintf('\nB matrisi:\n');
disp(S);

detA=(M(1,1)*M(2,2)*M(3,3)+M(2,1)*M(3,2)*M(1,3)+M(3,1)*M(1,2)*M(2,3))-(M(1,3)*M(2,2)*M(3,1)+M(2,3)*M(3,2)*M(1,1)+M(3,3)*M(1,2)*M(2,1));
fprintf ('determinant= %d\n',detA);
if detA~=0
   
detA1=(S(1,1)*M(2,2)*M(3,3)+S(2,1)*M(3,2)*M(1,3)+S(3,1)*M(1,2)*M(2,3))-(M(1,3)*M(2,2)*S(3,1)+M(2,3)*M(3,2)*S(1,1)+M(3,3)*M(1,2)*S(2,1));
fprintf ('determinant1= %d\n',detA1) ;

x1=detA1/detA ;
detA2=(M(1,1)*S(2,1)*M(3,3)+M(2,1)*S(3,1)*M(1,3)+M(3,1)*S(1,1)*M(2,3))-(M(1,3)*S(2,1)*M(3,1)+M(2,3)*S(3,1)*M(1,1)+M(3,3)*S(1,1)*M(2,1));
fprintf ('determinant2= %d\n',detA2);

x2=detA2/detA;

detA3=(M(1,1)*M(2,2)*S(3,1)+M(2,1)*M(3,2)*S(1,1)+M(3,1)*M(1,2)*S(2,1))-(S(1,1)*M(2,2)*M(3,1)+S(2,1)*M(3,2)*M(1,1)+S(3,1)*M(1,2)*M(2,1));
fprintf ('determinant3= %d\n',detA3) ;

x3=detA3/detA ;
disp('Sonuclarimiz:');
fprintf('x1=%d\n',x1);
fprintf('x2= %d\n',x2);
fprintf('x3= %d\n',x3);

end
if detA==0
    disp('Determinant sýfýr olduðu için sonuc tanýmsýz olur.');
end
end


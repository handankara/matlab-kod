function M

fprintf('A.X=B formatindaki matrisin tersini hesaplayiniz.\n');
M=input('3x3 luk bir matrisi girin: ');
fprintf('\nmatrisiniz:\n');
disp(M);

detM=M(1,1)*M(2,2)*M(3,3)+M(2,1)*M(3,2)*M(1,3)+M(3,1)*M(1,2)*M(2,3)-(M(1,3)*M(2,2)*M(3,1)+M(2,3)*M(3,2)*M(1,1)+M(3,3)*M(1,2)*M(2,1));
fprintf ('determinant= %d\n',detM) ;
if detM ~=0     %determinant sýfýrdan farklý olduðu sürece.
   
A(1,1)=(+1)*(M(2,2)*M(3,3)-M(3,2)*M(2,3));
A(1,2)=(-1)*(M(2,1)*M(3,3)-M(2,3)*M(3,1));
A(1,3)=(+1)*(M(2,1)*M(3,2)-M(2,2)*M(3,1));
A(2,1)=(-1)*(M(1,2)*M(3,3)-M(1,3)*M(3,2));
A(2,2)=(+1)*(M(1,1)*M(3,3)-M(1,3)*M(3,1));
A(2,3)=(-1)*(M(1,1)*M(3,2)-M(1,2)*M(3,1));
A(3,1)=(+1)*(M(1,2)*M(2,3)-M(1,3)*M(2,2));
A(3,2)=(-1)*(M(1,1)*M(2,3)-M(1,3)*M(2,1));
A(3,3)=(+1)*(M(1,1)*M(2,2)-M(1,2)*M(2,1));

Ek=A.' ;  % matrisimizin transpozunu aldýk.
fprintf('matrisinizin Ek matrisi:\n');

disp(Ek);

for i=1:3
    for j=1:3
        TersA(i,j)=Ek(i,j)/detM ;
    end
end

fprintf ('matrisinizin tersi:\n');
disp(TersA);
end
if detM==0
    fprintf('determinant sýfýr olduðu için matrisin tersi hesaplanamaz!');
end
end
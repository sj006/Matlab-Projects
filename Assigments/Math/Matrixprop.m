A = [ 1 2 0; 0 2 3; 1 1 1];
display("Size of A:")
display( size(A));
display("Rank of A:" + rank(A))
display("Determinant:"+det(A))
if det(A) ~= 0
    display("Inverse of matrix:")
    display(inv(A))
end

[V,D] = eig(A);

display("V: " + V)
display("D: " + D)
display("Eig Values:")
display(D(1,1))
display(D(2,2))
display(D(3,3))



B = [1 2 3 4; 0 1 3 1; 2 3 1 4];
C = [1 2 3 0 1; 2 3 0 1 4; 3 1 2 0 1; -1 -2 0 1 3; 2 3 4 -1 -2];

display('Rank of C:'+rank(C))
display('Det of C:'+det(C))
display(size(C))
[q,e] = eig(C);

display(e)
display(q)

display('Transpose:')
display(C')




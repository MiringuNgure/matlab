N = input ('Size of the matrix is: ');
p = input ('The percentage in decimals:');
A = createMatrix(N,p);
h = 2;
while true
    B = zeros(N+2);
    for i = 2 : N+1
        for j = 2: N+1
            Live = A(i-1,j)+ A (i,j-1) + A (i+1, j)+ A (i, j+1) + A(i+1, j+1)+ A(i-1, j-1)+ A(i-1,j+1)+ A (i+1, j-1);
            if A(i,j) == 1 && (Live == 2|| Live == 3) 
                B(i,j) = 1;
            elseif A(i,j) == 0 && Live == 3
                B(i,j) = 1;
            else
                B(i,j) = 0;
            end
        end
    end
    A=B;
    spy(A);
    drawnow;
    pause(1);
end

inp=input("Enter the elements of matrix A")
disp(inp,"The coefficients of matrix A")
B=input("Enter the elements of matrix B")
disp(B,"The coefficients of matrix B")

for l=1:3
    L(l,l)=1
end

for i=1:3
    for j=1:3
        m=0
        if j>=i
            for k=1:i-1
                m=m+L(i,k)*U(k,j)
            end
            U(i,j)=inp(i,j)-m;
        else
            for k=1:j-1
                m=m+L(i,k)*U(k,j)
            end
            L(i,j)=(inp(i,j)-m)/U(j,j)
        end
    end
end

disp(U,"Upper triangular matrix")
disp(L,"Lower triangular matrix")

x=U\c
c=L\B

disp(x,"solution of the equations are")

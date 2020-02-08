A=input("Enter the elements of matrix A")
disp(A,"The coefficients of matrix A")
B=input("Enter the elements of matrix B")
disp(B,"The coefficients of matrix B")
a=[A B]//Augmented matrix
n=3

for i=2:n
    for j=2:n+1
        a(i,j)=a(i,j)-a(1,j)*a(i,1)/a(1,1)
    end
    a(i,1)=0
end

for i=3:n
    for j=3:n+1
        a(i,j)=a(i,j)-a(2,j)*a(i,2)/a(2,2)
    end
    a(i,2)=0
end

x(n)=a(n,n+1)/a(n,n)
for i=n-1:-1:1
    s=0
    for k=i+1:n
        s=s+a(i,k)*x(k)
    end
    x(i)=(a(i,n+1)-s)/a(i,i)
end

disp(x(3),x(2),x(1),"x,y,z are equal to")
disp(a(1,1),a(2,2),a(3,3),"The Pivots")




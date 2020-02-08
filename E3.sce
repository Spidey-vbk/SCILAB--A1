inp=input("Enter the elements of matrix A")
disp(inp,"The coefficients of matrix A")
n=length(inp(1,:))
augmented=[inp,eye(n,n)]

for j=1:n-1
    for i=j+1:n
        augmented(i,j:2*n)=augmented(i,j:2*n)-augmented(i,j)/augmented(j,j)*augmented(j,j:2*n)
    end 
end

for j=n:-1:2
    augmented(1:j-1,:)=augmented(1:j-1,:)-augmented(1:j-1,j)/augmented(j,j)*augmented(j,:)
end

for j=1:n
    augmented(j,:)=augmented(j,:)/augmented(j,j)
end
B=augmented(:,n+1:2*n)
disp(B,"The inverse of A")

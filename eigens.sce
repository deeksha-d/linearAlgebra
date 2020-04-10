clc;close;clear;
function[x,lam]=eigenvectors(A)
    disp(A, 'A = ')
    lam = poly(0,'lam')
    lam = lam
    cMat = A - lam*eye(3,3)
    disp(cMat,'the characteristic matrix is')
    cPoly = poly(A,'lam')
    disp(cPoly,'the characteristic polynomial is')
    lam=spec(A)
    disp(lam,'the eigen values of A are')
    
    [n,m]=size(A);
    lam=spec(A)';
    x=[];
    for k=1:3
        B=A-lam(k)*eye(3,3);
        C=B(1:n-1,1:n-1)
        b=-B(1:n-1,n);
        y=C\b;
        y=[y;1];
        y=y/norm(y);
        x=[x y];
    end

endfunction

function main()
    A=[0,0,0;0,0,0;0,0,0]
    A(1,1)=input("input a11: ")
    A(1,2)=input("input a12: ")
    A(1,3)=input("input a13: ")
    A(2,1)=input("input a21: ")
    A(2,2)=input("input a22: ")
    A(2,3)=input("input a23: ")
    A(3,1)=input("input a31: ")
    A(3,2)=input("input a32: ")
    A(3,3)=input("input a33: ")
    [x,lam] = eigenvectors(A)
    disp(x,'the eigen vectors of A are');
    
endfunction
main();



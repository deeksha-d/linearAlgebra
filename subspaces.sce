clear;close;clc;
function[a]=subspace(a)
    disp(a);
    [m,n] = size(a);
    [v,pivot] = rref(a);
    disp(rref(a));
    disp(v);
    r = length(pivot);
    disp(r, 'rank = ');
    colspace = a(:,pivot);
    disp(colspace, 'column space = ',);
    rowspace = v(1:r, :)';
    disp(rowspace, 'row space = ');
    nulspace = kernel(a);
    disp(nulspace, 'null space = ');
    leftnulspace = kernel(a');
    disp(leftnulspace, 'left null space');
    
    
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
    [a]=subspace(A)
    
endfunction
main();


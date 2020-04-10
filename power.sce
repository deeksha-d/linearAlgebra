clear;close;clc;
function[a]=rayleigh(A)
    disp(A,'the given matrix is')
    // initial vector
    u0=[1 1 1]';
    disp(u0, 'the initial vector is')
    v=A*u0;
    a=max(u0);
    disp(a,'first approximation to eigen value is');
    while abs(max(v)-a)>0.002
        disp(v,'current eigen vector is')
        a=max(v);
        disp(a,'current eigen value is')
        u0=v/max(v);
        v=A*u0;
    end
    format('v',4);
    disp(max(v),'The largest eigen value is:')
    format('v',5);
    disp(u0,'The corresponding eigen vector is:') 

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
    [a]=rayleigh(A)
    
endfunction
main();


clc;clear;close;
function[a]=gaussElim(a)
    disp(a)
    if a(1,1)~=0 then
        a(2,:) = a(2,:)-(a(2,1)/a(1,1))*a(1,:)
        a(3,:) = a(3,:)-(a(3,1)/a(1,1))*a(1,:)
        a(1,:) = a(1,:)/a(1,1)
    end
    
    if a(2,2)~=0 then
        a(3,:) = a(3,:)-(a(3,2)/a(2,2))*a(2,:)
        a(2,:) = a(2,:)/a(2,2)
    end
    
    disp(a)
    for i=1:3
        for j=1:3
            if (a(i,j)<>0)
                disp('is a pivot column',j,'column')
                break
            end
        end
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
    [a]=gaussElim(A)

endfunction
main();


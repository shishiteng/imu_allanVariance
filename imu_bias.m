%x1^2+x2=7;
%x2^3+exp(x1)=100;
%�Ͷ���һ������
%func1=@(x)[x(1)^2+x(2)-7;x(2)^3+exp(x(1))-100];
%x=fsolve(func1,[1;1])

acc = [
0,    0,    0,  157,  -80, 4156;
0,    0,    0, -323,   26, -4106;
0,    0,    0, 3427,  399, -2321;
0,    0,    0, -3709,  -22, -1555;
0,    0,    0, -1360, -3819, -130;
0,    0,    0,  406, 4069,  422]

%(x-bx)^2 + (y-by)^2 + (z-bz)^2 = g^2
func=@(x)[
    (acc(1,4) -x(1))^2 + (acc(1,5) -x(2))^2 + (acc(1,6) -x(3))^2 - x(4)^2;
    (acc(2,4) -x(1))^2 + (acc(2,5) -x(2))^2 + (acc(2,6) -x(3))^2 - x(4)^2;
    (acc(3,4) -x(1))^2 + (acc(3,5) -x(2))^2 + (acc(3,6) -x(3))^2 - x(4)^2;
    (acc(4,4) -x(1))^2 + (acc(4,5) -x(2))^2 + (acc(4,6) -x(3))^2 - x(4)^2;
    (acc(5,4) -x(1))^2 + (acc(5,5) -x(2))^2 + (acc(5,6) -x(3))^2 - x(4)^2;
    (acc(6,4) -x(1))^2 + (acc(6,5) -x(2))^2 + (acc(6,6) -x(3))^2 - x(4)^2;
]
x=fsolve(func,[0,0,0,4000])
%x=fsolve(func,[0,0,0,9.8])
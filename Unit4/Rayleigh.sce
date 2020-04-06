clear; 
clc;

mat = input("Enter a matrix:: ")
disp(mat,'mat = ')

//initial vector
u0 = [1 1 1]';
disp(u0,'The initial vector is')
v = mat*u0
a1 = max(u0)
disp(mat,'First approximation to eigen value is ')
while abs(max(v)-a1)>0.002
    disp(v,'current eigen vector is')
    a1 = max(v)
    disp(a1,'Current eigen value is')
    u0 = v/max(v)
    v = mat*u0
end
format('v',4)
disp(max(v),'The largest eigen value is: ')
format('v',5)
disp(u0,'The corresponding eigen vector is: ')

//1201800157

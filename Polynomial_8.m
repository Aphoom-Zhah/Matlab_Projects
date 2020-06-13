clc, close all

%Matrix creation
Number = input('Matrix size = ');
Matrix = rand(Number);
Eigenvalues = eig(Matrix);
%Polynomial
P = poly(Eigenvalues);
P_test = poly(Matrix);
%Check
if P == P_test
    disp('Ok');
end
%
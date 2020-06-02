%����� ������� �����, ��������� ������ �� �������, ���������� ��� �����:
clc, close all

%1
%���� Numerator(���������), Denominator(�����������)
Numerator = [1, 0, 0];
Denominator_1 = [1, -1];
Denominator_2 = [1, 2];
Denominator_3 = [1, 3];
Denominator_4 = conv(Denominator_1, Denominator_2);
Denominator = conv(Denominator_4, Denominator_3);
%
%���������� � ����� ������
[r,p,K] = residue(Numerator,Denominator);
fprintf('Solution of #1:\n');
disp('r is:'); disp(r);
disp('p is:'); disp(p);
disp('K is:'); disp(K);
fprintf('\n');
%
%

%3
%���� Numerator(���������), Denominator(�����������)
Numerator = [1, 3];
Denominator_1 = [1, -1];
Denominator_2 = [1, 0, 1];
Denominator = conv(Denominator_1, Denominator_2);
%
%���������� � ����� ������
[r,p,K] = residue(Numerator,Denominator);
fprintf('Solution of #2:\n');
disp('r is:'); disp(r);
disp('p is:'); disp(p);
disp('K is:'); disp(K);
fprintf('\n');
%
%

%4
%���� Numerator(���������), Denominator(�����������)
Numerator = [1, 0, 0];
Denominator = [1, 0, 0, 0, -1];
%
%���������� � ����� ������
[r,p,K] = residue(Numerator,Denominator);
fprintf('Solution of #4:\n');
disp('r is:'); disp(r);
disp('p is:'); disp(p);
disp('K is:'); disp(K);
fprintf('\n');
%
%
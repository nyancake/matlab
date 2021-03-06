rx = @ (x) 5 * sin(x).* cos(x)./x;%������ ������
ry = @ (x) 5 * sin(x).* sin(x)./x;
f = @ (x) 0.5 + 0.5 * cos(x);%������ ������
g = @ (x) 2 + 0.3 * sin(x);

ax = @ (x) 1; %����� � ������ ��� ����������� ������� ��� ���� ����� ������������ ��� ��� �� �� ���������
ay = @ (x) 1; %��� � ��� ������ ���������� ����� �������
fx = [];
fy = [];
gx = [];
gy = [];
for i = 0:0.01:2*pi
    fx = [fx rx(i)];
    fy = [fy ry(i)]; 
    gx = [gx f(i)];
    gy = [gy g(i)];
end
hold on;
plot(fx, fy);
plot(gx, gy);

disp('����������� ���������� ����� ������ ������ � ������: ');
distcc(rx, ry, ax, ay);
disp('����������� ���������� ����� �������� � ������: ');
distcc(f, g, ax, ay);
disp('����������� ���������� ����� �������: ');
distcc(rx, ry, f, g);


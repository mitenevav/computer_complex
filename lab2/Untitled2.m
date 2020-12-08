x=infsup(-5,5)
y=infsup(-5,5)
z = globopt0([x,y])

dx = []
dy = []

for i = 1:80;
    xl = z(i).Box(1).inf
    xr = z(i).Box(1).sup
    yl = z(i).Box(2).inf
    yr = z(i).Box(2).sup
    rectangle('Position',[xl yl xr-xl yr-yl])
    
    dx(i) = (z(i).Box(1).sup - z(i).Box(1).inf)*(z(i).Box(2).sup - z(i).Box(2).inf);
end

figure()
plot(dx)
grid on
xlabel('iter')
ylabel('area')


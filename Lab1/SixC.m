%considering two row vectors

f = [1, 4, -2, (4-2i)]
g = [-3, (5 + 7i), 6, 2]
disp(f);
disp(g);

%a.
printf('Addition of f and g = \n');
r1= f + g;
disp(r1);

%b.
printf('Dot product of f and g = \n');
r2 = dot(f, g);
disp(r2);



%c.
printf('Mean r3 = Sum(f(k))/ 4 where k :1 to 4 = \n');

summation = 0;
for k = 1 : 4
  summation += f(k);
endfor

meanVal = summation/length(f);
disp(meanVal);

%d.
printf('Average Energy of function f = \n');
meanSquareValue = meansq(f);
averageEngergy = meanSquareValue / 4;
disp(4);







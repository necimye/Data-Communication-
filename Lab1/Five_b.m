x = [2, 5; 4, 6];
y = [1, 5; 6, -2];


outer_count = 1;

while (outer_count <= 2)
  inner_count = 1;
  while (inner_count <= 2)
      z(outer_count, inner_count) = x(outer_count, inner_count) + y(outer_count, inner_count);
      inner_count++;
  endwhile
  outer_count++;
endwhile

disp(z);
  
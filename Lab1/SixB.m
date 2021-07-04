x = [2, 5; 4, 6];
y = [1, 5; 6, -2];
printf(' x = \n');
disp(x);

printf('y = \n');
disp(y);

%a. Find the sum of x and y


printf('sum = \n');
disp(x + y);

%b. find the difference between x and y
printf('difference = \n');
disp(x -y);

%c. Find the product between x and y

printf('product = \n');
disp(x * y);

%d. Find the transpose of x

printf('transpose of x = \n');
disp(transpose(x));

%e. Calculate the inverse of x
printf('inverse of x = \n');
disp(inverse(x));

%f. Perform an element by element multiplication  and division between x and y

printf('Element wise multiplication of x and y = \n');
disp(x.*y);
%g
printf('Element wise division of x and y = \n');
disp(x./y);
%h.
printf('Square of each element of x = \n');
disp(x.^2);
%i.
printf('Result after each element in x to the power by its corresponding element in y =\n' );
disp(x.^y);



##!" #$%&'($%)*$+,-.'/$%)012,32)14,#56758
##A) Consider the following function:
##
##! ! ! !!!!"! !"# ! ! ! ! !"
##
##Note: K can only be an integer value
##Write down MATLAB code and print the result for the following operations:
##a) Calculate the maximum value in (f)
##b) Calculate the minimum value in (f)
##c) Sum all the entries in (f)
##d) Find the product of all the entries in (f)
##e) Find the mean of all the entries in (f)
##f) Find the variance of all the entries in (f)
##g) Find the dimension of (f)
##h) Find the length of (f)


k = [1: 30]

f = zeros(1, 30);

for i = 1: length(k)
  f(i) = exp(0.05 *k(i));
 endfor
 
 maximum = max(f);
 minimum = min(f);
 fprintf('maximum = %f\n', maximum);
 fprintf('minimum = %f\n', minimum);
 
 
 
 sum = 0;
 for i = 1: length(k)
   sum += f(i);
 endfor

 fprintf('Summation of f = %f\n', sum);
 
 
 
 
 prod = 1;
 for i = 1 : length(k)
   prod *= f(i);
 endfor
 
 fprintf('Product = %f\n', prod);
 
 

 mean = sum / length(k);
 
 fprintf('mean of data = %f\n', mean);
 
 
 variance = var(f);
 
 fprintf('variance = %f\n', variance);
 
 
 dimension = size(f);
 
 len = length(f);
 
 printf('dimension\n');
 disp(dimension);
 
 fprintf('length = %d\n', len);
 
 
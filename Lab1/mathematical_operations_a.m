
## Implement the function
## f[k] = e^(0.005 * k)

function [res] = f(k)
  temp = 0.05 * k
  res = exp(temp)
endfunction

x = [1:30]'
fx = f(x);

## max of function
display(max(fx))

## min in f
display(min(fx))

## sum of al entries
display(sum(fx))

## product of all entries
product = 1
for j = 1:30
  product *= fx(j)
end
display(product)

## mean of all entries
display(mean(fx))

## variance of all entries
display(var(fx))

## dimension of fx
display(size(fx))

## length of fx
display(length(fx))

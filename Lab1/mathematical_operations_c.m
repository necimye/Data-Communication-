
f = [1 4 -2 4-2i];
g = [-3 5+7i 6 2]

## displaying sum
display(f+g)

## displaying dot product
display(f * g')

## mean of f
display(mean(f))

## mean of g
display(mean(g))

## average energy of f
f_abs = abs(f)
f_abs_sq = f_abs .^ 2
display(mean(f_abs_sq))

## average energy of g
g_abs = abs(g)
g_abs_sq = g_abs .^ 2
display(mean(g_abs_sq))

reset
clear

### Constants (Variables)
alpha = 0.1711628  
beta = 18.35441 

### Function
f(x) = 1.0/x
g(x) = erfc(alpha*x)/x
h(x) = 0.0

LW = 2  ### line width

array TITLE[3]  ### array
TITLE[1] = "1/r"
TITLE[2] = "erfc(alpha*r)/r"
TITLE[3] = "0"

print "alpha = ", alpha
print "beta = ", beta

set xrange [0:*]
set yrange [-0.1:*]
set xlabel "x" font "Times, 16"
set xlabel "y" font "Times, 16"
set arrow from beta,-0.1 to beta,10.0 nohead lw LW  ### Verticle line

p \
f(x) lw LW t TITLE[1], \
g(x) lw LW t TITLE[2], \
h(x) lw LW t TITLE[3]


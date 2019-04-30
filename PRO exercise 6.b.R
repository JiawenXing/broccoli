############################################
# this code is created for PRO exercise 6.b
# author: jiawen
# created date: 20190430
# latest update date: 20190430
############################################
library(Rdonlp2)
m <- c(62, 50, 40, 42, 52.6, 55.6, 60)
n <- c(3100, 1500, 1400, 1510, 2000, 2500, 3300)

for (i in 1:7) {
        p = c(1, 1)
        par.l = c(0, 0); par.u = c(+Inf, 1500)
        fn = function(x){
                 -x[1]*x[2]
                }
        A = matrix(c(m[i], 1), 1, byrow=TRUE)
        lin.l = c(0); lin.u = c(n[i])

        print(donlp2(p,fn,par.u,par.l,A,lin.l=lin.l,lin.u=lin.u))
}

# output
# $par
# [1]   25.80645 1500.00000
# $par
# [1]  15 750
# $par
# [1]  17.5 700.0
# $par
# [1]  17.97619 755.00000
# $par
# [1]   19.01141 1000.00000
# $par
# [1]   22.48202 1249.99995
# $par
# [1]   30 1500

library(lpSolveAPI)
lprec<-make.lp(0,8)
#to st objective function
lp.control(lprec,sense='min')
set.objfn(lprec,c(622,614,630,0,641,645,649,0))
# Addding constraints
add.constraint(lprec,rep(1,4),"=",100,indices =c(1,2,3,4))
add.constraint(lprec,rep(1,4),"=",120,indices =c(5,6,7,8))
add.constraint(lprec,rep(1,2),"=",80,indices =c(1,5))
add.constraint(lprec,rep(1,2),"=",60,indices =c(2,6))
add.constraint(lprec,rep(1,2),"=",70,indices =c(3,7))
add.constraint(lprec,rep(1,2),"=",10,indices=c(4,8))
solve(lprec)
# objective value
get.objective(lprec)
get.constraints(lprec)
get.variables(lprec)

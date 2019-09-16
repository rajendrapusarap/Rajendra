library(lpSolveAPI)
 #make an lp object with 0 constraints and 9 decision variables
lprec<-make.lp(0,3)
#  Now creating the objective function. The default is a minimization problem. 
set.objfn(lprec,rep(c(420,360,300),3))
  # As the default is a minimization problem, we change the direction to set maximization
 lp.control(lprec,sense='max')
 # Add the three Plant constraints
 add.constraint(lprec, c(1,1,1,0,0,0,0,0,0), "<=", 750)
 add.constraint(lprec, c(0,0,0,1,1,1,0,0,0), "<=", 900)
 add.constraint(lprec, c(1,1,1,0,0,0,1,1,1), "<=", 450)
 add.constraint(lprec, c(20,15,12,0,0,0,0,0,0), "<=", 13000)
 add.constraint(lprec, c(0,0,0,20,15,12,0,0,0), "<=", 12000)
 add.constraint(lprec, c(20,15,12,0,0,0,20,15,12), "<=", 5000) 
 add.constraint(lprec, c(1,1,1,0,0,0,0,0,0), "<=", 900)
 add.constraint(lprec, c(0,0,0,1,1,1,0,0,0), "<=", 1200)
 add.constraint(lprec, c(0,0,00,0,0,1,1,1), "<=", 750)
 # Set bounds for variables.
 set.bounds(lprec, lower = c(1, 9), columns = c(1,9)) 
 set.bounds(lprec, lower = c(1, 20), columns = c(1,9)) 
 # To identify the variables and constraints, we can
 # set variable names and name the constraints
 RowNames <- c("Plant1", "Plant2", "Plant3")
 ColNames <- c("capacity 1", "capacity2","capacity3")
 dimnames(lprec) <- list(RowNames, ColNames)
 lprec
 # Finding the objective function
 get.objective(lprec)
 get.variables(lprec)
 get.constraints(lprec)
 
 
 
 
 
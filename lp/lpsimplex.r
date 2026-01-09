??lp
?lp
library(lpSolve)
obj =c(3,2,5)

const_mat=matrix(c(1,2,1,3,0,2,1,0,4),nrow=3,byrow=TRUE)
const_dir=c("<=","<=","<=")
const_rhs=c(430,460,420)
model=lp(direction='max', objective.in=obj,const.mat=const_mat,
         const.dir=const_dir,const.rhs=const_rhs)
model$solution
model$objval

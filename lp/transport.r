?lp
?lp.transport
1. Find Solution using Voggel's Approximation method, also find optimal solution using modi method,
D1	D2	D3	D4	Supply
S1	19	30	50	10	7
S2	70	30	40	60	9
S3	40	8	70	20	18
Demand	5	8	7	14	

costs = matrix(c(
  19, 30, 50, 10,
  70, 30, 40, 60,
  40,  8, 70, 20
), nrow = 3, byrow = TRUE)

supply = c(7, 9, 18)
demand = c(5, 8, 7, 14)

result = lp.transport(
  cost.mat = costs,
  direction = "min",
  row.signs = rep("=", 3),
  row.rhs = supply,
  col.signs = rep("=", 4),
  col.rhs = demand
)

result$solution
result$objval
//Q2
costs = matrix(c(
  5, 3, 6, 2,
  4, 7, 9, 1,
  3,  4, 7, 5
), nrow = 3, byrow = TRUE)
supply = c(19, 37, 34)
demand = c(16, 18, 31, 25)


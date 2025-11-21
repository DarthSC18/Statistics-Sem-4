xv=[]
yv=[]
x=[]
y=[]
n=int(input("Enter the number of values"))

for i in range(0,n):
    xv=int(input(f"Enter the {i} value for x"))
    yv=int(input(f"Enter the {i} value for y"))
    x.append(xv)
    y.append(yv)
    
print(x)
print(y)

x1=int(input("Enter the value for x, for which to find y"))
s=0

for i in range(0,n):
    a=1
    for j in range(0,n):
        if i!=j:
            a=a*((x1-x[j])/(x[i]-x[j]))
        
    s=s+a*y[i]
    
print(s)

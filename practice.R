a
print()
rm(i)
i=1
while (i<10) {
  print("*")
  i=i+1
}
rm(X)
X = matrix(c(1:9), nrow = 3,ncol = 3, byrow =T)
print(X)
print(X[2,3])
i= 1
j= 3
print(X[i,j])

i =1
j =3
for (i < 4){
  for (j<4){
    print(X[i,j])
    j=j+1
  }
  i = i+1
}
a = c(24,56,57)
p = a[2:length(a)]
a[2]=23
for(i in 1:length(p))
{
  a[i+2]=p[i]
}
cat("The new array is",a)

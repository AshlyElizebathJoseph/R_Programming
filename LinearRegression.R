n = data.frame(x=as.integer(readline(prompt="Enter the new height:")))
x = women$height
y = women$weight
n = n/2.54
relation = lm(y ~ x)
pred = predict(relation,n)
sprintf("The weight of the women with height %f is %f",n[1,1],pred)
print(ggplot(data=women,aes(x=x,y=y))+geom_point()+geom_smooth(method="lm")+geom_point(data=n,aes(x=x,y=pred),color="red",size=3)+labs(x="Women Height(inches)",y="Women Weight(pounds)")+geom_text(data=n,aes(x=x,y=pred,label=pred),vjust=-1))

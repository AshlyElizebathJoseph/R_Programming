data=c(12,15,14,10,16,13,14,18)
mean(data)
median(data)
var(data)
sd(data)
summary(data)

t.test(data)$conf.int #confidence interval
t.test(data,mu=14)#one sample test
group1=c(12,14,13,15)
group2=c(10,12,11,13)
t.test(group1,group2,var.equal=TRUE)#2 sample test

before=c(100,110,95,105)
after=c(102,108,97,107)
t.test(before,after,paired=TRUE)#paired t test

table=matrix(c(20,30,50,80),nrow=2)
chisq.test(table)#chi-squared test

group=factor(c('A','B','A','B','C','C'))
values=c(5,6,7,8,6,7)
anova_result=aov(values~group)
summary(anova_result)

#Non parametric test
wilcox.test(group1,group2)# wilcoxon Rank-sum Test
kruskal.test(values~group)# Kruskal-Wallis test
shapiro.test(values)#Shapiro-Wilk test to test normality of data
#F-test
x <- rnorm(50, mean=0)
y <- rnorm(50, mean=1)
gfg <- var.test(x, y)
print(gfg)




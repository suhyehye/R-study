#일표본 T-test
library(MASS)
str(cats)

#Bwt 변수에 대한 정규성 검정
shapiro.test(cats$Bwt)

#정규성을 만족하지 않음
#일표본 T-test
wilcox.test(cats$Bwt,mu=2.6, alternative = "two.sided")


#대응표본 T-test
data<-data.frame(before=c(7,3,4,5,2,1,6,6,5,4),
                 after = c(8,4,5,6,2,3,6,8,6,5))
data

t.test(data$before,data$after, alternative = 'less',paired = TRUE)


#독립표본 T-test
library(MASS)
data("cats")

#등분산 검정
var.test(Bwt~Sex,data = cats)

#등분산성을 만족하지 않음
t.test(Bwt~Sex,data=cats,alternative='two.sided',var.equal=FALSE)

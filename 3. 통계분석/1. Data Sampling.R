#단순 임의 추출
idx <- sample(1:nrow(iris),nrow(iris)*0.7,replace = FALSE)

training <- iris[idx,]
test <- iris[-idx,]

#데이터 확인
dim(iris)
dim(training)
dim(test)

#층화 추출
install.packages("sampling")
library(sampling)

sample<-strata(data=iris,c("Species"), size=c(25,10,10), method = 'srswor')

head(sample)
iris_sample <- getdata(iris,sample)

head(iris_sample)
table(iris_sample$Species)

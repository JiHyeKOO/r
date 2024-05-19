# 엑셀파일 불러오기 library(readxl)
ex1 = read_excel("/Users/rowena/knouR/athlete.xlsx", sheet=1)
names(ex1) <- c("id","sex","height","weight","haji","running50") #열이름 영문으로 변경
str(ex1) #확인

# (1) 성별로 신장, 체중, 하지장, 50m달리기의 기술통계량을 구하시오. (Min, 1stQu, Median, Mean, 3rdQu, Max)
ex2 <- ex1[ex1$sex=='1',]
stat2 <- matrix(c(min(ex2$height),min(ex2$weight),min(ex2$haji),min(ex2$running50),
            median(ex2$height),median(ex2$weight),median(ex2$haji),median(ex2$running50),
            mean(ex2$height),mean(ex2$weight),mean(ex2$haji),mean(ex2$running50),
            max(ex2$height),max(ex2$weight),max(ex2$haji),max(ex2$running50)),nrow=4)

dimnames(stat2)=list(c("min","median","mean","max"),c("height","weight","haji","running50"))
stat2 #성별 1의 신장, 체중, 하지장, 50m달리기의 기술통계량

ex3 <- ex1[ex1$sex=='2',]
stat3 <- matrix(c(min(ex3$height),min(ex3$weight),min(ex3$haji),min(ex3$running50),
            median(ex3$height),median(ex3$weight),median(ex3$haji),median(ex3$running50),
            mean(ex3$height),mean(ex3$weight),mean(ex3$haji),mean(ex3$running50),
            max(ex3$height),max(ex3$weight),max(ex3$haji),max(ex3$running50)),nrow=4)

dimnames(stat3)=list(c("min","median","mean","max"),c("height","weight","haji","running50"))
stat3 #성별 2의 신장, 체중, 하지장, 50m달리기의 기술통계량


# (2) 성별로 신장, 체중, 하지장, 50m달리기의 줄기-잎 그림과 히스토그램, 상자그림을 그리고 설명하시오.

# 줄기-잎 그림
stem(ex2$height)
stem(ex3$height)

stem(ex2$weight)
stem(ex3$weight)

stem(ex2$haji)
stem(ex3$haji)

stem(ex2$running50)
stem(ex3$running50)

#히스토그램
par(mfrow=c(4,2))
hist(ex2$height)
hist(ex3$height)

hist(ex2$weight)
hist(ex3$weight)

hist(ex2$haji)
hist(ex3$haji)

hist(ex2$running50)
hist(ex3$running50)

#상자그림
par(mfrow=c(2,2))
boxplot(height~sex, data = ex1)
title("Boxplot of height")
boxplot(weight~sex, data = ex1)
title("boxplot of weight")
boxplot(haji~sex, data = ex1)
title("boxplot of hajijang")
boxplot(running50~sex, data = ex1)
title("boxplot of 50m running")

# (3) 신장과 50m달리기의 산점도를 성별로 구분하여 그리고 설명하시오.
par(mfrow=c(1,1))
plot(ex1$height, ex1$running50, type = "n")
points(ex1$height[ex1$sex=="1"],ex1$running50[ex1$sex=="1"],pch=17, col=4)
points(ex1$height[ex1$sex=="2"],ex1$running50[ex1$sex=="2"],pch=19, col=2)
legend("bottomright",legend=c("1","2"),pch=c(17,19),col=c(4,2))
#legend=levels(ex1$sex) : 'legend' is of length 0   에러 발생으로 c("1","2")로 수정
title("Scatter plot of (height, 50m running) by sex")

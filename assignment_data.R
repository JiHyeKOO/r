# 2. 교재 3장내용
ex <- read.table("/Users/rowena/knouR/score.txt") #txt파일 자료 불러오기
head(ex) #데이터를 잘 읽었는지 확인
class(ex) #ex의 클래스 확인 > dataframe
ex2 <- unlist(ex) #데이터프레임 > 벡터 변환
class(ex2) #ex2의 클래스 확인

# (1)평균, 중앙값, 표본분산, 표본표준편차, 변동계수를 구하여 분포의 특징을 설명하시오
m1 <- mean(ex2) #평균
median(ex2) #중앙값
var(ex2,na.rm = FALSE) #표본분산
s1 <- sd(ex2,na.rm = FALSE) #표본표준편차
cv2 <- (s1/m1)*100 #변동계수
cv2

# (2)줄기-잎그림, 히스토그램, 상자그림을 그리고 분포의 특징을 설명하시오
stem(ex2) #줄기-잎그림
hist(ex2) #히스토그램
boxplot(ex2) #상자그림


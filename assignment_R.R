x <- c(2,0,2,4,3,5,1,6,0,1,6,4) #학번 벡터 정의

mean(x) #평균
var(x) #분산
median(x) #중앙값

x2 <- x #결측치 추가 벡터를 만들기 위해 원본 복사
x2[12] <- NA # x2벡터의 12번째 원소를 결측치로 추가
y <- x2 # 벡터 y로 정의
is.na(y[12]) # 변경된 12번째 원소가 결측치인지 확인

#na.rm=TRUE
mean(y,na.rm = TRUE)
var(y,na.rm=TRUE)
median(y,na.rm = TRUE)

y2 <- y #결측치를 중앙값으로 대체할 경우를 실험하기 위해 원본복사
y2[12] <- median(y2,na.rm=TRUE)
y2
mean(y2)
var(y2)
median(y2)


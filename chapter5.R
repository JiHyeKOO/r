# 1) 배열의 정의
# 배열을 생성하는데 사용되는 arry()함수를 이용하여 1에서 18까지의 원소를 갖는 3행 3열의 행렬 2개를 생성
arr <- array(1:24,c(3,3,2)) #c(행, 열, 행렬의 수)
dimnames(arr) <- list(paste("row",c(1:3)),
                      paste("col",c(1:3)),
                      paste("ar",c(1:2)))
arr

length(arr) #자료의 개수 확인
mode(arr)   #자료의 형태 확인
dim(arr)    #각 차원 벡터 크기
dimnames(arr) #각 차원 리스트의 이름

# array()함수를 이용하여 1에서 6까지의 자료로 1차원 및 2차원 배열을 생성해 보고 1에서 8까지 값으로 3차원 배열을 만들기
array(1:6)
array(1:6,c(2,3))
array(1:8,c(2,2,2))
# dim()함수를 이용하여 1~24까지 자료로 3행 4열 행렬 2개를 생성
arr <- c(1:24)
dim(arr) <- c(3,4,2)
arr

#배열의 연산

ary1 <- array(1:8, dim=c(2,2,2))
ary2 <- array(8:1, dim=c(2,2,2))
ary1
ary2
#component wise한 계산
ary1+ary2
ary1*ary2
ary1%*%ary2 # =sum(ary1*ary2) 행렬과 배열에서 쓰임이 다름. 주의
ary1[,,1] #배열원소의 추출 및 삭제
ary1[1,1,]
ary1[1,,-2] #'-' drop
ary1

#리스트
#서로 다른형태의 데이터로 구성된 객체를 의미
#length:자료의 개수, mode:자료의 형태, names:각 구성요소의 이름

a <- 1:10
b <- 11:15
klist <- list(vec1=a, vec2=b, descrip="example") #리스트 생성
length(klist) #자료의 개수 : 리스트 내의 원소의 개수가 아니라 성분(vec)의 개수
mode(klist) #자료형태
names(klist) #리스트 klist의 각 성분의 이름

#리스트를 생성하고 추출하는 방법은 행렬과 배열등과 유사
#특정한 성분을 추출하거나 성분 내의 특정 원소를 추출하려면 아래와 같은 연산자를 사용
#[[]]:성분추출
#성분의 이름이 부여되었다면 $연산자로 구분됨
#[]를 사용하여 성분내의 특정원소를 추출

list1 <- list("A",1:8)
list1
list1[[3]] <- list(c(T,F))
list1[[2]][9] <- 9
list1

list1[[3]] <- NULL
list1[[2]] <- list1[[2]][-9]
list1

a <- 1:10
b <- 11:15
nlist <- list(vec1=a, vec2=b, descrip="example")
nlist
nlist[[2]][5] # nlist[[2]] = vec2
nlist$vec2[c(2,3)]

#데이터프레임
#1) 형태가 일반화된 행렬
#2) 하나의 객체에 여러종류의 자료가 들어갈 수 있음
#3) 각 열은 각각 변수와 대응
#4) 분석이나 모형 설정에 적합한 자료 객체

#read.table() 외부 텍스트파일을 불러들임
#data.frame() 여러종류의 자료객체들을 서로 결합
#as.data.frame() 다른형태의 자료객체를 데이터프레임의 형태로 변환
#write.csv() / write.table( sep=",") 변수명 생성방식에 차이가 있으므로 유의

char1 <- rep(LETTERS[1:3],c(2,2,1))
char1
num1 <- rep(1:3,c(2,2,1))
num1
test1 <- data.frame(char1, num1)
test1

# cbind() 옆으로 합치기
# rbind() 아래로 합치기
# merge() 두 데이터 프레임을 공통된 값을 기준으로 묶는 함수


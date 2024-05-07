USArrests
str(USArrests)

USArrests["Indiana","UrbanPop"] #Indiana주의 UrbanPop값 추출

USArrests[-c(5:50),c(1:3)] #행부터 50행까지를 제외한 나머지 행의 1열에서 3열까지의 원소 추출

#데이터프레임 조건 추출
Ass <- subset(USArrests,Assault> 159) #Assault값이 159보다 큰 주의 데이터를 Ass에 저장
str(Ass) #Ass 데이터프레임 확인
mean(Ass$Murder) #Murder값의 평균
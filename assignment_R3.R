x <- c(82,65,73,72,91,83,66,71,80,55,79,96) #12개의 원소를 갖는 벡터구조 생성
grade <- c(rep(NA,length(x))) #12개의 NA값을 갖는 grade객체 생성

is.na(grade) #grade 객체 확인

for (i in seq_along(x)){ #x에 저장된 점수를 하나씩 읽어오기

  if (x[i]>=90) {        #점수 판별 if - ifelse - else
    grade[i] <- "A"      #grade에 등급 저장
  } else if (x[i] >=80) {
    grade[i] <- "B"
  } else if (x[i] >=70) {
    grade[i] <- "C"
  } else if (x[i] >=60) {
    grade[i] <- "D"
  } else {
    grade[i] <- "F"
  }

}

str(grade) #저장된 등급 확인

#(4) x와 grade를 병합하여 12행 2열 형태로 나란히 출력
x <- matrix(x, nrow = 12, ncol = 1) # x를 12행 1열로 변환
grade <- matrix(grade, nrow = 12, ncol = 1) #grade를 12행 1열로 변환
bnd <- cbind(x,grade) #벡터x, grade 열방향 병합
print(bnd) #결과확인

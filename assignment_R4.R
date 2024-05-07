# for반복문 1회
for (i in 1:5){
  print(rep(i+(i+1),i))
}

#while반복문 1회
j <- 1
while(j<=5){
  print(rep(j+(j+1),j))
  j <- j+1
}

#repeat반복문 1회
k <- 1
repeat{
  print(rep(k+(k+1),k))
  k <- k+1
  if (k>=6) break
}
import pandas as pd
import matplotlib.pyplot as plt
import stemgraphic as stem

pla = [198,119,174,235,134,192,124,241,158,176]
plb = [196,159,162,178,188,169,173,183,177,152]

df = pd.DataFrame({"playerA":pla, "playerB":plb})
print(df) #리스트 > 데이터 프레임 형변환 확인

# 각 선수의 점수에 대한 평균값과 중앙값, 표준편차를 구하시오.
stat_df = df.describe()
print(stat_df.loc[["mean","std","50%"],:])

# 각 선수의 점수에 대한 히스토그램, 줄기-잎 그림과 상자 그림을 그리시오.
#히스토그램
plt.hist(df)
plt.show()

#줄기잎그림
stem.stem_graphic(df['playerA'])
stem.stem_graphic(df['playerB'])


#상자그림
myplot=df.boxplot()
myplot.plot()
plt.show()

# 누가 더 우수한 선수라고 판단되는가? 그 이유를 설명하시오.

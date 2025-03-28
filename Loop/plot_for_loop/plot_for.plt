
#######################################################
### 初期化
#######################################################

Nmax = 100
array PlotFile[Nmax]
do for [i=1:Nmax] { PlotFile[i] = "No" }  ### No で初期化
array PlotTitle[Nmax]
do for [i=1:Nmax] { PlotTitle[i] = "No" }  ### No で初期化

#######################################################
### ユーザーが設定する箇所
#######################################################

LW = 3  ### plot の線の太さ

### plot するファイルの指定
PlotFile[1] = "./Linear_function.dat"
PlotFile[2] = "./Cubic_function.dat"
PlotFile[3] = "./Quadratic_function.dat"

### plot 時のタイトルの指定
PlotTitle[1] = "Linear function"
PlotTitle[2] = "Cubic function"
PlotTitle[3] = "Quadratic function"

#######################################################

### 実際に plot するファイル数の決定
PlotMax = 0
do for [i=1:Nmax]{
  if (PlotFile[i] ne "No"){
    PlotMax = PlotMax + 1
  } else {
    break
  }
}

### plot
set xlabel "x" font "Times, 16"  ### 軸ラベル
set ylabel "y" font "Times, 16"

set xtics 2.5  ### メモリ
set ytics 250

set key font "Times, 16"  ### 凡例

p for [i=1:PlotMax] PlotFile[i] u 1:2 w l lw LW t PlotTitle[i]


#######################################################
### 初期化
#######################################################

NMax = 30  ### ループの上限値

array FileName[NMax]  ### 出力ファイルパス
do for [i=1:NMax] { FileName[i] = "No" }  ### 初期化
array TitleName[NMax]  ### タイトル
do for [i=1:NMax] { TitleName[i] = "No" }  ### 初期化
ReadFile = "./data.dat"  ### 読み込むファイルのパス

#######################################################
### ユーザーが設定する箇所
#######################################################

FileName[0 + 1] = "Linear-function.png"
FileName[1 + 1] = "Quadratic-function.png"
FileName[2 + 1] = "Cubic-function.png"

TitleName[0 + 1] = "Linear function"
TitleName[1 + 1] = "Quadratic function"
TitleName[2 + 1] = "Cubic function"

#######################################################

do for [i = 1:NMax]{
  if (FileName[i] ne "No"){
    reset
    clear
    #set terminal "wxt"  ### ターミナルを wxt に変更
    unset terminal

    set title TitleName[i]
    set xlabel "x"  ### x 軸のラベル
    set ylabel "y"  ### y 軸のラベル

    p ReadFile every :::(i-1)::(i-1) u 1:2 w l notitle

    set terminal png
    set out FileName[i]
    rep

    pause -1 "Type Enter"
  }
}


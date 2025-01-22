### setting

DIR = "./"
TITLE = "(1)"
LW = 3  ### 線の太さ
PS = 3  ### ポイントの大きさ
PT = 2  ### ポイントの種類
Terminal = "xterm"  ### ターミナルの種類

array FileName[2]
FileName[1] = "errorbar.png"
FileName[2] = "smooth_option.png"

### plot # 0
set terminal Terminal
reset
clear
set xlabel "x" font "Times, 16"
set ylabel "y" font "Times, 16"
#set xrange [3:12]

p \
DIR."/data.dat" every :::0::0 u 1:2:3 w yerrorbars lw LW lc "#FF0000" t TITLE  ### error bar をつけてプロット

pause -1 "Type Enter"

set terminal png
set out FileName[1]
rep

pause -1 "Type Enter"

### plot # 1
set terminal Terminal
reset
clear
set xlabel "x" font "Times, 16"
set ylabel "y" font "Times, 16"
set xrange [3:12]

######################################################################
# * smooth オプション（省略形は s）を用いて、データ点のあいだを結ぶ線
#   のなめらかさを変える
# * 詳細は以下のサイトを参照
#    http://www.gnuplot.info/docs_4.2/node124.html
######################################################################

p \
DIR."/data.dat" every :::1::1 u 1:2 w l         lw LW t TITLE."-with line", \
DIR."/data.dat" every :::1::1 u 1:2 s unique    lw LW t TITLE."-smooth unique", \
DIR."/data.dat" every :::1::1 u 1:2 s csplines  lw LW t TITLE."-smooth csplines", \
DIR."/data.dat" every :::1::1 u 1:2 s acsplines lw LW t TITLE."-smooth acsplines", \
DIR."/data.dat" every :::1::1 u 1:2 s bezier    lw LW t TITLE."-smooth bezier", \
DIR."/data.dat" every :::1::1 u 1:2 s sbezier   lw LW t TITLE."-smooth sbezier", \
DIR."/data.dat" every :::1::1 u 1:2 not with points pointsize PS pt PT

pause -1 "Type Enter"

set terminal png
set out FileName[2]
rep

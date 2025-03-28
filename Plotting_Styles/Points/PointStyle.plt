NMaxStyle = 75
PS = 3  ### 点の大きさ
LW = 3  ### 線の太さ
LC = "red"  ### 色

### 点の種類
print "点の種類"
do for [i = 1:NMaxStyle]{
  reset 
  clear

  print "pointtype = ", i

  ### points
  #plot sin(x) with points pointtype i pointsize PS linecolor rgb LC
  p sin(x) w p pt i ps PS lc rgb LC

  ### linespoints
  #plot sin(x) with linespoints pointtype i pointsize PS linewidth LW linecolor rgb LC
  p sin(x) w lp pt i ps PS lw LW lc rgb LC

  pause -1 "Type Enter"
}

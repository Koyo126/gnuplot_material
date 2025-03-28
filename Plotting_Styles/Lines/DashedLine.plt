### 破線の種類

### 設定

NType = 8

set dashtype 1 (1, 5)  ### 線 1 単位, 空白 5 単位の繰り返し
set dt 2 (10, 10)
set dt 3 (30, 5, 10, 20)
set dt 4 (30, 5, 20, 10, 10, 15)
set dt 5 '.'  ### 短い実線
set dt 6 '-'  ### 中程度の長さの実線
set dt 7 '_'  ### 長い実線
set dt 8 "_.-."  ### スペースは空白

do for [i = 1:NType]{
  reset 
  clear

  #plot sin(x) with lines dashtype i
  p sin(x) w l dt i

  pause -1 "Type Enter"
}

reset
clear
set encoding iso_8859_1
set xlabel "x" font "Times, 16"  ### font = Times, fontsize = 16
set ylabel "y ({/Helvetica \305})" font "Times, 16"  ### {/Helvetica \305} = Angstrom
set zlabel "z" font "Times, 16"
splot "./data.dat" u 10:1:7 t "test"  ### x -> 10 th column, y -> 1st, z -> 7 th

pause -1 "Type Enter"  ### displays any text associated with the command and then waits a specified amount of time or until the carriage return is pressed

sp "./data.dat" u 10:2:8 t "test"  ### sp = splot
rep "./data.dat" u 10:3:9 t "test2"

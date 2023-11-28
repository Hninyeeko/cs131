set terminal pngcairo
set output 'line_graph1.png'

set xlabel "Year"
set ylabel "No. of Acquisitions"

set title "Acquisition trends over the years (2000 - 2021)"

set datafile separator ","

set key left top

set xtics rotate

set xrange [2000:2021]

plot 'fb_yearly.dat' using 2:1 w lp lw 2 title "Facebook", \
     'apple_yearly.dat' using 2:1 w lp lw 2 title "Apple", \
     'hp_yearly.dat' using 2:1 w lp lw 2 title "HP", \
     'redhat_yearly.dat' using 2:1 w lp lw 2 title "Red Hat", \
     'adobe_yearly.dat' using 2:1 w lp lw 2 title "Adobe", \
     'blackberry_yearly.dat' using 2:1 w lp lw 2 title "Blackberry", \
     'disney_yearly.dat' using 2:1 w lp lw 2 title "Disney"


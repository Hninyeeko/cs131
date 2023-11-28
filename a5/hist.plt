set boxwidth 0.4 relative
set style fill solid 1.0 
set style histogram 

set datafile separator ','

set terminal pngcairo
set out 'histogram.png'

set xtics rotate

set title "Mergers and Acquisitions by Big Tech Companies (1958 - 2021)"
set xlabel "Companies"
set ylabel "Number of Acquisitions"

plot 'acq_count.dat' using 2:xticlabels(1) with boxes lc rgb 'web-blue' title "Acquisitions completed"


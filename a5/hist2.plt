set boxwidth 0.4 relative
set style fill solid 1.0
set style histogram

set datafile separator ','

set terminal pngcairo
set out 'histogram2.png'

set xtics rotate

set title "Top 10 Business Use Cases (2000 - 2021)"
set xlabel "Use Cases"
set ylabel "Number of Use Cases"

plot 'usecases.dat' using 2:xticlabels(1) with boxes lc rgb 'gold' title "No. of use cases"



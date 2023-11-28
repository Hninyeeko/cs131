set terminal pngcairo
set output 'line_graph2.png'

set xlabel "Year"
set ylabel "No. of Acquisitions"

set title "Acquisition trends over the years (2000 - 2021)"

set datafile separator ","

set key left top

set xtics rotate

set xrange [2000:2021]

plot 'ibm_yearly.dat' using 2:1 w lp lw 2 title "IBM", \
     'twitter_yearly.dat' using 2:1 w lp lw 2 title "Twitter", \
     'amazon_yearly.dat' using 2:1 w lp lw 2 title "Amazon", \
     'citrix_yearly.dat' using 2:1 w lp lw 2 title "Citrix", \
     'ebay_yearly.dat' using 2:1 w lp lw 2 title "eBay", \
     'google_yearly.dat' using 2:1 w lp lw 2 title "Google", \
     'microsoft_yearly.dat' using 2:1 w lp lw 2 title "Microsoft"

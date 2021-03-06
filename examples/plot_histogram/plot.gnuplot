set term png size 600,600
set output './gnuplot.png'
set title "Histogram example"
set style data histograms
set xtics nomirror rotate by -45
$DATA << EOD
"1891-1900" 234081 181288 18167
"1901-1910" 668209 808511 41635
"1911-1920" 453649 442693 33746
"1921-1930" 32868  30680  15846
"1931-1940" 3563   7861   4817
"1941-1950" 24860  3469   12189
"1951-1960" 67106  36637  18575
"1961-1970" 20621  5401   9192
EOD
plot $DATA using 2:xtic(1) title 'Austria',\
     $DATA using 3:xtic(1) title 'Hungary',\
     $DATA using 4:xtic(1) title 'Belgium'
unset output
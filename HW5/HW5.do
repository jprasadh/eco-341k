log using Jai_Prasadh_HW5.log

* Jai Prasadh
* ECO 341K
* HW 5
* Written 2018-03-04
di "Executed $S_DATE at $S_TIME"

* Wooldridge C4.8
use 401ksubs.dta, clear

* (i)
sum if fsize == 1

* (ii)
reg nettfa inc age if fsize == 1

* (iv)
di abs((.8426563 - 1) / .0920169)
di 2 * ttail(2017 - 3, 1.7099435)

* (v)
reg nettfa inc if fsize == 1
quietly reg inc age if fsize == 1


save 401ksubs_modified.dta, replace

* Trejo Problem 2
use stocks.dta, clear

quietly reg ge ibm
quietly reg ge ibm dowjones

* (a)
* SLR:
di (.0605673) * invttail(96-2, 0.05)
di (.3443231 - .10061596) " to " (.3443231 + .10061596)
* MLR:
di (.0722013) * invttail(96-3, 0.05)
di (.1143767 - .11995551) " to " (.1143767 + .11995551)

reg ge ibm, level(90)
reg ge ibm dowjones, level(90)

* (b)
di abs((.7798454 - 1) / .1609576)
di 2 * ttail(96-3, 1.3677801)

save stocks_modified.dta, replace

log close

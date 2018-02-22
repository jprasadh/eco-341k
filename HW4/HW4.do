log using Jai_Prasadh_HW4.log

* Jai Prasadh
* ECO 341K
* HW 4
* Written 2018-02-21
di "Executed $S_DATE at $S_TIME"

* Trejo Problem 1
use stocks.dta, clear

* (a)
reg ge ibm

* (b)
* (c)
* (d)
reg ge ibm dowjones

save stocks_modified.dta, replace

* Wooldridge C3.4
use attend.dta, clear

* (i)
sum atndrte priGPA ACT

* (ii)
* (iii)
reg atndrte priGPA ACT

* (iv)
di 75.7004 + (17.26059 * 3.65) + (-1.716553 * 20)

* (v)
di (75.7004 + (17.26059 * 3.1) + (-1.716553 * 21)) - ///
(75.7004 + (17.26059 * 2.1) + (-1.716553 * 26))

save attend_modified.dta, replace

* Wooldridge C3.8
use discrim.dta, clear

* (i)
desc prpblck income
sum prpblck income

* (ii)
reg psoda prpblck income

* (iii)
reg psoda prpblck

* (iv)
reg lpsoda prpblck lincome
di .2 * .1215803

* (v)
reg lpsoda prpblck lincome prppov

* (vi)
* (vii)
corr lincome prppov

save discrim_modified.dta, replace

log close

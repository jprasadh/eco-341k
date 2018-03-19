log using Jai_Prasadh_HW6.log

* Jai Prasadh
* ECO 341K
* HW 6
* Written 2018-03-18
di "Executed $S_DATE at $S_TIME"

* Wooldridge C4.2
use LAWSCH85.DTA, clear

* (i)
reg lsalary LSAT GPA llibvol lcost rank
* test H0: rank effect = 0
di 2 * ttail(136-6, abs(-.0033246 - 0) / .0003485)

* (ii)
test (LSAT = 0) (GPA = 0)

* (iii)
* (iv)
quietly reg lsalary LSAT GPA llibvol lcost rank clsize faculty
test (clsize = 0) (faculty = 0)

save LAWSCH85_modified.dta, replace

* Wooldridge C4.9
use discrim.dta, clear

* (i)
reg lpsoda prpblck lincome prppov

* (ii)
corr lincome prppov
test (lincome = 0) (prppov = 0)

* (iii)
reg lpsoda prpblck lincome prppov lhseval

* (iv)
* (v)
test (lincome = 0) (prppov = 0)

* (a)
gen prpblck_2prppov = prpblck + (2 * prppov)
reg lpsoda prpblck_2prppov lincome
* F-stat for this test
di ((.087 - .0828)/(1 - .087)) * ((401 - 4) / 1)

* (b)
quietly reg lpsoda prpblck lincome prppov
test (prppov - (2 * prpblck) = 0)

save discrim_modified.dta, replace

log close

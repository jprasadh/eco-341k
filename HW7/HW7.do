log using Jai_Prasadh_HW7.log

* Jai Prasadh
* ECO 341K
* HW 7
* Written 2018-04-09
di "Executed $S_DATE at $S_TIME"

* Wooldridge C5.1
use WAGE1.DTA, clear

* (i)
quietly reg wage educ exper tenure
predict uhat, resid
* hist uhat

*(ii), (iii)
quietly reg lwage educ exper tenure
predict uhat1, resid
* hist uhat1

save WAGE1_modified.DTA, replace

* Wooldridge C5.2
use gpa2.dta, clear

* (i)
reg colgpa hsperc sat

* (ii)
reg colgpa hsperc sat if _n <= 2070

* (iii)
di .0005495 / .0007185

save gpa2_modified.dta, replace

* Wooldridge C6.8
use hprice1.DTA, clear

* (i)
reg price lotsize sqrft bdrms 

* (ii)
lincom 10000*lotsize + 2300 * sqrft + 4*bdrms

save hprice1_modified.dta, replace

* Wooldridge C7.2
use WAGE2.DTA, clear

* (i)
reg lwage educ exper tenure married black south urban 

* (iv)
gen marblck=married * black
reg lwage educ exper tenure married black south urban marblck

save WAGE2_modified.dta, replace

* Wooldridge C7.3
use MLB1.DTA, clear

* (i)
reg lsalary years gamesyr bavg hrunsyr rbisyr runsyr fldperc ///
allstar frstbase scndbase thrdbase shrtstop catcher

* (ii), (iii)
test frstbase scndbase thrdbase shrtstop catcher

save MLB1_modified.dta, replace

log close

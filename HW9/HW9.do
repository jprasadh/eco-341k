log using Jai_Prasadh_HW9.log

* Jai Prasadh
* ECO 341K
* HW 9
* Written 2018-04-18
di "Executed $S_DATE at $S_TIME"

* Wooldridge C8.2
use hprice1.dta, clear

* (i)
reg price lotsize sqrft bdrms, robust

* (ii)
reg lprice lotsize sqrft bdrms, robust

* (iii)
* (iv)
* (v)
reg lprice lotsize sqrft bdrms
lincom _cons + 9000*lotsize + 2000*sqrft + 3*bdrms

save hprice1_modified.DTA, replace

* Wooldridge C8.4
use VOTE1.DTA, clear

* (i)
reg voteA prtystrA democA lexpendA lexpendB
predict uhat, resid
reg uhat prtystrA democA lexpendA lexpendB

* (ii)
gen uhatsq = uhat*uhat
reg uhatsq prtystrA democA lexpendA lexpendB

save VOTE1_modified.DTA, replace

* Wooldridge C9.4
use INFMRT.DTA, clear

* (i)
* (ii)
reg infmort lpcinc lphysic lpopul DC

save INFMRT_modified.DTA, replace

log close

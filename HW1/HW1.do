log using Jai_Prasadh_HW1.log

* Jai Prasadh
* ECO 341K
* HW 1
* Written 2018-01-27
di "Executed $S_DATE at $S_TIME"

* Wooldridge C1.2
use BWGHT.DTA

* (i)
* (ii)
* (iii)
sum cigs
sum cigs if cigs > 0

* (iv)
sum fatheduc

* (v)
sum faminc

* (vi)
sum bwght if cigs == 0
sum bwght if cigs > 0
display 120.0612 - 111.1462

* (vii)
corr faminc motheduc cigs bwght

* (viii)
* Answer without looking at output!
*
*
*
*
*
*
*
*
*
* Now check
sum bwghtlbs if cigs == 0
sum bwghtlbs if cigs > 0
corr faminc motheduc cigs bwghtlbs

log close

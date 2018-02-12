log using Jai_Prasadh_HW3.log

* Jai Prasadh
* ECO 341K
* HW 3
* Written 2018-02-11
di "Executed $S_DATE at $S_TIME"

* Wooldridge C2.6
use MEAP93.DTA, clear

* (i)
* (ii)
* (iii)
reg math10 lexpend

* (iv)
di 11.164 * 10

* (v)
* (vi)
scatter math10 lexpend || lfit math10 lexpend
graph save graph1, replace

* (vii)
quietly reg math10 lexpend
predict math10_fitted
scatter math10_fitted expend
graph save graph2, replace

* (viii)
gen math10dec = math10 / 100
*
*
*Do independently first
*
*
reg math10dec lexpend


save MEAP93_modified.DTA, replace

log close

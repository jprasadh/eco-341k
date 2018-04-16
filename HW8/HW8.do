log using Jai_Prasadh_HW8.log

* Jai Prasadh
* ECO 341K
* HW 8
* Written 2018-04-15
di "Executed $S_DATE at $S_TIME"

* Wooldridge C6.6
use VOTE1.DTA, clear

* (i)
* (ii)
gen expendAB = expendA * expendB
reg voteA prtystrA expendA expendB expendAB 

* (iii)
sum expendA

* (iv)
* (v)
reg voteA prtystrA expendA expendB shareA 

save VOTE1_modified.DTA, replace

* Wooldridge C7.6
use SLEEP75.DTA, clear

* (i)
reg sleep totwrk educ age agesq yngkid if male == 0
reg sleep totwrk educ age agesq yngkid if male == 1

* (ii)
gen mtotwrk = male * totwrk
gen meduc = male * educ
gen mage = male * age
gen magesq = male * agesq
gen myngkid = male * yngkid
reg sleep totwrk mtotwrk educ meduc age mage agesq magesq yngkid myngkid
test mtotwrk meduc mage magesq myngkid

* (iii)
reg sleep male totwrk mtotwrk educ meduc age mage agesq magesq yngkid myngkid
test male mtotwrk meduc mage magesq myngkid

save SLEEP75_modified.DTA, replace

* Wooldridge C7.10
use nbasal.dta, clear

* (i)
reg points exper expersq guard forward

* (ii)
* (iii)
* (iv)
reg points exper expersq guard forward marr

* (v)
gen mexper = marr * exper
gen mexpersq = marr * expersq
reg points exper mexper expersq mexpersq guard forward marr
test mexper mexpersq marr

* (vi)
reg assists exper expersq guard forward marr

save nbasal_modified.DTA, replace


log close

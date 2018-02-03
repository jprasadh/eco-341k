log using Jai_Prasadh_HW2.log

* Jai Prasadh
* ECO 341K
* HW 2
* Written 2018-02-03
di "Executed $S_DATE at $S_TIME"

* Wooldridge C2.4
use WAGE2.DTA

* (i)
sum wage IQ

* (ii)
regress wage IQ
disp 8.303064 * 15

* 1.
scatter wage IQ || lfit wage IQ

* 2.
corr wage IQ
corr wage IQ, covariance

if (1881.32 /(15.05264^2) > 8.303 & ///
1881.32 /(15.05264^2) < 8.304) disp "True"
if (0.3091 * (404.3608 / 15.05264) > 8.303 & ///
0.3091 * (404.3608 / 15.05264) < 8.304) disp  "True"

* 3.
predict wagehat
*
* Try to answer independently before looking at output
*
*
*
sum wagehat
corr wagehat IQ

* 4.
predict uhat, resid
sum uhat
corr uhat IQ
* Mean of uhat is very tiny, ~0, and is uncorrelated with IQ

* 5.
regress IQ wage


save WAGE2modified.DTA, replace

log close

from scipy.stats import t, f

# Jai Prasadh, ECO 341K, HW6
# Wooldridge 4.6
n = 88
k = 1
df = n-k-1

b0hat = -14.47   # estimate for beta0
seb0 = 16.27     # standard error for beta0
b1hat = .976     # estimate for beta1
seb1 = .049      # se for beta1

# (i)
t_star_0 = abs((b0hat - 0) / seb0)  # t-stat for H0: b0==0
t_star_1 = abs((b1hat - 1) / seb1)  # t-stat for H0: b1==1

p_b0 = 2 * t.sf(t_star_0, df, loc=0, scale=1)   # p-val for H0: b0==0
p_b1 = 2 * t.sf(t_star_1, df, loc=0, scale=1)   # p-val for H0: b1==1

# (ii)
SSR_ur = 165644.51  # SSR for unrestricted model
SSR_r = 209448.99  # SSR for restricted model

f_star = ((SSR_r - SSR_ur)/2) / (SSR_ur/df)  # F-stat for joint test b0==0, b1==1
p = f.sf(f_star, 2, df, loc=0, scale=1)      # p-val for joint test

# (iii)
Rsq_ur = .829       # R^2 from unrestricted model
Rsq_r = .82     # R^2 from restricted model
f_star = ((Rsq_ur-Rsq_r)/3) / ((1-Rsq_ur)/df)    # F-stat for joint test b2==b3==b4==0
p = f.sf(f_star, 3, df, loc=0, scale=1)

# Wooldridge 4.10
n = 142
k = 4
df = n-k-1

# (i)
crit_val_t = t.isf(0.025, df, loc=0, scale=1)       # critical value for t-test at 5% sig level
crit_val_f = f.isf(0.05, 4, df, loc=0, scale=1)     # critical value for F-test at 5% sig level

Rsq_ur = .0395
Rsq_r = 0
f_star = ((Rsq_ur-Rsq_r)/4) / ((1-Rsq_ur)/df)       # F-test all slopes are 0

b1 = [.321, .201]       # estimate and standard error for each slope param
b2 = [.043, .078]
b3 = [-.0051, .0047]
b4 = [.0035, .0022]


def ttest(slope_param, hyp_val, sig_level):         # procedure to test a variable for significance
    crit_val = t.isf(sig_level, df, loc=0, scale=1)
    t_stat = abs((slope_param[0] - hyp_val) / slope_param[1])
    if t_stat > crit_val:
        result = "Parameter is significant at " + str(sig_level) + " (" + str(sig_level * 2) + ") level"
    else:
        result = "Parameter is NOT significant at " + str(sig_level) + " (" + str(sig_level * 2) + ") level"
    return result


ttest(b1, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level
ttest(b2, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level
ttest(b3, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level
ttest(b4, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level

# (ii)
b1 = [.327, .203]       # new estimate and standard error for each slope param
b2 = [.069, .080]
b3 = [-4.74, 3.39]
b4 = [7.24, 6.31]

ttest(b1, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level
ttest(b2, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level
ttest(b3, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level
ttest(b4, 0, 0.025)     # Parameter is NOT significant at 0.025 (0.05) level

Rsq_ur = .0330
Rsq_r = 0
f_star = ((Rsq_ur-Rsq_r)/4) / ((1-Rsq_ur)/df)


from scipy.stats import t
import matplotlib.pyplot as plt

q = 0.025
df = 60

invttail = t.isf(q, df, loc=0, scale=1)  # isf is inverse survival function
se = .081

delta = se * invttail

print(delta)

x = (0.066-0)/.039

ttail = t.sf(x, df, loc=0, scale=1)   # sf is survival function (1 - cdf)

p = 2 * ttail
print(p)

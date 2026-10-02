# Paired measurements

CPU seconds are local process CPU time. Both methods use the same input radius and resource limits.

| Cell | Original status | Original CPU-s | New CPU-s | Original nodes | New nodes |
|---|---|---:|---:|---:|---:|
| D1-1 | certified | 56.54 | 16.36 | 1,021,095 | 335,274 |
| D1-2 | certified | 61.13 | 14.07 | 1,076,971 | 323,774 |
| D1-3 | certified | 24.58 | 12.28 | 495,030 | 360,532 |
| D1-4 | certified | 27.28 | 10.21 | 580,488 | 305,768 |
| D1-5 | certified | 132.28 | 11.17 | 3,265,500 | 398,871 |
| D1-6 | certified | 136.00 | 10.41 | 3,358,862 | 316,356 |
| D2-1 | certified | 31.74 | 8.80 | 712,229 | 255,548 |
| D2-2 | certified | 28.67 | 10.76 | 724,799 | 386,546 |
| D2-3 | certified | 50.46 | 9.42 | 1,201,823 | 292,230 |
| D2-4 | certified | 21.89 | 9.15 | 502,976 | 283,882 |
| D2-5 | certified | 19.40 | 8.77 | 442,332 | 266,596 |
| D2-6 | certified | 57.18 | 10.56 | 1,328,003 | 334,660 |
| Reference-1 | time_limit | 165.74 | 26.56 | 3,870,889 | 792,864 |
| Reference-2 | cover_budget | 174.59 | 31.95 | 4,000,001 | 1,122,151 |

Every new-method row is certified in the completed receipt. Reference-1 is g3; Reference-2 is X₆.
Reference baseline failures are censored at the resource limit, so their ratios are not ratios of successful completion times.

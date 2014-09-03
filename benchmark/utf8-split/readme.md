## utf8結果

```
Benchmark: running noutf8, noutf8_scalar, utf8, utf8_scalar for at least 3 CPU seconds...
    noutf8:  3 wallclock secs ( 3.04 usr +  0.00 sys =  3.04 CPU) @ 363520.55/s (n=1105466)
noutf8_scalar:  4 wallclock secs ( 3.10 usr +  0.00 sys =  3.10 CPU) @ 1732708.12/s (n=5378326)
      utf8:  2 wallclock secs ( 3.12 usr +  0.00 sys =  3.12 CPU) @ 779034.29/s (n=2430587)
utf8_scalar:  4 wallclock secs ( 3.03 usr +  0.00 sys =  3.03 CPU) @ 1789478.36/s (n=5416751)
                   Rate        noutf8          utf8 noutf8_scalar   utf8_scalar
noutf8         363521/s            --          -53%          -79%          -80%
utf8           779034/s          114%            --          -55%          -56%
noutf8_scalar 1732708/s          377%          122%            --           -3%
utf8_scalar   1789478/s          392%          130%            3%            --
```
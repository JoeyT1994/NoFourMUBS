# V quantitative coverage return

Start with [REPORT.md](REPORT.md). **A practical global margin is not yet
proved.** The principal certified practical result is

\[
0.1\le d([H],[F_6])\le4/7\implies\max_C R_C(H)\ge0.04.
\]

The report also gives a global Fourier-family margin, a uniformly
well-conditioned corner for every carrier, and a quantitative group-rounding
lemma. Every global comparison still needed is explicitly marked unproved.

Run all exact finite certificates with Python 3 and NumPy:

```sh
python3 verify_all.py
```

The scripts use no atlas, Stage C, network access, floating-point acceptance
test, or third-party computer algebra system. NumPy is used only in the
stronger annulus verifier, with checked integer-overflow bounds.

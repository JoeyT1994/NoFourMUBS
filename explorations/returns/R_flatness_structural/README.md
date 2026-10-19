# Handoff R — partial structural return

Start with [REPORT.md](REPORT.md). **The requested matched-flatness
transport and per-entry fallback are not proved in this return.**

The package contains paper proofs, exact symbolic checkers, the precise
remaining contraction, source definitions, a reference replay of the old
W11 calculation, and a verification log. The current Lean certificate
must be retained.

```sh
python -m pip install -r requirements.txt
python verify_all.py
```

Optional reference and diagnostic checks:

```sh
python -m pip install -r requirements-baseline.txt
python verify_all.py --baseline --diagnostics
```

Use `--json PATH` to write a fresh verification log. Successful script
checks are reported separately from the unproved Handoff R obligation.
Assertions must be enabled; the runner and all checkers refuse optimized
Python execution.

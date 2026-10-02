# Clean-checkout replay: SignedCornerPSDPrune

**PASS.** The original uploaded ZIP was extracted afresh. Only the additive
`ProvenResults/SignedCornerPSDPrune` directory was overlaid. Verification ran
from outside the repository directory, using a fresh compiler-cache directory
and four multiprocessing **spawn** workers. No precompiled core, previous
interpreter state, or parallel-worker globals were reused.

The full replay checks 3,000 records: 912, 930 and 972 exclusions for the fast,
root-extra and bounded profiles. All 13,971 negative-minor witnesses pass the
independent high-precision interval replay. All six physical strict-D0 controls
return `ok=False`. Exact algebra, denominator cancellations, derivative and
arithmetic controls, source pins and deliberately incomplete-cover tests pass.

`replay_clean.json` is the machine-readable receipt, `replay_clean.log` is the
complete output, and `invocation.json` records the actual local command and
fresh-cache setup. The elapsed wall time of this verification was 58.789 s.
This is a completed measurement, not a runtime guarantee for another machine.

From a repository root containing the additive overlay, reproduce it with:

```sh
python ProvenResults/SignedCornerPSDPrune/verify.py --all --workers 4
```

See `../../ProvenResults/SignedCornerPSDPrune/PROOF.md` for the theorem,
accepted-input ledger, strict-D0 scope, and arithmetic trust base. No existing
production run, registry entry, certificate, or upstream source file was edited.

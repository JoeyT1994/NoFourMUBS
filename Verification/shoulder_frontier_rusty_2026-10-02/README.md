# ActiveShoulderClosure_v2_frontier: replay of the 256-box calibration frontier on rusty (2 October 2026)

`frontier_256_replay.json` is the module's replay of its 256-box calibration frontier, run on rusty with g++ 13.3.0
(UBSan) and python-flint 0.9.0. Result: **PASS**. All 256 roots were closed and audited, with 0 unresolved boxes.

Scope, as the receipt states: this covers only the listed frontier boxes. The full-run frontier is built from the
actual stage-E open boxes and then checked by `NumericalCampaign/Campaign/branch95/frontier_ledger.py`.

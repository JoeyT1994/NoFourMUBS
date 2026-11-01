# X-ball cap verifier and additive format

## Scope and trust boundary

**PROVED (conditional transfer theorem).** `EDGE_CAP_THEOREM.md` states the
cap transfer theorem and its hypotheses. The code in this handoff checks
the source whole-ball estimates, each cap's target and both orientation
inequalities, and exact coverage of the entire source sphere. The validity
of the target seed charts remains an existing atlas prerequisite. This
geometric replay alone is not a replay of the complete MUB atlas.

**Implementation.** `cert/caps.py` retains the existing `check_cap(model,
transfer, cap)` interface. Its two additive changes are:

1. An edge source in either local mode uses
   `edge_wholeball.edge_centre_jet`, with 22 normal coordinates and the
   augmented `-T c` residual and `-T` derivative terms.
2. `cap_weighted.target_bounds` dispatches edge sources to
   `edge_wholeball.cap_target_bounds`. With `weighted_target: true`, the
   polynomial error is `||A H2|| Delta^2/2 + tau_A`, and the local error is
   `weighted_Hessian Delta^2/2`. The full weighted Hessian is used directly;
   it is not recovered by subtracting independently rounded norm bounds.

**PROVED.** The existing side-sign formulas are valid with the edge model's
`tau` and `Z2`. They are recomputed at each cap anchor. No source-side sign
restriction is imposed at the fold; the two signs being certified are
those of the selected target corner.

**Implementation.** `weighted_target: false` continues to mean the original
unweighted bounds. No existing field changes meaning. The edge source
still uses its augmented centre jet in either local mode. The witness
`lambda_`, `mu`, `s`, and optional `multiplier_vec` fields are unchanged.

## Additive edge record

Add a `caps` object to the existing edge-ball record:

```json
{
  "chart": "F6-012",
  "transfers": ["the original ordered T1 descriptors"],
  "caps": {
    "format": "zc2a-edge-cap-certificate-v1",
    "caps": [
      {
        "group_index": 1087,
        "v": [-26827844, -16826326, 54527218, -22967884],
        "h": 66919389,
        "mode": "polynomial",
        "weighted_target": true,
        "lambda_": "a finite hexadecimal binary64 scalar",
        "mu": "a finite hexadecimal binary64 scalar",
        "s": "a finite hexadecimal binary64 scalar"
      }
    ],
    "coverage": {"schema": "rational-s3-cap-cover-index-v1"}
  }
}
```

This is a structural illustration, not a standalone certificate. A full
record retains every required source header and actual exact witness
numbers. Source and group indices remain zero-based. `group_index` refers
to the original ordered descriptor list; each selected descriptor must
be T1 and name an in-range target seed. Its legacy `boxes` list is ignored
by the cap path. The original sphere is `||w||=r`, and the actual cap is
`||x||=1, v.x>=h` with `x=w/r`.

**PROVED interface.** Positive integer thresholds are allowed by the
existing scalar parser and retain exact cap geometry. Both integer and
hexadecimal thresholds are passed unchanged to transfer and coverage
verification. The coverage verifier receives only the authoritative
`v,h` fields, preventing aliases from certifying another geometry.

The original `rational-s3-cap-cover-v1` coverage schema remains accepted.
The new index-only schema is described in `COVERAGE_AUDIT.md`.
`verify_coverage` must return both `passed` and `covers` true.

## Entry points

```python
import edgecaps, seedcert

targets = [seedcert.Ball(record) for record in data["seed_headers"]]
source = data["edge"][0]
receipt = edgecaps.check_edge_caps(
    source, targets, source["transfers"], certificate,
    return_details=True,
)
```

The function raises `seedcert.CertError` for any failed required check.
It rebuilds the edge model unless the production C1e path passes an
already-verified `model`. An exact source-header signature binds that model
to the source `chart,q0,Mth,r,P,U`. The source parser rejects nonfinite
entries, wrong dimensions, nonpositive radius, an unsupported chart, and
a nonzero centre. The original global phase-lift check remains mandatory.

The production adapter is `edgecert.check_edge_caps(eb, seeds, groups,
caps, edges=...)`. `edgecert.check_edge_transfers` adds the optional
keyword `caps=None`; when present, it checks all cap transfers and coverage
together. `certify_seed_atlas.check_edge` passes the new field, and `split`
does not create legacy box-transfer work items for a cap-covered edge.

## Replay and regressions

For the complete final certificate, use the shared production check with
independent per-worker source reconstruction and one exact coverage pass:

```bash
PYTHONPATH=cert:atlas python xball_replay.py \
  --input data/xball_headers.json.gz \
  --caps results/xball_caps_certificate.json \
  --workers 6 --negative-tests \
  --receipt results/xball_replay.json
```

`--workers 1` calls the serial `edgecaps.check_edge_caps` entry point.
Parallel workers call the same `edgecaps.check_edge_cap` primitive, with
groups kept together, one active group's transfer matrices cached, and
target headers parsed only when needed. The parent accounts for every
cap index exactly once. Pure integer coverage runs concurrently in a
parent thread and must pass before the combined result is accepted.
The receipt binds the input,
certificate, and trusted checker sources by SHA-256, rejecting a change
during replay. Timings and source enclosures are retained in the receipt.

The smaller regression utility additionally supports local-mode proposal
comparisons:

```bash
PYTHONPATH=cert:atlas python xball_verifier_tests.py \
  --input data/xball_headers.json.gz \
  --caps results/xball_caps_certificate.json \
  --receipt results/verifier_tests.json
```

The command replays every listed cap, then tests:

- a strictly enlarged cap with its old witness;
- a zeroed squared-norm witness `s`;
- a different valid transfer-group index, evaluated using that actual
  descriptor;
- removal of a cap while retaining the original coverage certificate.

**PROVED qualification.** A redundant cap may be removed if an independently
recomputed valid coverage certificate still proves the sphere covered.
Similarly, another descriptor may legitimately prove the same cap. The
negative tests do not impose an artificial requirement to reject another
mathematically valid proof. They record the actual changed data and the
specific failed interval or exact check.

`--compare-local` additionally constructs local-sphere proposals and
replays them independently. Those proposals become **CERTIFIED** only
after `caps.check_cap` accepts. Floating-point construction diagnostics,
source information fields, timings, and recorded margins never determine
acceptance.

Concrete replay outcomes and counts belong to the generated JSON receipts
and final report. No full-sphere **CERTIFIED** label is inferred from
sampled points or individual cap passes.

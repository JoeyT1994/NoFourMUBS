"""Write the result report only after complete cap and exact coverage replay."""
from pathlib import Path
from fractions import Fraction
from collections import Counter
import json
import xball_replay as replay

ROOT=Path(__file__).resolve().parent
def read(name):return json.loads((ROOT/name).read_text())
def mib(n):return f'{n/(1024*1024):.3f} MiB'


def main():
    r=read('results/xball_replay.json');s=r['summary']
    if s['status']!='CERTIFIED' or s['failures']:raise RuntimeError('full replay has not passed')
    cap=read('results/xball_caps_certificate.json');geo=read('results/coverage_replay.json')
    current_binding=replay.binding(ROOT/'data/xball_headers.json.gz',ROOT/'results/xball_caps_certificate.json')
    if r.get('binding')!=current_binding:raise RuntimeError('full replay binding does not match current files')
    if geo.get('certificate_sha256')!=current_binding['certificate_sha256']:
        raise RuntimeError('coverage receipt is bound to a different certificate')
    if not geo.get('coverage',{}).get('passed') or not geo['coverage'].get('covers'):
        raise RuntimeError('coverage receipt did not pass')
    projection=read('xball_projection_check.json')
    if not projection['passed']:raise RuntimeError('input projection not certified')
    if projection.get('compact_sha256')!=current_binding['input_sha256']:
        raise RuntimeError('projection receipt is bound to another compact input')
    if projection.get('original_sha256')!=replay.digest(ROOT/'data/zc2a_xball.json.gz'):
        raise RuntimeError('original handoff bytes do not match the projection receipt')
    timing=read('results/construction_timings.json')
    adaptive=timing['adaptive_and_exploratory_phases']
    weighted_fill=sum(x['recorded_seconds'] for x in adaptive if x['description'].startswith('weighted adaptive'))
    final_fill=next(x['recorded_seconds'] for x in adaptive if x['description']=='weighted adaptive completed final phase')
    deletion_text='No additional geometric deletion claim is made beyond the rejected stale-coverage mutation.'
    deletion_path=ROOT/'results/dropped_cap_hole.json'
    if deletion_path.exists():
        deletion=read('results/dropped_cap_hole.json')
        if deletion.get('passed') and deletion.get('certificate_sha256')==current_binding['certificate_sha256']:
            deletion_text=(f'**CERTIFIED.** A separate exact geometric deletion witness in '
                           f'`results/dropped_cap_hole.json` proves an actual hole after removing cap '
                           f"{deletion['dropped_cap']} (original group {deletion['group_index']}). "
                           'Its rational polar point satisfies every remaining cap halfspace and has '
                           'squared norm strictly greater than one. Normalizing that point gives an '
                           'exact uncovered direction on the sphere.')
    cov=s['coverage'];n=len(cap['caps']);f=cov['facets'];original=projection['original_boxes']
    if s.get('caps')!=n or geo.get('caps')!=n:
        raise RuntimeError('receipt cap counts disagree')
    for key in ('caps','facets','ridges','max_norm_squared'):
        if cov.get(key)!=geo['coverage'].get(key):raise RuntimeError('coverage receipts disagree: '+key)
    modes=Counter(c['mode'] for c in cap['caps'])
    weighted=sum(c.get('weighted_target',False) for c in cap['caps'])
    maxnorm=Fraction(cov['max_norm_squared']);scale=10**12
    upper=(maxnorm.numerator*scale+maxnorm.denominator-1)//maxnorm.denominator
    bound=f'{upper//scale}.{upper%scale:012d}'
    source=s['sources'][0]
    rows='\n'.join(f'| {x["test"]} | CERTIFIED rejected | {x.get("reason", x.get("replay",{}).get("error",""))} |'
                   for x in s.get('negative_tests',[]))
    sizes=geo['sizes']
    package=', '.join(f'{k} {v}' for k,v in r['packages'].items())
    doc=rf'''# ZC2a return: certified caps on the X-ball sphere

## Result

**CERTIFIED.** The supplied X-ball's entire boundary sphere is covered by
**{n:,} spherical caps**, with **{f:,} exact polar facets**. Every retained
cap passed the interval target test, both target-side orientation tests,
and its five-by-five positive-definite witness. Exact integer coverage
passed for the same cap geometry. There are **zero boundary regions left
to boxes** in this source's replacement certificate.

**CERTIFIED.** This replaces the supplied **{original:,} X-ball boundary
boxes**. The count reduction is the exact ratio `{original}/{n}`,
approximately **{original/n:.2f}×**. This is a count comparison, not a
measured Lean-kernel speedup.

| Quantity | Result | Status |
|---|---:|---|
| Original level-6 boxes | {projection['original_box_levels']['6']:,} | CERTIFIED exact input count |
| Original level-7 boxes | {projection['original_box_levels']['7']:,} | CERTIFIED exact input count |
| Original level-8 boxes | {projection['original_box_levels']['8']:,} | CERTIFIED exact input count |
| Original ordered T1 descriptors | {projection['transfer_groups']:,} | CERTIFIED exact binding |
| Retained caps | {n:,} | CERTIFIED |
| Retained descriptor indices used | {len({c['group_index'] for c in cap['caps']}):,} | CERTIFIED |
| Polar facets | {f:,} | CERTIFIED exact arithmetic |
| Polar ridges | {cov['ridges']:,} | CERTIFIED, incidence exactly two |
| Remaining box regions | 0 | CERTIFIED for this source sphere |

**CERTIFIED.** The final modes are `{dict(modes)}`; {weighted:,} caps use
the edge output-weighted target bound. All listed descriptor indices
refer to the unchanged original transfer ordering.

## Quantitative margins

**CERTIFIED.** The whole source model has contraction factor at most
`{source['q']:.17g}`, normal correction norm at most
`{source['tau']:.17g}`, and recorded-gauge lift discrepancy at most
`{source['dephased_lift_gap_upper']:.17g}` radians. The last bound is
strictly below pi and applies simultaneously to every cap point.

**CERTIFIED.** Across the complete final transfer replay:

| Bound | Rigorous lower bound |
|---|---:|
| Target interior margin | {s['min_target_margin_lower']:.17g} |
| Both target orientation margins, minimum | {s['min_orientation_margin_lower']:.17g} |
| LDL pivot, minimum | {s['min_ldl_pivot_lower']:.17g} |

These are the checker's directed, rigorous lower endpoints. They are
computed from the exact stored cap scalars and Arb enclosures; numerical
proposal margins are not used.

**CERTIFIED.** The maximum squared norm of every reconstructed dual
vertex is at most **{bound}**, strictly below one. This decimal is obtained
by exact upward rounding of the rational maximum. The full rational value
and worst facet index are retained in `results/xball_replay.json`.

## The transfer theorem

**PROVED, under the stated chart hypotheses.** Write the augmented
X-ball model as

\[
Q(w)=Q_0+Uw+\tfrac12 H_2[w,w]+Xz(w),\qquad \|w\|\le r.
\]

A cap is `||x||=1, v.x>=h`, with `w=rx`. For its affine target predictor
`d+Fx`, the existing five-by-five witness certifies
`||d+Fx||^2<=s` on the entire cap. In polynomial mode the required error is

\[
\epsilon_A=\tfrac12\|AH_2\|\Delta^2+\tau_A,
\qquad \tau_A=b_{{0,A}}+q_A\tau.
\]

In either local mode it is

\[
\epsilon_A=\tfrac12 K_A\Delta^2,
\qquad K_A\ge\sup_{{\|w\|\le r}}\|AD^2Q(w)\|.
\]

The strict target condition is
`r_target*(1-sqrt(s)) > epsilon_A`. Both target Psi signs are checked
with the edge model's normal remainders and the global signature Hessian
bound 72. Local modes use the **22-coordinate edge centre jet**, including
the signature equation and its parameter derivative.

**PROVED.** No strict source-side signature is assumed. Caps may cross
the source fold. The whole-ball lift bound identifies the representative
nearest the recorded `P+Uw` throughout every cap. Full derivations and
exact dependencies on ZT are in `EDGE_CAP_THEOREM.md`.

## Verifier and additive format

**PROVED transfer theorem; CERTIFIED finite replay.** `cert/caps.py` retains its existing
cap-witness interface. Edge local modes dispatch to `edge_centre_jet`;
edge weighted target bounds dispatch to the augmented output-weighted
normal error and full weighted Hessian. Both side-sign estimates retain
their valid edge `tau` and `Z2` bounds.

The additive field is `edge_record["caps"]`, containing `caps` and
`coverage`. Its `group_index` points into the existing T1 array. Existing
fields keep their meaning. The serial production entry point is
`edgecaps.check_edge_caps`; the atlas runner is wired to use it instead
of edge boxes when that field is present. See `FORMAT.md` section 8a and
`EDGE_CAP_VERIFIER.md`.

**CERTIFIED.** The compact input preserves all {projection['seed_headers']:,}
seed headers, the source header, and all original descriptor values and
their order. Only outgoing box arrays are omitted. Exact projection
receipt: `xball_projection_check.json`.

## Exact coverage and storage

**PROVED.** Positive-threshold caps cover the unit sphere when the dual
polytope lies in the closed unit ball. The compact schema stores only
facet index quadruples. Cramer's rule reconstructs each exact dual
vertex; strict support, complete facet enumeration via ridge incidence,
and every vertex norm are then checked using integers.

**PROVED.** The dyadic support tree only skips a subtree after an exact
outward-box dot-product upper bound proves the same strict supporting
inequality for every point in that subtree. Uncertain nodes descend to
individual exact inequalities. It does not weaken coverage acceptance.

| Serialized content | Uncompressed | Gzip | Status |
|---|---:|---:|---|
| Complete cap certificate | {mib(sizes['certificate_json'])} | {mib(sizes['certificate_gzip'])} | CERTIFIED byte count |
| Index-only coverage | {mib(sizes['compact_coverage_json'])} | {mib(sizes['compact_coverage_gzip'])} | CERTIFIED byte count |
| Equivalent expanded coverage witnesses | {mib(sizes['expanded_coverage_json'])} | {mib(sizes['expanded_coverage_gzip'])} | CERTIFIED byte count |

The equivalent expanded witnesses were reconstructed exactly to measure
their size. They need not be stored in the distributed certificate.
The gzip coverage reduction is approximately
**{sizes['expanded_coverage_gzip']/sizes['compact_coverage_gzip']:.2f}×**.

**CERTIFIED.** Coverage used `{cov['support_method']}` with
{cov['support_node_tests']:,} exact node bounds and
{cov['support_point_tests']:,} exact point checks. Direct testing of every
facet against every cap would have required
{cov['potential_support_point_tests']:,} point checks.

## Negative controls

**CERTIFIED.** The final replay rejects all specified mutations below.
The enlarged-cap test halves the threshold; the witness test sets `s=0`.
The in-range wrong-group test changes the cap to a concrete different
descriptor. The dropped-cap test retains the original coverage record,
so it verifies that coverage cannot silently be reused after deletion.

| Test | Result | Rejection |
|---|---|---|
{rows}

These tests concern the stated concrete mutations. A different valid
descriptor or a sufficiently small enlargement can legitimately certify;
the theorem does not claim otherwise.

{deletion_text}

## Timings and reproducibility

**NUMERICAL wall-time measurements; CERTIFIED mathematical replay.** The retained complete replay used
{s['workers']} workers at {s['precision']}-bit Arb precision:

| Stage | Wall time |
|---|---:|
| Complete transfer replay, including worker source setup | {s['transfer_seconds']:.3f} s |
| Exact full-sphere coverage replay | {s['coverage_seconds']:.3f} s |
| Specified mutation tests | {s.get('negative_test_seconds',0):.3f} s |
| Complete retained run | {s['seconds']:.3f} s |

The transfer and exact coverage stages overlap in the parallel run; their
wall times must not be added to obtain the total. Input binding,
bookkeeping, and mutation tests account for the remaining total time.

**NUMERICAL — construction timings.**

| Construction stage | Retained wall time | Measurement scope |
|---|---:|---|
| Bulk proposals for all 16,100 groups | {timing['bulk_groups']['seconds']:.3f} s | Completed cumulative phase |
| Weighted refit of all 16,100 groups | {timing['weighted_refit']['seconds']:.3f} s | Completed cumulative phase |
| Weighted adaptive gap filling | {weighted_fill:.3f} s | Sum of retained checkpoints across three runs |
| Final gap-filling run, included above | {final_fill:.3f} s | Completed final run |
| Freeze, exact coverage, and size measurement | {geo['seconds']:.3f} s | Completed finalizer run |

`results/construction_timings.json` records each phase and its source log.
Interrupted runs are measured through their retained last checkpoint;
discarded work after those checkpoints is not included. Earlier exploratory
pilots are listed separately. These figures do not claim a single total
construction time and do not count numerical proposals as certification.

Environment: Python {r['python']}; {package}.
The receipt binds the exact input bytes, certificate bytes, and checker
source hashes. Workers hash and parse the same source byte buffer.
`README_RETURN.md` gives complete replay and integrity-check commands.

## Limits of the result

**NOT ESTABLISHED by this return.** Lean-kernel acceptance, a minimum cap
count, a measured Lean runtime improvement, or an independent validation
of the rest of the no-four-MUB atlas. The local F6-012 germ and validity
of the target seed charts are the geometric hypotheses inherited from
the supplied theorem chain. This return completes the X-ball boundary
transfer and coverage component under those hypotheses.
'''
    (ROOT/'REPORT_RETURN.md').write_text(doc)
    print(json.dumps(dict(report='REPORT_RETURN.md',caps=n,facets=f,boxes=original,bytes=len(doc.encode()))))


if __name__=='__main__':main()

"""Assemble the human report and the 200-row evidence table from replay files."""
from pathlib import Path
import csv,json,re,shutil
from decimal import Decimal,ROUND_FLOOR

ROOT=Path(__file__).resolve().parent
def read(p):return json.loads((ROOT/p).read_text())
def lower_decimal(x,digits=10):
    d=Decimal.from_float(x)
    return str(d.quantize(Decimal(1).scaleb(d.adjusted()-digits+1),rounding=ROUND_FLOOR))
def demote(s):
    s=s.split('\n',1)[1]
    return re.sub(r'(?m)^(#{2,5}) ',r'#\1 ',s)

def main():
    proposed=list(csv.DictReader((ROOT/'counts/refined_results/weighted_counts.csv').open()))
    proofs={}
    for folder in ('certified_spheres','certified_refined_spheres','certified_hybrid_spheres','certified_repaired_spheres'):
        for p in (ROOT/'counts'/folder).glob('seed_*.json'):
            d=json.loads(p.read_text())
            if d.get('status')=='CERTIFIED full sphere transfers':
                j=d['seed'];count=d['count']
                if j not in proofs or count<proofs[j]['count']:
                    proofs[j]={**d,'path':str(p.relative_to(ROOT))}
    # Include independent full-sphere replays from the integrating verifier.
    for p in (ROOT/'results').glob('seed_*_replay.json'):
        d=json.loads(p.read_text())
        if d.get('status')=='CERTIFIED full sphere transfers':
            j=d['seed'];count=d['tested']
            if j not in proofs or count<proofs[j]['count']:
                proofs[j]={**d,'count':count,'path':str(p.relative_to(ROOT)),
                    'target_margin_lower':min(x['target_margin_lower'] for x in d['patches']),
                    'orientation_margin_lower':min((v for x in d['patches'] for v in x.get('orientation_margins_lower',[])),default=None)}
    rows=[]
    for row in proposed:
        j=int(row['seed']);proof=proofs.get(j)
        rows.append(dict(seed=j,source_radius=row['r'],centre_R_numerical=row['R_diagnostic'],
            frame_condition_numerical=row['frame_condition'],original_boxes=int(row['original']),
            proposed_refined_patches=int(row.get('patch_pass') or 0),
            retained_original_boxes=int(row.get('original_fallback') or 0),
            proposed_hybrid_boxes=int(row['total']),
            wholeball_status='CERTIFIED' if row['status']=='NUMERICAL' else 'NOT ESTABLISHED',
            transfer_status='CERTIFIED full sphere' if proof else 'NOT ESTABLISHED full sphere',
            certified_patch_count=proof['count'] if proof else '',
            target_margin_lower=proof.get('target_margin_lower','') if proof else '',
            orientation_margin_lower=proof.get('orientation_margin_lower','') if proof else '',
            replay_file=proof['path'] if proof else ''))
    with (ROOT/'per_ball_counts.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    certified=[r for r in rows if r['seed'] in proofs]
    old=sum(r['original_boxes'] for r in certified);new=sum(r['certified_patch_count'] for r in certified)
    stats=read('counts/final_certified_statistics.json')
    if (len(certified),old,new)!=(stats['sources'],stats['old_boxes'],stats['patches']):
        raise ValueError('assembled proof records disagree with final certified statistics')
    edge=read('edge/edge_replay_summary.json')
    if edge['status']!='CERTIFIED full edge sphere transfers':raise ValueError('edge is not fully certified')
    summary=dict(certified_source_spheres=len(certified),sample_source_spheres=200,
        original_boxes_on_certified_sources=old,certified_seed_patches=new,
        seed_original_median=stats['old_median'],seed_certified_median=stats['new_median'],
        seed_certified_p90=stats['new_p90'],seed_certified_maximum=stats['max_count'],
        seed_polynomial_patches=stats['global_passes'],seed_actual_centre_patches=stats['local_passes'],
        retained_original_boxes_on_uncertified_sources=sum(r['original_boxes'] for r in rows if r['seed'] not in proofs),
        edge_original_boxes=1171965,edge_certified_patches=edge['counts']['passed'],
        seed_target_margin_lower=min(proofs[r['seed']]['target_margin_lower'] for r in certified),
        seed_orientation_margin_lower=min(proofs[r['seed']]['orientation_margin_lower'] for r in certified
            if proofs[r['seed']].get('orientation_margin_lower') is not None),
        uncertified_sample_sources=[r['seed'] for r in rows if r['seed'] not in proofs],
        scope='Boundary inequalities, branch bounds, and exact dyadic coverage; conditional only on stated local completion germs. No global MUB conclusion.')
    (ROOT/'RESULTS_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
    selected=[]
    for j in (6,8,23,73,104,937,2089,2299):
        row=next(r for r in rows if r['seed']==j)
        selected.append(f"| {j} | {row['original_boxes']:,} | {row['certified_patch_count'] if row['certified_patch_count']!='' else 'not replayed'} | {row['transfer_status']} |")
    selected='\n'.join(selected)
    intro=rf'''# Return ZT — Output-weighted whole-ball boundary transfers

**Prepared from `ZT_wholeball_transfers(1).zip`, 25 October 2026.**

## 1. Result and exact scope

**PROVED.** A single verified Z normal form supplies output-weighted local Taylor bounds on every sphere patch. The output map can be kept inside the projected residual calculation, improving both the value correction and the Hessian correction. An actual patch-centre value and derivative can be enclosed using the original contraction; a fresh existence contraction is unnecessary. The exact dyadic coverage traversal is retained.

**CERTIFIED.** {len(certified)} of the 200 sampled source spheres have complete new interval-replayed transfer covers. On these sources the count is **{old:,} original boxes → {new:,} certified patches**. Every included target test, both required orientation signs, and the exact integer sphere-coverage traversal passed. `per_ball_counts.csv` reports every sampled source separately and links to its replay record.

**CERTIFIED.** The entire edge sphere has **1,171,965 original boxes → 55,345 certified patches**, a factor of **21.1756**. These are 53,319 one-centre polynomial patches and 2,026 actual-centre Taylor patches. All 55,345 are checked by the new method. The edge's source-ball Hessian is below **1.872820041** in framed coordinates; its raw-parameter bound is below **4.431139798049 on the same ellipsoid**.

**CERTIFIED.** The output-weighted seed bounds have actual original-centre Taylor-remainder overestimation below a factor of three for every listed nonlinear T1 output on **167 of the 193 successful source models**. All **1,440 edge output maps** have global Hessian bounds within **2.142194 times** the true global Hessian supremum. These two sharpness claims concern explicitly different suprema; neither is advertised as a factor-three theorem for every individual sphere-patch remainder.

**CERTIFIED obstruction to the proposed scale.** For seed 6, the original 42 transfer descriptors and windings require at least **627 leaves** under FORMAT's exact traversal. This is proved by 2,184 interval noncontainment witnesses. Better remainder bounds alone cannot turn that fixed choice of transfers into a few-dozen-patch certificate.

**NOT ESTABLISHED.** Tens to a few hundred patches for every source sphere; a few-hundred-patch edge cover; a uniform factor-three estimate for every sphere-centred patch; a uniform criterion depending only on R; replacement of the four near-edge T3 source certificates; a Lean implementation. This return proves and replays local branch and boundary-transfer statements. It invokes no MUB exclusion, global atlas completeness theorem, or Stage C calculation.

### Status convention and geometric dependency

**PROVED** means an analytic theorem under the explicitly stated hypotheses. **CERTIFIED** means exact or outward interval computation with supplied replay code. **NUMERICAL** identifies candidate search, diagnostics, and unreplayed proposed covers. **NOT ESTABLISHED** identifies the remaining claims. A section's status applies to its assertions unless a more specific label is given.

All analytic branch conclusions retain precisely Z's local matched-completion germ, or the analogous local analytic F6-012 germ for the edge chart. The supplied `context/Z_THEOREM.md`, `context/PROOF.md`, and chart definitions contain these local premises. The new contraction proves their extension over the actual source ball; a pre-certified whole source ball is not assumed. Transfer replays prove the geometric and orientation conditions in the brief; they do not recheck unrelated labels or exclusion data in the development certificate.

## 2. The usable patch certificate

**PROVED.** Write the verified horizontal normal form as

\[
Q(w)=Q_0+Uw+\tfrac12H_2[w,w]+Xz(w),\qquad \|w\|\le r.
\]

For an exact output matrix $A$, let $\alpha_A\ge\|AH_2\|$. The refined implementation supplies

\[
\|AXz\|\le T_{{0,A}},\qquad
\|AXDz\|\le T_{{1,A}},\qquad
\|AXD^2z\|\le T_{{2,A}}.
\]

These constants are obtained by multiplying the centre residual tensors by $AX$ **before** taking norms. Appendix A, Section 10 gives every constant and its proof. The formulas do not contain the destructive scalar substitution $\|A\|\|M\|^2$.

For an actual anchor $c$ in the original closed ball, the requested local enclosure is

\[
\boxed{{
\|A(Q(w)-Q(c)-DQ(c)(w-c))\|
\le \tfrac12(\alpha_A+T_{{2,A}})\delta^2
}}
\]

whenever $w$ also belongs to the original ball and $\|w-c\|\le\delta$. Both endpoints lie in a convex ball, so the entire Taylor segment is controlled. A sphere-centred circumscribed ball need not lie inside the source ball; no evaluation at its exterior points is used.

The cheaper polynomial mode uses

\[
P_c=Q_0+Uc+\tfrac12H_2[c,c],\quad V_c=U+H_2[c,\cdot],
\qquad E_A=\tfrac12\alpha_A\delta^2+T_{{0,A}}.
\]

Here $c$ may be the dyadic midpoint even when it lies outside the source ball: $P_c,V_c$ are algebraic polynomial evaluations. The branch itself is used only on the original sphere. The nonzero $T_{{0,A}}$ floor is removed by switching to the actual-centre method.

### Rigorous patch-centre jets

**PROVED; IMPLEMENTED.** If the original normal contraction has factor $\kappa<1$, any rational proposal $z_m$ inside its normal tube gives

\[
\|z(c)-z_m\|\le\frac{{\|G(c,z_m)\|}}{{1-\kappa}}.
\]

An interval evaluation of this residual encloses the true centre. An interval solve of the differentiated projected equations gives $DQ(c)$. Floating Newton iterations only propose $z_m$; the root enclosure and inverse are certified. This reuses the original contraction. The dephased phase lift used to construct $W$ is retained in $G$, while horizontal phases are used for the invariant transfer output.

**PROVED.** Recentring Z at $(\theta_0+Mc,M,\delta)$ also works if that new whole-sub-ball test passes. It supplies its own $\tau_c,Z_{{2,c}}$ and output-weighted tensors. Such a pass is a new extension beyond the old ball when the sub-ball protrudes; it cannot be inferred merely from the old radius. Recentring is available as a tighter alternative, but the achieved counts use the cheaper original-contraction methods.

### Target and orientation tests

**PROVED.** For a T1 transfer set

\[
A=M_l^{{-1}}L_{{IJ}}g,\qquad
a=A P_c+M_l^{{-1}}(2\pi N-\theta_{{0,l}}),\qquad B=A V_c.
\]

The ordinary target bound uses the maximum of $\|a+B(v-c)\|$ at the 16 box vertices plus $E_A$. A sharper valid bound on the sphere is

\[
\boxed{{
\sqrt{{\max\!\left\{{0,\max_v\{{\|a+B(v-c)\|^2-\lambda(\|v\|^2-r^2)\}}\right\}}}}+E_A<r_l,
\quad B^TB-\lambda I\succeq0.
}}
\]

The expression inside the maximum is convex, and its sphere correction vanishes at every relevant point. An Arb LDL test certifies the positive-semidefinite shift. The implementation takes the best of five verified choices including $\lambda=0$; choosing only the largest permissible shift can be worse at interior vertices.

The two orientation tests keep the exact signature value and gradient at the affine-model centre. The 24-term sine identity gives $\|D^2\psi\|\le72$, hence a quadratic error $36\eta^2$ in projected side-phase distance. The scalar gradient is applied before taking the normal and quadratic norms. Appendix A states the explicit formula and proof for each side. The production refined checker improves the target residual bound and retains the already rigorous orientation constants.

**Integration requirement — PROVED.** These tests certify the **intersection of the listed dyadic box with the sphere**. The exact coverage traversal is unchanged. A kernel theorem that currently concludes transfer on the entire box must be replaced by the sphere-restricted transfer lemma. Exterior vertices are used to bound a convex polynomial; the nonlinear branch need not exist at those vertices.

## 3. Counts for the supplied 200-ball sample

**CERTIFIED input counting.** The full CSV contains 2,328 source balls and 11,430,119 boxes: 9,159,471 T1, 2,266,120 T0, and 4,528 T3. The complete-transfer sample supplied in the archive contains exactly 200 balls and 1,167,746 original boxes. No count below is extrapolated to the other 2,128 balls.

**NUMERICAL candidate counts, with certified replays identified separately.** The two searches use the supplied transfer descriptors and exact dyadic subdivision pattern. They are constructive searches, not minimum-cover optimizations.

| Method on all 200 sample balls | Total boxes including retained leaves | Median | 90th percentile | Complete proposals without retained leaves |
|---|---:|---:|---:|---:|
| Supplied cover | 1,167,746 | 4,381 | 8,353.3 | — |
| Output applied after the normal norm | 714,717 | 1,977.5 | 4,956 | 91 |
| Output retained inside the normal residual | 572,919 | 1,647.5 | 2,724 | 165 |

In the refined search, 339,866 patches passed the numerical candidate test. Of the retained 233,053 original leaves, 229,778 belong to the seven balls where the source Z contraction fails; only 3,275 belong to otherwise successful source models. Thus the latter 193 sources have a proposed total of 343,141 cells, versus 937,968 originally.

**CERTIFIED achieved covers.** At report assembly, **{len(certified)} sampled source spheres**, totalling **{new:,} patches**, have complete outward-Arb replay and exact coverage. The corresponding original count is **{old:,}**. The worst target margin among these complete covers is greater than **{lower_decimal(summary['seed_target_margin_lower'])}**, and the worst orientation margin is greater than **{lower_decimal(summary['seed_orientation_margin_lower'])}**. The per-ball table distinguishes proposed totals, retained leaves, and genuinely certified complete covers.

The final covers contain **{stats['global_passes']:,} polynomial tests and {stats['local_passes']:,} actual-centre Taylor tests**. Among these 193 sources, the median decreases from **{stats['old_median']:,.0f} to {stats['new_median']:,.0f}**, the new 90th percentile is **{stats['new_p90']:,.1f}**, and the largest new cover has **{stats['max_count']:,} patches**. These are statistics of the achieved finite certificates, not estimates for the unsupplied spheres.

The last 28 candidate covers initially retained 3,275 original leaves. Actual-centre tests certified 22 of those covers directly. On the remaining six sources, 134 failing boxes required one or two rounds of dyadic child refinement. The final count is 1,033 patches above the numerical 343,141-cell proposal; all resulting patches and all six coverage traversals passed. Final repaired cover lists and replay records are in `counts/refined_repaired_results/` and `counts/certified_repaired_spheres/`.

Keeping the other seven sources' 229,778 original fallback boxes gives **573,952 cells across the 200-source sample**. Only the 344,174 newly checked patches on the 193 successful sources are certified by this new verifier; the retained fallback boxes still rely on the original verification route.

| Source index | Original boxes | Achieved certified patches | Status |
|---|---:|---:|---|
{selected}

The 91 complete covers from the simpler method were independently replayed before refinement: all 140,306 patch tests passed, replacing 325,839 original boxes. The refined verification recomputes its own output-weighted constants; it does not trust the numeric search cache or the exported bounds JSON. An original leaf listed as a fallback is not itself an interval certificate.

## 4. Why the existing choices do not yield a few dozen patches

**CERTIFIED.** Exact integer sphere counting gives 16 cells at level 1, 256 at level 2, 2,080 at level 3, and 16,960 at level 4. The level-2 count includes 32 tangency-only cells required by the supplied closed-box traversal.

For seed 6, a finite noncontainment certificate excludes the root box, 15 of its 16 level-1 children, and 36 of the 240 level-2 children of those blocked orthants. For each blocked node and each of the source's 42 recorded transfer descriptors, a point

\[
w=r\,v/\sqrt{{v\cdot v}},\qquad v\in\mathbb Z^4,
\]

lies in that sphere patch and maps strictly outside the descriptor's target. Membership is checked with exact integer square comparisons. The output distance uses the full Z polynomial with its normal correction subtracted as an error bound. There are 2,184 successful interval inequalities; the smallest normalized outside margin exceeds $0.0003377482199989$.

Every blocked node must therefore be subdivided by FORMAT's traversal. Counting every unblocked child optimistically as one admissible leaf gives

\[
\boxed{{1+204+422=627\text{{ leaves at minimum}}.}}
\]

This is a lower bound for those **fixed descriptors and stored windings** under the specified traversal. It does not exclude smaller covers using additional transfer choices, a different cell structure, or a different coverage proof. The earlier affine zero-remainder survey is only a diagnostic; it is not used to prove this lower bound.

## 5. Edge sphere

**CERTIFIED.** The supplied F6-012 edge ball is covered by 55,345 new patches, with exact coverage checked at 110,177 traversal nodes. All target and orientation inequalities passed. The target margin exceeds $8.7921267\times10^{{-8}}$; the orientation margin exceeds $0.3847124436$. The full replay took approximately 246 seconds in the recorded run. Timing is an implementation measurement, not a theorem about Lean-kernel cost.

The whole source ball is handled by an augmented full-phase system with 22 normal coordinates. It preserves three seed cross-ratios and adds the signed side-signature equation

\[
\psi_h(Q(w))=-\tfrac12(Mw)_4.
\]

The projected residual therefore has 31 equations before taking its Gram left inverse. The local F6-012 germ supplies compatibility; projected uniqueness and the real-analytic identity theorem recover all full equations over the whole ball. The fold where $R=0$ is included. There is no division by $R$.

For the exact radius stored as `0x1.d70a3d70a3d71p-4`, displayed as 0.115, the certified constants include

\[
\kappa<0.215815333889,\quad \tau<0.000944434626,
\quad \|D_w^2Q\|<1.872820041.
\]

The raw $p$-coordinate consequence is $\|D_p^2Q\|<4.431139798049$ on $p\in M\overline B_r$. This is the coordinate-qualified replacement for the very large chart bound in the brief. It makes no assertion on a larger isotropic raw-parameter domain.

**PROVED.** The same implicit-system method carries over to the original seven-unknown side systems. Appendix B gives the exact first and second derivative formulas and the output chain rule. The delivered implementation uses 22 full-phase normal coordinates because the desired phase output is linear in the normal variable. A radius-certified direct seven-unknown implementation is not claimed.

## 6. Measured and certified sharpness

**PROVED.** In four input dimensions, the flattened norm of a symmetric vector-valued Hessian is at most twice its true diagonal quadratic norm. With exact tensor norms and a nonzero weighted centre Hessian, recentered Z consequently has limsup at most two for the ratio of its bound to the true full-subball Taylor-remainder supremum as the subball radius tends to zero. Appendix A gives the proof and a finite-radius factor-three sufficient test. It does not turn this asymptotic statement into a claim about all patches at their existing sizes.

**CERTIFIED.** For all 8,284 nonlinear T1 maps on the 193 successful source models, the refined normal bounds were replayed. A directional centre witness proves a factor-three global-Hessian estimate for 6,819 maps; every map passes on 155 whole balls.

There is a stronger finite-radius result for the actual source-centre Taylor remainder. If $t_A$ is a certified lower witness for $\|AH_2[v,v]\|$, define

\[
U_A=\tfrac12\alpha_A r^2+T_{{0,A}},\qquad
L_A=\tfrac12t_A r^2-T_{{0,A}}.
\]

At $w=rv$, the reverse triangle inequality proves the lower bound, so the true full-ball remainder supremum lies between $L_A$ and $U_A$. The Arb replay certifies $U_A<3L_A$ for **7,590 maps** and $U_A<2L_A$ for **5,621 maps**. Every map passes the factor-three test on **167 balls**, and the factor-two test on **65 balls**. These are actual upper-versus-lower certificates, not sampled guesses of a supremum.

**CERTIFIED.** All 1,440 edge transfer output maps have their refined global-Hessian bound below 2.142194 times a verified directional-centre lower witness; hence also below that factor times the true global supremum. The unweighted edge Hessian bound is within 2.339152 times its true supremum. The witness directions are fixed and replayed in Arb.

**NOT ESTABLISHED.** A factor-two or factor-three estimate for the true Taylor remainder about every sphere-patch centre. The local upper enclosure is proved and implemented. A local sharpness claim additionally needs a lower witness on that particular patch. The above source-centre and global-Hessian results are not substituted for it.

## 7. Failure region and fallback

**CERTIFIED outcome; NUMERICAL location diagnostics.** Whole-ball Z succeeds on 193/200 sampled sources and fails on exactly

`2264, 2279, 2297, 2313, 2325, 2326, 2327`.

Their supplied centre-$R$ diagnostics lie between 0.5168659233 and 29.0503550763. All sampled sources with that diagnostic at least 30 pass this contraction. This is a statement about these finite data, not a uniform theorem on an $R$-defined parameter region.

The five failures with centre diagnostic below 10 have numerical frame condition numbers approximately 42.6–105.3. All four T3 sources—2297, 2325, 2326, and 2327—are in this failed group. Their 4,528 source-to-edge transfers remain with the original fallback route. The newly certified outgoing edge sphere does not automatically certify these incoming T3 transfers.

Even successful Z models can have a loose normal Hessian. Seed 2257 has contraction factor about 0.6762 and $Z_2\approx45.23$; seed 2124 has factor about 0.6897 and $Z_2\approx51.24$. Output weighting improves these cases substantially but does not make every Hessian estimate three-sharp. In the sample, all 1,603 maps with supplied centre $R\ge330$ pass a Hessian ratio below 2.623, while isolated maps below that range remain much worse. No global $R$-only sufficient condition is proved.

**Implemented fallback.** Use the polynomial test first. When its nonzero normal-correction floor prevents acceptance, use an actual centre jet and the quadratic local bound. Keep fine boxes where either test still fails. If the source whole-ball contraction fails, retain the original branch-certification and transfer method; the new checker reports failure instead of silently assuming that branch certificate.

## 8. Replay, arithmetic, and provenance

**CERTIFIED arithmetic policy.** Float SVD, QR, Newton iterates, and candidate searches are proposals. Arb interval comparisons, verified matrix solves, LDL Gram tests, and exact integer coverage decide acceptance. Exact hexadecimal input floats are treated as their binary rational values. The original phase winding conventions are checked against the continuous source lift over the full ball.

The runtime used Python 3.12, NumPy, and python-flint 0.9.0 at 224-bit precision for the new analytical bounds. Python-flint documents rigorous midpoint-radius error bounds and separated interval comparisons; approximate linear algebra is not used for an acceptance decision. See [Python-flint general concepts](https://python-flint.readthedocs.io/en/latest/general.html) and [FLINT real matrix arithmetic](https://flintlib.org/doc/arb_mat.html).

The verifier handles a python-flint 0.9 generic-power issue for intervals straddling zero, uses explicit multiplication in the affected LDL steps, and rejects nonfinite bounds. An upper-only Frobenius helper is never used to establish a lower sharpness or noncontainment witness; those use enclosing norms. Negative controls reject changed windings, malformed boxes, and nonfinite bounds.

`README.md` gives short and full replay commands. `RESULTS_SUMMARY.json` records the assembled achieved status; `per_ball_counts.csv` has all 200 rows. The complete supplied context, including the development certificate, is included so that the handoff is self-contained. The original context sources are preserved; compatibility changes are confined to the delivered verifier and its `vendor/` copies. Hashes of the replay inputs and code are recorded with the batch results.

## Appendix A — Seed-ball and general patch proofs

'''
    appendix=demote((ROOT/'theory.md').read_text())
    edge_text=demote((ROOT/'edge/EDGE_REPORT.md').read_text())
    # Only the generated introduction uses doubled escapes. Do not alter
    # the intentional TeX row breaks in the independently written proofs.
    intro=intro.replace('\\\\','\\')
    text=intro+appendix+'\n\n## Appendix B — Edge-chart proof and certificate\n\n'+edge_text
    (ROOT/'REPORT.md').write_text(text)
    print(json.dumps(summary,indent=2))

if __name__=='__main__':main()

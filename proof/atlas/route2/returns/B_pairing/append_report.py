"""Regenerate the numerical/reproduction appendix from saved outputs."""
from pathlib import Path
import json
import numpy as np
O=Path(__file__).parent
p=O/'REPORT.md'
text=p.read_text().split('\n## 7. Numerical checks')[0]
D=json.loads((O/'numerical_checks.json').read_text());S=json.loads((O/'region_sample.json').read_text())
B=json.loads((O/'random_baseline.json').read_text())
text+=r'''
## 7. Numerical checks: what was actually found

Everything in this section is **NUMERICAL**, unless an exact certificate from §3 is explicitly cited. The files contain full raw ray lists and diagnostics, not just the selected table entries. All Record indices are zero-based.

### 7.1 Matched H₂ and off-H₂ samples

Eight successful strict matched seeds with `a=−1` and eight unconstrained successful matched seeds were tested. The seed arrays and recovered rays are saved in `seed_True_*.npz` and `seed_False_*.npz`. Each original search used 3,072 starts. At the strict `a=−1` samples, the number of pairs below `10⁻⁸` was exactly half the recovered ray count. The recovered common symmetry had residual around machine precision. At all eight unconstrained samples, no overlap fell below `10⁻⁸`.

| Strict a=−1 sample | Rays found | Pairs below 10⁻⁸ | Found-set six-ray defect | Shared-symmetry Frobenius residual |
|---|---:|---:|---:|---:|
'''
for r in D[:8]:
    text+=f"| {r['name'].split('sample=')[-1]} | {r['Nfound']} | {r['pairs_below_1e-8']} | {r['d6_found']:.6f} | {r['symmetry_residual_fro']:.3e} |\n"
text+=r'''
The positive found-set six-ray defects are deliberately **not** called certified exclusions. They illustrate the distinction between a perfect matching of orthogonal pairs and a mutually orthogonal basis. The pairing itself is established analytically in §2, independently of these searches.

For the twelve smallest-overlap pairs at the regular strict `a=−1` samples, the ratio of the second to first singular value of the real two-by-four overlap derivative was at numerical roundoff. This is consistent with (2.19). Extra orthogonal pairs at more symmetric Fourier points need not obey that particular one-hypersurface description. No four-dimensional tangent diagnostic is assigned to Tao's isolated matrix.

### 7.2 Generic and listed near-triple Records

Define `b₂,b₃` as the minimum Frobenius Gram defect of a 2×2 or 3×3 submatrix, respectively. The symmetry defect below is the smallest value found by the finite-pattern numerical search over the 15 row matchings and 15 column matchings, followed by phase projection. It is a candidate value and hence, up to floating error, an upper bound on the global infimum, not a proof of phase optimality and not an interval enclosure.

| Record | Rays found | Minimum pair overlap | Found-set δ₃ | b₂ | b₃ | Shared-symmetry defect found |
|---|---:|---:|---:|---:|---:|---:|
'''
for r in D:
    if r['name'].startswith('Record'):
        text+=f"| {r['name'][7:]} | {r['Nfound']} | {r['min_pair']:.3e} | {r['d6_found']:.6f} | {r['b2']:.6g} | {r['b3']:.6g} | {r['symmetry_residual_fro']:.6g} |\n"
text+=r'''
Record 10362 is particularly instructive: its minimum 2×2 defect is tiny, its shared-symmetry defect is small, but its 3×3 defect is about 1.80. This supports using proximity to the **larger H₂ locus** rather than assuming every small-overlap example is close to a Fourier family. Applying the geometric argument of (3.8) to a rigorously enclosed positive b₃ would turn this distinction into a certified distance statement; that extra interval step has not been performed for this floating Record centre.

### 7.3 Fourier, Tao, and Diţă controls

| Control | Rays found | Minimum pair overlap | Pairs below 10⁻⁸ | Found-set δ₃ |
|---|---:|---:|---:|---:|
'''
for r in D[-3:]:
    text+=f"| {r['name']} | {r['Nfound']} | {r['min_pair']:.6g} | {r['pairs_below_1e-8']} | {r['d6_found']:.6g} |\n"
text+=r'''
These control searches used 8,192 starts. The Diţă triple has a separate exact proof, so its membership in T₃ is not inferred from the last table. The chosen generic Fourier control also produced a numerical six-clique. Tao is not H₂-reducible and was used only as an isolated control, not as part of the handoff's non-Tao quotient.

### 7.4 Independent-flat-vector baseline

A separate simulation used 10,000 ensembles of 48 independently drawn dephased flat vectors, with seed 492731. It is a baseline for random phase geometry, not a model for the algebraically constrained set U(H).

| Pair statistic within each 48-vector ensemble | Median over 10,000 ensembles |
|---|---:|
'''
for k,v in zip(['Minimum overlap','1% pair quantile','5% pair quantile'],B['median_over_ensembles']):
    text+=f'| {k} | {v:.6f} |\n'
text+=r'''
This distinguishes two statements. An isolated overlap near 0.08 among roughly a thousand random pairs is not extraordinarily unlikely. The repeated minima of `10⁻⁵–10⁻²` and the much smaller low quantiles in many U(H) samples are the stronger anomaly. The exact H₂ matching and the local factorization (2.19) supply a structural explanation for a substantial part of it; they do not prove a probability law for all Records.

## 8. Numerical radius experiment and why it is not a certificate

### 8.1 Reproducible protocol

**NUMERICAL.** `sample_regions.py` selects 48 indices without replacement using `numpy.random.default_rng(20261015)`. At each centre it runs two independent 2,048-start searches, seeded by `710000+index` and `810000+index`, and takes the union of the recovered roots. The two searches agreed on the recovered set size and union size at every one of the 48 centres. This agreement is not a root-count proof.

An orthonormal horizontal four-dimensional tangent frame is computed in the ambient 36-coordinate phase metric. A second derivative of the phase chart is obtained by differentiating Hadamard orthogonality and solving in the normal space. First and second ray-phase derivatives are then obtained by differentiating the common-unbiased equations. The stored arrays `T,D,Q,P` give the tangent frame, ray first derivative, chart second derivative, and ray second derivative.

For each pair, the script builds (6.9)–(6.11). Instead of optimizing a rational ball witness, it uses the conservative support bound

\[
\operatorname{Re}(\bar\zeta g_0)
-\rho\|\operatorname{Re}(\bar\zeta\ell)\|_2
+\rho^2\min\{\lambda_{\min}(\tfrac12\operatorname{Re}(\bar\zeta M)),0\}
-R_3,
\]

over 64 equally spaced ζ directions. Thus cancellation between the linear and quadratic terms is not fully exploited. A pair is discarded only if this bound exceeds the assumed tube error by a margin of **0.1 in raw overlap units**. The remaining graph is tested for a five-clique.

The phase tubes are **hypothetical inputs** `s_a=cρ³`, not established by this experiment. Three coefficients are shown: `c=0`, `1/4`, and `1`. Even `c=0` still includes the proved exponential remainder (6.11) of the quadratic model, but assumes that the quadratic ray phases themselves are exact. This column is a diagnostic, not a physically justified tube.

### 8.2 Conditional screen counts

| Radius ρ | c=0 | c=1/4 | c=1 |
|---|---:|---:|---:|
'''
for rho in [.16,.3,.5]:
    counts=[sum(r[f'pass_r{rho}_c{c}'] for r in S) for c in [0.,.25,1.]]
    text+=f'| {rho} | '+ ' | '.join(f'{n}/48 ({100*n/48:.1f}%)' for n in counts)+' |\n'
text+=r'''
**No entry in this table is a certified fraction of regions, or a volume fraction of X.** These are uniform-Record-centre sample shares for a specified floating, conditional model screen. The actual count of newly certified whole regions in this output is zero.

This conservative implementation does **not reproduce** the handoff's approximate 80% share at radius 0.5. That is a statement about this screen, not a refutation of the true geometry or of a more sophisticated fold-cluster method. The methods differ: the present calculation uses separate quadratic root models, an absolute Taylor remainder, a simple quadratic support bound, and no certified fold clusters.

### 8.3 Numerical conditioning diagnosis

Across the sample, the raw 6×5 ray Jacobian's smallest singular value at the worst ray of each centre ranged from approximately 0.0624 to 3.062; its median was about 0.834. For the 20 centres passing at 0.16 with `c=1/4`, the median of this worst-ray singular value was 1.091; for the 28 failures it was 0.519.

The median, across centres, of the largest individual ray-phase Hessian operator norm was about **11.1** in the passing group but **172** in the failing group. The maximum in the failing group was about **15,204**. Such coefficients make the explicit absolute remainder large even before a genuine geometric tube has been enclosed. The failures are therefore not explained simply by needing a few more digits in a tiny constant; near-fold curvature and loss of cancellation are substantial.

The maximum chart second-jet equation residual was about `2.4×10⁻¹⁴`; the maximum ray second-jet residual was about `1.4×10⁻¹⁰`; the largest raw unbiasedness residual of the recovered sample rays was about `1.1×10⁻¹³`. These are checks of local floating derivative calculations, **not bounds on third derivatives or on motion over the full ball**.

To make larger radii effective, the next implementation needs fold clusters, better common-parameter polynomial lower bounds, and validated chart/ray remainders. An assumed median tube error cannot substitute for the worst-case bound demanded by (6.2).

## 9. Exact obligations still open, and what can be integrated now

**Not established in this output:** an upper dimension bound for all of Ω₂; exclusion of orthogonal pairs outside H₂; a proof that T₃ lies in H₂; a pure H-corner necessary invariant failing on most of X; a complete certified ray cover on a positive-radius new Record; or an atlas reduction with certified region shares.

**PROVED mathematical components available for integration:** the shared-skew characterization (2.15); the explicit sublocus (2.17); the local normal factorization (2.19); the quantitative defect-to-near-pair bound (2.24); the five-ray completion lemma (4.2); the corner identities (5.2)–(5.6); and the regional theorem (6.5) with its rational quadratic witness (6.13).

**CERTIFIED counterexamples available for integration:** the exact matrices (3.1)–(3.4), their six common-unbiased orthogonal columns, the strict positive-sheet seed/signatures, the exhaustive no-3×3-block check, and failure of automatic preservation of a selected pairing by a third basis.

A precise missing lemma for a large-radius implementation is:

> Given a physical four-parameter Hadamard region, produce a finite cover of all of its common-unbiased rays by phase clusters with uniform bounds (6.2), including branches across folds, while keeping enough cluster-pair quadratic lower bounds positive to exclude a five-clique.

This formulation allows clusters rather than individual regular roots and names exactly the coverage assertion not supplied by multistart searches. A separate, more ambitious missing structural implication is `T₃ ⊂ H₂`; it must not be silently used to remove the Diţă-type possibilities from Tier 2.

## 10. Reproduction, files, and references

### 10.1 Commands

From this output folder, with Python 3, numpy, sympy, mpmath and networkx installed:

```bash
python verify_exact.py
python check_region_algebra.py
OPENBLAS_NUM_THREADS=1 python numerical_checks.py
OPENBLAS_NUM_THREADS=1 python sample_regions.py
OPENBLAS_NUM_THREADS=1 python random_baseline.py
```

The first two commands print a PASS/FAIL line for every exact finite check and fail with an exception on an invalid assertion. The latter commands are explicitly numerical. No Lean replay, interval root isolation, or certified region cover is claimed.

`README.md` describes additional regeneration commands. The `_toolkit/` folder contains the supplied generators and Record-centre data, so the numerical scripts do not need the parent handoff folder. `INPUT_PROVENANCE.json` identifies the input hashes. `MANIFEST.sha256` records hashes of delivered files.

`verify_exact.py` contains the exact vectors as formulas, not rounded coordinates. `numerical_checks.json` and `region_sample.csv/json` contain the full diagnostic tables; `*.npz` files contain the saved matrices, ray lists and derivative arrays. Exact and numerical logs are separate.

### 10.2 Standard mathematical inputs and provenance

* **arXiv:1003.4177**, Bengt R. Karlsson, *Three-parameter complex Hadamard matrices of order 6*: the 2×2-block characterization, H₂ normal form, and its three-parameter description. The skew-intertwining and pairing consequences used here are derived explicitly in §2.
* **arXiv:1408.5728**, Martin Idel and Michael M. Wolf, *Sinkhorn normal form for unitary matrices*: existence of a biunimodular vector for every unitary. This is the nonconstructive nonemptiness input in §2.3.
* **arXiv:1209.4126**, Dardo Goyeneche, *Mutually unbiased triplets from non-affine families of complex Hadamard matrices in dimension six*: provenance of the explicit Diţă triple. Its exact equations are independently checked here.
* **arXiv:0901.4051**, Stephen Brierley and Stefan Weigert, *Constructing Mutually Unbiased Bases in Dimension Six*: background on exact special-matrix computations; no exhaustive root-count claim from that paper is required for the theorems here.
* **arXiv:0902.0882**, Philippe Jaming, Máté Matolcsi, Péter Móra, Ferenc Szöllősi and Mihály Weiner, *A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6*: Fourier-family background.

The input matched-chart results are the statements supplied in `reference/PROOF_v2.md`, not an independently replayed atlas in this output. The record-centre samples are computational inputs, not theorem certificates.
'''
# Repair any literal tab accidentally used in a TeX tfrac escape.
text=text.replace('\tfrac','\\tfrac')
p.write_text(text)
print('REPORT written:',len(text.split()),'words',len(text),'characters')

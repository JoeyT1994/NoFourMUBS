# NoFourMUBS: proof of record

## Completion-gated draft, based on the 30 September 2026 night snapshot

**The theorem to be recorded at release is:** there do not exist four mutually unbiased orthonormal bases of \(\mathbb C^6\), assuming the four accepted reconstruction inputs in `MinimalConstruction/ASSUMPTIONS.md`.

**This snapshot does not yet establish that theorem.** It supplies the reduction, mathematical certificate mechanisms, substantial verified local results, and campaign infrastructure. The remaining computations, their exact coverage witnesses, and the final audit must discharge the explicit `[PENDING: ...]` obligations below. Those obligations are work to be proved or checked, not additional assumptions under which an unfinished computation is declared successful.

All repository paths in this document are relative to the extracted `NoFourMUBS/` root. In particular, the Fourier neighbourhood modules reside in `ProvenResults/FourierNeighbourhood/`, not in a root-level `FourierNeighbourhood/` directory. Existing files have not been edited to make them agree with this draft.

### Evidence terminology

| Label | Meaning in this document |
|---|---|
| **Accepted input** | One of the four explicitly accepted reconstruction statements. Its global validity is not established by this repository's replay. |
| **External theorem** | A published result identified below. It is cited as mathematics, not represented as independently reproved by a local regression. |
| **Proved, with retained verification** | A written argument supplies universal scope; exact algebra, finite certificates, and/or arithmetic controls have retained replay receipts. This is not a claim of formal verification of all software. |
| **Computed and audited** | A specified finite computation has a retained or explicitly identified audit. The actual properties checked by that audit are stated; a `PASS` string is not enlarged into a stronger assertion. |
| **Reported run fact** | A count or status supplied for the named run of record, whose bulk files are not in this ZIP. Importing and hashing its underlying evidence remains a release obligation. |
| **Pending** | Neither a theorem nor a completed computational claim is being asserted. |

The authoritative campaign name for this document is **`nofourmubs_rescaled_2026-09-30`**. The task supplies its completed expansion counts and layer survivor count. Earlier unguarded and guarded campaigns are historical evidence only, unless a particular result is independently transferred under the current source and geometry policies.

---

# 1. Statement, accepted inputs, and external theorems

## 1.1 Normalization and theorem of record

A basis is represented by a unitary matrix whose columns are its vectors. Bases \(U,V\) are mutually unbiased when every entry of \(U^*V\) has squared modulus \(1/6\). After a common unitary change of coordinates, one basis is \(I\); a basis unbiased to it is \(H/\sqrt6\), where the **raw** complex Hadamard matrix \(H\) satisfies

\[
 |H_{ij}|=1,\qquad HH^*=6I.
\]

We call \(H\) a *quartet edge* when \(\{I,H/\sqrt6\}\) extends to four MUBs. A physical completion means a raw Hadamard satisfying these conditions, not merely a numerical output of a radical formula.

**Theorem of record, to be released after the completion gates are discharged.** Assume inputs A1–A4 below. Then \(\mathbb C^6\) has no four mutually unbiased orthonormal bases.

The proof is a contradiction: a quartet would, by Section 2, give an extendible positive-sheet carrier in \(D_0\cap F\). Sections 3–7 will establish that every point of this domain is either outside the domain by a sound predicate or belongs to a whole-cell quartet-exclusion certificate. That contradicts extendibility.

**Present completion gate:** [PENDING: a complete, source-pinned, acceptance-checked cover of `D0 ∩ F`, including all work and branch descendants; to be established by the final records and audit in Section 7].

## 1.2 Exact accepted reconstruction inputs

The following is the dependency boundary of `MinimalConstruction/ASSUMPTIONS.md`. The labels A1–A4 are local labels introduced in this document; similarly named labels inside individual modules must be interpreted against that module's own dependency list.

| Input | Statement accepted |
|---|---|
| **A1 — Strict-corner coverage** | Every order-six complex Hadamard other than the \(F_6\) class has a dephased positional \(3\times3\) corner with the reconstruction invariant \(R>0\). This is an existence statement, not positivity of every corner. |
| **A2 — Strict side/completion exhaustion** | At a strict corner, the two normalized side orbits and their finite pairings recover all framed completions. Both matched pairings are flat; exceptional Tao completions require the optional fixed-corner enumeration. |
| **A3 — Positive-sheet coverage** | A non-\(F_6\), non-Tao class is recovered by a matched pairing. Passing to the opposite corner reverses the sheet and retains strictness, giving the positive-sheet surjection. The two sheets at the original seeds need not be equivalent. |
| **A4 — Side formulas and strict-domain denominators** | The side recipe of `MinimalConstruction/RECONSTRUCTION.md` has phase entries, the prescribed Gram matrix, and nonvanishing divisors on \(R>0\); allowed root choices act through the stated side permutations. The defined-branch qualification in Section 3.4 is essential. |

Thus the working parametrization is \(H_+(a,b,c,d)\), with four unit phases and \(R>0\), covering all non-\(F_6\), non-Tao equivalence classes. It is not assumed injective. `MinimalConstruction/Implementation/verify.py` and `verify_single_radical.py` check formulas and regressions; they do not prove A1–A3. The classification paper and its certificate package are separate material, not an independent verification of these later reconstruction inputs.

Historical collaborator filenames in `MinimalConstruction/ASSUMPTIONS.md` are provenance references. This proof does not silently import additional theorems from those unavailable handoffs.

## 1.3 External theorems and their exact roles

**E1 — The Fourier-family exclusion.** Philippe Jaming, Máté Matolcsi, Péter Móra, Ferenc Szöllősi, and Mihály Weiner, *A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6*, Journal of Physics A 42 (2009), 245305, arXiv:0902.0882, Theorem 1.4, prove that \(\{I,F(a,b)\}\) cannot extend to a quartet for any member of the two-parameter Fourier family. Normalization is adjusted to the convention \(H/\sqrt6\) here. Transposed and equivalent representatives are covered by the invariances proved in Section 2. In particular, the \(F_6\) endpoint is excluded. Repository use: `NumericalCampaign/REDUCTION.md`; `ProvenResults/FourierNeighbourhood/UniformTube/` and the Fourier neighbourhood modules.

**E2 — The Tao/spectral-matrix exclusion.** Stephen Brierley and Stefan Weigert, *Constructing Mutually Unbiased Bases in Dimension Six*, Physical Review A 79 (2009), 052316, arXiv:0901.4051, Section 4.1 and Table 1, analyze the spectral matrix \(S\), also called Tao's matrix. Its 90 common unbiased rays contain no orthonormal sextuple, so \(\{I,S/\sqrt6\}\) does not even extend to a third basis, and therefore not to a quartet. This is an exclusion **of Tao's matrix**, not an attribution of the MUB exclusion theorem to Tao.

The local alternative in `ProvenResults/ExceptionalEndpoints/Tao/README.md` proves a stronger obstruction from an exact 90-ray packet, but accepts the frozen `tao_elimination_z1.out` elimination output as an external computational input. Its verifier does not independently reproduce that elimination. **This proof of record uses E2 as the endpoint input.** The local packet is corroborating evidence, not an unannounced fifth reconstruction assumption. Replacing E2 by the local packet requires an independently certified exhaustive elimination or an explicit additional accepted input.

**E3 — Effective positive minima (JPT).** Gabriela Jeronimo, Daniel Perrucci, and Elias Tsigaridas, *On the minimum of a polynomial function on a basic closed semialgebraic set and applications*, arXiv:1112.0544, Theorem 1: for integer polynomial constraints and objective in \(n\) variables, degree bounded by an even integer \(d\), coefficient height bounded by \(H\), and \(s\) constraints, a nonzero objective minimum on a compact connected component has absolute value at least

\[
 \left(2^{4-n/2}\widetilde H d^n\right)^{-n2^n d^n},
 \qquad \widetilde H=\max\{H,2n+2s\}.
\]

Its hypotheses, particularly compactness and nonzero minimum, must be proved before application. `ProvenResults/EffectiveConfinement/PROOF.md`, Sections 2–5, supplies them for the application in Section 6.5 below. `ProvenResults/FourierNeighbourhood/UniformTube/` contains another effective-tube route. JPT does not supply a practically large cutoff merely by being explicit. It enters the final dependency graph only for conclusions or accepting leaves that actually use those modules.

These are mathematical inputs. The arithmetic software and execution assumptions in Section 3 form a separately identified computational trust base.

---

# 2. Reduction to a compactly contained seed search

**Sources:** `NumericalCampaign/REDUCTION.md`; `NumericalCampaign/Domain/verify_reduction.py`; `MinimalConstruction/RECONSTRUCTION.md`; `ProvenResults/Sheets/CONJUGATION.md` and `BRANCH_LEMMA.md`.

## 2.1 Coordinates, invariant, and carrier

Let \(\theta=(\theta_1,\ldots,\theta_4)\in[-\pi,\pi]^4\), with periodic identification, and

\[
 (a,b,c,d)=(e^{i\theta_1},e^{i\theta_2},e^{i\theta_3},e^{i\theta_4}),\qquad
 E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

The complementary Gram matrices are

\[
 G_h=6I-EE^*,\qquad G_v=6I-E^T\overline E.
\]

For a Gram written as

\[
 G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix},
\]

put

\[
 X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad p=X+Y+Z,
 \quad J=2\Re(sr\bar t),\quad W=XY+XZ+YZ-XYZ,
\]
\[
 g=27-3p+J,\quad \eta=9-p+J,\quad
 \chi=W-(p-9)(p-18)+(p-15)J,
 \qquad R=4g^2\eta-\chi^2.
\]

The horizontal and vertical constructions give the same scalar invariants required here. With

\[
 z_\pm=\frac{\chi\pm i\sqrt R}{2g},
\]

the accepted normalized side map \(S\) in `MinimalConstruction/RECONSTRUCTION.md` gives the positive-sheet construction

\[
 B=S(G_h,z_+),\quad C=S(G_v,\overline{z_+})^T,\qquad
 H_+=\begin{pmatrix}E&B\\ C&D\end{pmatrix},\quad
 D=-CE^*\operatorname{adj}(G_h)B/g.
\]

All of the side map's intermediate definitions and its prescribed root convention are those in that file; neither a different reconstruction nor additional product-regularity restrictions are substituted. A4 supplies the relevant strict-domain identities. Failure to enclose a denominator or radical on a box is a failure of that numerical chart on the box, not an exclusion of its seeds.

For a physical matrix \(H\), write

\[
 M(H)=\max_{c}R_c(H),
\]

where \(c\) ranges over the \(\binom63^2=400\) positional corners, dephased before evaluating \(R\).

## 2.2 Exact domain and target proposition

Use subscripts \(h,v\) for the triples from \(G_h,G_v\). Define

\[
 F=\{X_h\ge Y_h\ge Z_h,\;X_v\ge Y_v\ge Z_v,\;
 (X_h,Y_h,Z_h)\ge_{\rm lex}(X_v,Y_v,Z_v)\},
\]

and

\[
 D_0=\{\theta:R(\theta)>0,\quad R(\theta)=M(H_+(\theta))\}.
\]

The target is

\[
 \boxed{\ Q:\quad
 \forall\theta\in D_0\cap F,\quad
 \{I,H_+(\theta)/\sqrt6\}\text{ has no extension to four MUBs}.\ }
\]

The search container is compact, but \(D_0\) is **strict in \(R\)** and need not be closed. The proof uses a finite cover of the closed container and whole-box predicates valid on its relevant physical subset; it does not need to assert compactness of \(D_0\). Nonstrict ordering ties, maximal-corner ties, periodic faces, and positive points arbitrarily close to \(R=0\) must remain covered.

## 2.3 Why Q implies the theorem

Suppose four MUBs exist. Normalize two of them to \(I,H/\sqrt6\). Quartet extendibility is invariant under row/column monomial equivalence and entrywise conjugation. It is also invariant under transposition: exchange the two bases by multiplying the quartet by \((H/\sqrt6)^*\), then conjugate the quartet. These transformations do not require a new reconstruction assumption.

E1 and E2 exclude the \(F_6\) and Tao equivalence classes. By A1, a remaining physical \(H\) has a positive corner. Choose a corner attaining **the maximum** \(M(H)>0\), not an arbitrary strict corner.

The exact invariance identities checked by `NumericalCampaign/Domain/verify_reduction.py` show that the corner invariant is unchanged by its 36 row/column reorderings, transposition, and conjugation. Row reorderings permute the horizontal modulus triple without changing the vertical triple; column reorderings perform the analogous vertical operation. Sort both triples and, if necessary, transpose to enforce the lexicographic condition. Thus the selected maximal corner can be framed in \(F\), without losing maximality.

At this particular strict corner, A2–A3 put the non-Tao completion in a matched pairing. If it is the negative sheet, use the **sheet-conjugation identity**

\[
 H_-(\bar a,\bar b,\bar c,\bar d)
 =P\,\overline{H_+(a,b,c,d)}\,P',
\]

where \(P,P'\) permute only the last three rows and columns. Seed conjugation preserves \(F\) and \(R\); conjugation and permutations preserve the multiset of all corner invariants and quartet extendibility. Consequently an extendible representative \(H_+(\theta)\) exists with \(\theta\in D_0\cap F\), contradicting Q.

The opposite-corner operation in A3 establishes global positive-sheet coverage, but **is not used to assert that an arbitrary opposite corner remains maximal or sorted**. The conjugation argument is what preserves the domain at the chosen maximal corner.

This reduction is proved with retained exact verification. It does not use a measured volume of \(D_0\), a sampled lower bound for \(R\), a classification of all MUB triples, or a completion/balance assumption for an arbitrary partial MUB configuration.

---

# 3. Arithmetic soundness and the geometry represented by a cell

## 3.1 Trusted arithmetic and execution base

**Sources:** `ProvenResults/FastTMInvariant/README.md`; `ProvenResults/CertificateArithmetic/README.md`; `ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md`; `NumericalCampaign/Certification/jlenv_cluster/Manifest.toml`; `requirements.txt`; `ProvenResults/SymmetricSignedCornerPrune/PROOF.md`, Section 5.

The production Julia route uses guarded binary64 Taylor models and outward `IntervalArithmetic.jl` operations. Reconstruction-free side covers and several analytic certificate replays use Arb through `python-flint`. Exact polynomial and combinatorial checks use integer/rational arithmetic, with the particular SymPy or other software dependencies recorded by each verifier.

There is an additional backend: the signed-corner predicate, and the shared Python arithmetic kernel used by SideChartCover, use **`mpmath.iv`/`libmp`** outward intervals. It must be included in the trusted base for any accepted leaf using these predicates. Describing the final proof as trusting *only* Arb and IntervalArithmetic would be inaccurate. The signed-corner module uses 35 decimal digits, explicitly implements complex conjugation to avoid the installed `iv.mpc.conjugate()` problem, and checks outward conversion of endpoints to binary64.

The guarded FastTM theorem assumes IEEE-754 binary64 round-to-nearest, ties-to-even, gradual subnormals, and no unsafe transformations such as `fastmath` that invalidate its rounding model. Overflow, nonfinite quantities, failed domain checks, and exhausted resource limits cannot authorize acceptance. The runtime, package manifests, compiler settings, and environment flags must be bound to the final execution manifest.

The retained cluster environment specifies Julia 1.12.7 in the campaign handoff; the manifest pins, among other packages, IntervalArithmetic 1.0.10, ForwardDiff 1.4.5, and TaylorModels 0.12.0. Retained local SideChartCover tests used Julia 1.12.1 and `jlenv`, not that cluster environment. The root receipt reports Python 3.10.6, SymPy 1.14.0, mpmath 1.3.0, NumPy 2.2.6, and python-flint 0.9.0. These are **recorded environments**, not a guarantee about an unrecorded machine.

[PENDING: final execution environment, arithmetic-library binaries/build information, hardware/rounding policy, and exact manifest hash for every campaign and replay stage; from the frozen run-of-record bundle and final reproduction receipt].

## 3.2 Guarded Taylor-model invariant

A real FastTM model is a total-degree-\(Q\) polynomial \(P\) in four normalized variables, with a nonnegative absolute remainder \(r\), intended to satisfy

\[
 f(s)\in P(s)+[-r,r],\qquad s\in[-1,1]^4.
\]

The guarded theorem in `ProvenResults/FastTMInvariant/README.md` applies for integer \(0\le Q\le12\), finite stored binary64 data, and

\[
 B(P)+r\le M_0=2^{40},\qquad B(P)=\sum_\alpha|P_\alpha|.
\]

The implementation's inexpensive admission test is stronger, using \(2\sum|P_\alpha|+r\le M_0\). Scalar and interval operands have the corresponding stated bounds, direct `up` inputs obey its finite \(2^{100}\) limit, and every intrinsic must pass its nonzero/convergence guards. Arbitrary mutation or shrinking of an existing remainder is outside the theorem.

The exact error estimates use unit roundoff \(2^{-53}\), padding parameter \(2^{-30}\), the minimum subnormal \(2^{-1074}\), and the exact binary64 value represented by `1e-300`. The latter is not silently treated as an exact decimal rational. `ProvenResults/FastTMInvariant/verify.py` checks the finite rational inequalities underpinning the written proof. The invariant is propagated through guarded primitive operations; complex models apply the real invariant componentwise.

`ProvenResults/CertificateArithmetic/README.md` demonstrates that an unrestricted historical padding assertion was false. That counterexample is not evidence that a particular final guarded computation is wrong; it is the reason **unguarded traces cannot be grandfathered into the present theorem**. In the final computation, a guard failure must become an unresolved chart/cell or a refinement request, never a prune.

## 3.3 Rescaled reciprocal and square root

The production source is `NumericalCampaign/Certification/fasttm.jl`, SHA256

```
7e9c0bc3c08a42094d1f1dca34a61238c7a3510f091db189fa7947f1c2f35baa
```

`ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md` identifies this source as the previous guarded implementation plus the documented rescaled `inv`/`sqrt` blocks and header. Its mechanical comparison and the retained replay are important because the theorem applies to the loaded source, not merely to a file with a familiar name.

For a represented quantity \(a=c_0+h\), with exact stored binary64 constant \(c_0\), the implementation forms the normalized perturbation

\[
 u=h/c_0\ \in\ Lh,\qquad L=\operatorname{interval}(1/c_0),
\]

where reciprocal formation is outward: the implementation uses `inv(interval(c0))`, not a point interval formed after rounded binary64 division `interval(1.0/c0)`. It bounds \(|u|\) by \(x=\texttt{hbound}(1+u)<1\). This is a bound for the represented perturbation **including its remainder**, not just its polynomial coefficients. The mathematical expansions are

\[
 (c_0+h)^{-1}=c_0^{-1}\sum_{k=0}^{Q}(-u)^k+T_{\rm inv},
 \qquad |T_{\rm inv}|\le |c_0^{-1}|\frac{x^{Q+1}}{1-x},
\]

and, for \(c_0>0\),

\[
 \sqrt{c_0+h}=\sqrt{c_0}\sum_{k=0}^{Q}b_k u^k+T_{\rm sqrt},
 \quad b_k=\binom{1/2}{k},\qquad
 |T_{\rm sqrt}|\le\sqrt{c_0}\,|b_{Q+1}|\frac{x^{Q+1}}{1-x}.
\]

The reciprocal identity is the geometric series. For the square root, the absolute successive binomial coefficients decrease from the first omitted term onward, so the displayed geometric majorant applies. The conditions on \(c_0\) and \(x\) ensure the required real branch is defined throughout the represented range. Outer prefactors, coefficients, and tails are enclosed outward, and the finite polynomial is evaluated using guarded primitives. Polynomial truncation and floating-point error are covered by those primitives; the analytic tail is additional, not a replacement for their remainder accounting.

Rescaling avoids unnecessary growth of coefficients proportional to \(c_0^{-(Q+1)}\). It does not weaken the guard theorem, permit cancellation of untracked error, or justify a model on a box where \(x\ge1\).

`Verification/fasttm_rescaled_2026-09-30/guarded_replay/summary.json` reports `PASS`, the above instrumented/production hash, unchanged source, and **one local carrier replay plus controls**. Its scope is expressly not all campaign cells. The regression counts in the note, including order-12, subnormal, and guard-rejection controls, support implementation checking; sampled BigFloat agreement is not the universal enclosure proof.

[PENDING: final independent mathematical/code review of the rescaled-intrinsic argument against this exact production hash, and the release arithmetic receipt; from the independent FastTM review and final guarded replay].

## 3.4 Branches and alternative carrier enclosures

`ProvenResults/Sheets/BRANCH_LEMMA.md` proves that cube-root choices and **defined** square-root reversals induce the stated side permutations. At the stated discriminant-zero locus the regular branches remain covered. It does not authorize evaluating a reversed raw formula whose denominator vanishes: at \(s=0\), the reversed \(\rho'\) branch can be undefined even for a strict seed. The allowed-branch qualification must be preserved when interpreting A4 and when changing local charts.

`ProvenResults/StrictSideGuards/` proves particular strict-side guard identities; it does not replace the whole accepted reconstruction theorem. If direct `hplus_tm` construction fails, the seed is retained. A separately validated physical side chart may supply a carrier model, but it must satisfy the same whole-box containment contract before being injected into `CoverCell(H)`; Section 6.2 describes the pending integration.

## 3.5 Seed boxes, enlargement, and DyadicTiling

The campaign stores binary64 centers and nominal half-widths. Let \(p=\operatorname{RN}(\pi)\). At level \(\ell\), the nominal half-width is \(p/2^\ell\), and the acceptance routines work on the enlarged box with binary64 radius

\[
 e_\ell=\operatorname{RN}(p/2^\ell+2^{-40}).
\]

Arb routines may form an outward interval radius enclosing the exact sum instead. In either case the recorded box and acceptance box must be compared as exact represented quantities; formulas with the same printed spelling are not enough to establish containment.

`ProvenResults/DyadicTiling/README.md` and `verify.py` prove that the enlarged stored cells contain their **ideal dyadic cells** in the exact phase cube \([-\pi,\pi]^4\), for the specified recursive center updates through level 13. Their bounds include center error at most \((\ell+1)2^{-52}\), nominal-radius error at most \(2^{-52-\ell}\), and the enlargement-rounding error. The bound

\[
 (\ell+2)2^{-52}+2^{-52-\ell}<2^{-40},\qquad \ell\le13,
\]

is sufficient. The verifier enumerates 16,383 one-dimensional nodes with exact rational checks and certified bounds for \(\pi\); the Cartesian product gives the four-dimensional result.

There are **two different coverage contracts**:

* For a global ideal dyadic tree, it is enough that every accepting enlarged terminal box contains its assigned ideal cell and that every ideal child address occurs exactly once.
* When an already enlarged parent is itself the input obligation, its refined boxes must cover **that enlarged parent**, including its outer collar. Ideal-child containment alone does not prove this stronger assertion.

`ProvenResults/CampaignLayerCoverage/geometry.py` and `collar.py` address the second contract. One must not silently switch contracts midway through the ledger. An adaptive depth beyond 13 needs either a proved extension of the finite DyadicTiling bounds or a different exact endpoint-cover argument. The fact that another audit loops to level 15 is not such a theorem.

Seed radius is a four-dimensional **angle** half-width. It is never a matrix/projector radius merely because both are denoted by a small number. The precise conversions used for Fourier tubes appear in Section 6.4.

---

# 4. Domain expansion and the first layer prune

## 4.1 Expansion certificate to be retained

**Sources:** `NumericalCampaign/Campaign/driver.jl`; `NumericalCampaign/Certification/domain.jl`; `NumericalCampaign/Campaign/cluster/README.md`; `NumericalCampaign/Campaign/cluster/audit.py`; `NumericalCampaign/Campaign/REPORT_2026-09-30.md`.

Expansion begins from the phase cube and its retained level-6 job selection. At each node the driver either proves an exclusion, assigns a work cell, assigns a branch-layer cell, or visits all 16 dyadic children. The intended exclusion reasons are:

| Recorded reason | Required mathematical meaning |
|---|---|
| `F_out` | An outward strict inequality excludes the ordering domain \(F\). Equality cannot be discarded. |
| `R_out` | The outward bound excludes positive \(R\). The production strict-negative test is sufficient; another predicate may separately justify a nonpositive upper endpoint. |
| `BC_out` | A reconstruction-free complementary-side feasibility test excludes the necessary physical completion. |
| `D0_out` | A rigorously enclosed competing corner is larger than the selected leading corner, or another explicitly recorded physical \(D_0\)-exclusion applies. |
| Work cell | The seed obligation remains and is assigned to the full common-ray cover certificate. |
| `D0_singular` / layer cell | A chart, radical, denominator, or Taylor-model guard was inconclusive. No physical point is excluded on this basis. |

The finite numerical sampling used to choose splits or forecast difficulty does not certify any of these accepting reasons. Proofs apply on the enlarged cell, not just at its center. Every root not emitted as a level-6 job must already have a valid prune witness; the list of jobs alone does not prove the reduction of the original phase cube to those jobs.

[PENDING: the full level-0-to-level-6 preparation ledger or a deterministic exact replay establishing its complete branch structure and sound discarded roots; from the frozen job-generation inputs and production driver].

## 4.2 Run-of-record counts

The following values are supplied for `nofourmubs_rescaled_2026-09-30` and are **fixed reported run facts**, not predictions:

| Expansion item | Reported final value |
|---|---:|
| Level-6 jobs | 340,972 |
| Work cells | 8,652,805 |
| Branch-layer cells | 14,020,093 |
| Existing expansion audit | PASS |
| Survivors of the first SideTriplePrune layer pass | 623,187 |
| Layer cells removed by that pass | 13,396,906, by subtraction |

The relevant remote run directory identified by the handoff is

```
~/Documents/QuantumPhysics/ClusterScripts/nofourmubs_rescaled_2026-09-30
```

The full current `cells.txt`, `layer.txt`, production task outputs, and audit logs are not included in the supplied ZIP. Accordingly this document does not claim that its writer independently replayed the reported expansion or layer population.

[PENDING: archive and hash the completed rescaled `audit_expand.log`, expansion task outputs, `cells.txt`, `layer.txt`, job list, frozen manifest, and layer outcomes; from the named run directory, with a receipt under `Verification/`].

[PENDING: final rescaled per-level and per-reason prune counts, missing/duplicate job counts, grid/coordinate checks, and the exact allocation of work and layer levels; from the frozen expansion ledger and its audit].

The final audit must additionally establish the spatial coverage obligations in Section 7. The existing `audit.py expand` checks aggregate accounting, but is not by itself a complete spatial partition checker.

The guarded predecessor had 8,652,808 work cells and 14,426,812 layer cells, and later 976,882 layer survivors. These are not the counts above. Its extra layer cells include artificial guard failures from the old intrinsic expansion. No predecessor count, acceptance record, or manifest may be silently substituted just because another count happens to agree.

## 4.3 SideTriplePrune and the survivor ledger

**Sources:** `ProvenResults/CornerBounds/SideTriplePrune/README.md`, `PROOF.md`, `triple_prune.py`, and `verify.py`; `ProvenResults/CornerBounds/SideColumnPrune/`; `NumericalCampaign/Campaign/cluster/layer_prune.py`.

For any physical side block \(B\), let \(G=BB^*\) and write its normalized columns as \(v_j=(1,x_j,y_j)^T\). Distinct column positions satisfy

\[
 v_j^*\operatorname{adj}(G)v_k=0\qquad(j\ne k).
\]

The adjugate identity is polynomial and remains valid when \(G\) is singular. The side-column moment identities also fix the sums of the \(x_j\), the \(y_j\), and their mixed products. Once two possible columns are selected, the missing third column must have the prescribed sums, unit coordinates, and the remaining Gram moments.

SideTriplePrune covers the whole side phase torus, uses the complementary-corner invariant to remove columns incompatible with a maximal leading corner, and tests all remaining possible side triples against these necessary identities. **Repeated labels and graph loops are allowed here.** Unlike the common-ray labels of Section 5, side-column boxes have no automatic capacity-one property. The enumerated triples are multisets, not just triples of distinct boxes. This distinction prevents the loss of legitimate physical side assignments.

If no compatible triple remains after complete interval coverage, the whole seed box contains no physical maximal completion. This result uses physical Hadamard identities and the CornerBounds theorems, not A1–A4 or a choice of radical sheet.

`layer_prune.py` reads the fixed-width layer records, enlarges the level-dependent seed radius, and tries the proved side prune at depth 8 and then depth 10. Exceptions and unsuccessful searches give `ok=false`. Its JSONL row records `cell`, `job`, `level`, `theta`, `ok`, `reason`, `R_cap`, `depth`, and elapsed time. Neither the cached cap nor a partially written `.part` file alone is an accepting certificate.

For the final population, every one of the 14,020,093 input identities must have exactly one authoritative outcome tied to the original coordinates and frozen predicate. All 13,396,906 `ok=true` rows require sound outward acceptance under that predicate; the 623,187 remaining IDs are the branch input, not a sample from it.

[PENDING: complete ID/coordinate/hash audit and the specified acceptance replay or certified execution record for the rescaled first layer pass; from `layer.txt`, `results/layer`, and the final survivor inventory].

---

# 5. Work-cell certification by the accelerated cluster cover

## 5.1 Universal common-ray cover theorem

**Sources:** `ProvenResults/CommonRays/ClusterCover/PROOF.md`; `NumericalCampaign/Certification/cover.jl`; `NumericalCampaign/Certification/cover_accelerated.jl`.

Fix an enlarged seed box and a validated family of carrier models enclosing the relevant physical \(H(\theta)\) for every seed in it. A ray unbiased to \(I\), modulo global phase, can be written

\[
 v(\phi)=\frac1{\sqrt6}(1,e^{i\phi_1},\ldots,e^{i\phi_5})^T,
 \qquad \phi\in\mathbb T^5.
\]

It is also unbiased to \(H/\sqrt6\) exactly when the six raw column sums satisfy

\[
 S_j(\theta,\phi)=\sum_{k=0}^5\overline{H_{kj}(\theta)}e^{i\phi_k},
 \quad\phi_0=0,\qquad |S_j|^2=6\quad(j=0,\ldots,5).
\]

The search partitions the entire closed phase torus, including periodic seams. A phase box is removed only when an outward enclosure of one of these equations omits 6 uniformly over the seed box. All phase boxes not so removed are covered by retained labels \(C_1,\ldots,C_N\). Labels may overlap, may contain several roots, or may contain none. No proof of a finite number of common rays, no nonsingular Jacobian, and no exact root enumeration is required.

A label has **capacity one for a hypothetical quartet** if every pair of normalized rays in that label has squared overlap strictly greater than \(1/6\). Two distinct vectors among the two missing bases would have overlap squared either 0 or \(1/6\); therefore they cannot share such a label.

For every pair of labels, compute an outward interval containing all possible squared overlaps of their rays for every carrier in the seed box. An orthogonality edge O is allowed if 0 is not excluded. An unbiasedness edge U is allowed if the exact rational \(1/6\) is not excluded. Uncertain edges are retained.

**Cluster-cover exclusion theorem.** If every common ray is covered, all labels satisfy the capacity condition, and the graph has no pair of disjoint O-six-cliques with all cross-pairs U-compatible, then the whole seed box is quartet-free.

**Proof.** The columns of two additional MUBs would give 12 common rays. Assign each to a containing label. Capacity forces 12 distinct labels. Each basis gives an O-six-clique, and all cross-pairs are U-compatible. This contradicts the exact graph test. The proof permits extraneous roots, empty labels, spurious edges, and cross-parameter overenclosure; all such relaxations only make exclusion harder. ∎

## 5.2 Sound accelerations

The acceleration does not change the preceding theorem or replace interval acceptance with a floating-point heuristic.

**Cartesian equation exclusion.** `ProvenResults/CommonRays/ClusterCover/CARTESIAN_EXCLUSION.md` encloses rotated complex column sums in rectangles using coefficient/seed variation bounds and complete phase-arc bounds. If the interval for the squared modulus misses 6, the box is excluded. Mixed variation terms are bounded; the original `verified_excluded` test remains a fallback. A suggested rotation or split may be floating-point, but the accepting rectangle is outward and covers the original box.

**Sharp label capacity.** `SHARP_CAPACITY.md` gives, for label phase half-widths \(r_k<\pi/4\),

\[
 \min 36|\langle v,w\rangle|^2
 =\left(1+\sum_{k=1}^5\cos(2r_k)\right)^2
  +\min_{\varepsilon_k\in\{-1,1\}}
       \left(\sum_{k=1}^5\varepsilon_k\sin(2r_k)\right)^2.
\]

Only 16 sign patterns are needed modulo simultaneous reversal. An outward lower bound greater than 6 proves capacity. The uniform threshold is \(\tfrac12\arccos(1/4)\); the retained implementation also has simpler sufficient bounds. The criterion is about **ray phase widths**, not seed widths.

**Label refinement and pair bounds.** `LABEL_REFINEMENT.md` partitions retained phase-box indices into narrower containing labels, verifies every membership/containment relation, and intersects separately sound pair-overlap enclosures. Failure to form admissible labels is inconclusive. Memoization and proposal data must remain tied to the carrier/box for which they were computed.

`ProvenResults/CommonRays/ClusterCover/verify_acceleration.py` checks the associated identities and controls. Positive Fourier-ray controls must remain possible, a true compatible 6+6 graph must not be excluded, and budget failures must not return success. The written theorems, not these finite controls alone, supply universal scope.

## 5.3 Production application and audit obligations

The run-of-record wrapper `NumericalCampaign/Campaign/cluster/run_task.sh` selects

```
CERT_COVER_ACCELERATED=1
CERT_FASTMAX=0
CERT_CHILD_FASTMAX=0
CERT_COVER0=120
```

unless explicitly overridden. The zero settings disable ray-first paths whose floating acceptance is not part of this proof. Final headers must prove that no unapproved acceptance path was enabled. The acceleration source, carrier source, FastTM source, all imported helpers, and numerical environment must be bound to the manifest. “One code hash occurred” is weaker than “the approved source was used.”

A work cell may be accepted directly or split into a complete descendant cover. An unresolved leaf, timeout, node cap, singular carrier chart, or failed graph test remains an obligation, even if every other leaf passed. A later pass can supersede an earlier cell result only with explicit parent identity and a complete replacement subtree.

| Required final work result | Status |
|---|---|
| Original work obligations | 8,652,805, reported run fact from Section 4 |
| Directly accepted original cells | [PENDING: final count from authoritative certification JSONL after supersession] |
| Original cells closed by descendant covers | [PENDING: final count from exact parent/child coverage audit] |
| Accepted terminal leaves, by level and method | [PENDING: final counts from the consolidated work ledger] |
| Inconclusive original cells and terminal leaves | [PENDING: actual final counts; release requires both to be zero, from the consolidated audit] |
| Main and subsequent pass source hashes | [PENDING: complete approved source/dependency manifests from the frozen bundles] |
| Complete work acceptance/coverage receipt | [PENDING: receipt under `Verification/` binding every work obligation and the final manifest] |

The existing `cluster/audit.py certify` is useful for task accounting and declared pass supersession. It is not sufficient on its own to establish the exact descendant geometry or even the existence of a certificate subtree for every `done` record; see Sections 7 and 10.

## 5.4 Retained local evidence is not the production result

`Verification/Campaign_cartesian_cover_2026-09-29/README.md` records a paired benchmark on 12 retained difficult cells: both methods succeeded; the accelerated method used 3,860,037 nodes and 131.96 local CPU-seconds, versus 14,710,108 nodes and 647.15 CPU-seconds. Two additional reference cubes also certified in accelerated mode, including the X6 reference at nominal seed radius \(\pi/512\), enlarged by \(2^{-40}\).

The g3 reference replay used the original interval equation verifier and a separate 256-bit overlap graph. These are useful mechanism and regression checks. The benchmark was not a random campaign sample; its frozen historical sources and timings are not a substitute for the rescaled run's full acceptance records.

## 5.5 Independent replay of the completed work run

The retained replay driver is `NumericalCampaign/Campaign/cluster/replay_full.jl`. It recomputes the phase cover with the original interval exclusion test, rebuilds labels and overlap information, and separately constructs a 256-bit graph with an independent clique enumeration. It includes a positive compatible-graph control.

Its actual command-line interface is

```
replay_full.jl K [SEED] [RESULTS_SUBDIR=certify_full]
```

not `replay_full.jl K certify`. The latter attempts to parse `certify` as an integer seed. The final invocation must identify the correct source/result directory and selected pass policy.

The current sampler chooses a task file and then a certified leaf, **with replacement**. This is not a uniform sample without replacement from all final certified leaves, and it does not automatically resolve all superseded passes. The independent graph's older capacity sufficient bound can be inconclusive on a label admitted by the sharper criterion; that outcome must be distinguished from a false acceptance.

The script prints disagreement information but does not make its final process exit code a reliable failure flag. A final replay wrapper must explicitly check the number of attempted, completed, inconclusive, and disagreeing cases, not just shell success or the presence of an “agree” string.

[PENDING: replay population and supersession policy, requested and distinct sample sizes, seed/selection algorithm, selected leaf IDs, approved source hashes, all result counts, and independent replay receipt; from a frozen completed-work replay under `Verification/`].

[PENDING: final independent replay CPU/wall cost and peak memory; from replay logs and resource accounting].

Sampling is a cross-check of implementation, not a proof about unselected leaves. The universal conclusion still requires the guarded implementation theorem, valid accepting traces, and complete finite coverage. Any intended exhaustive acceptance replay must be identified as such and accounted for separately.

---

# 6. Branch-layer closure

The branch starts with exactly the 623,187 survivor IDs from Section 4. It must close those original obligations, not merely obtain good rates on a related sample. Every local theorem below has a stated scope; **outside strict \(D_0\)**, **outside physical \(D_0\)**, **quartet-free**, and **\(D_0\Rightarrow R>r\)** are different conclusions.

## 6.1 The branch95 refinement pass and existing tests

**Sources:** `NumericalCampaign/Campaign/branch95/README.md`; `expand_task.sh`; `triple_leaves.py`; `merge_a.py`; `merge_full.py`; `ProvenResults/CornerBounds/CampaignSecondPass/`; `ProvenResults/CampaignLayerCoverage/`.

“branch95 pass” names a refinement workflow, not a retained theorem that the branch is already closed. Its stages are:

**A — Refine and prune.** Reuse the frozen production driver on survivor roots with `JOBLEVEL=9`. The approved full-pass recipe uses `EXPAND_EXTRA=4`, so prune refinement can reach level 13, and `EXPAND_SINGULAR_EXTRA=2`, so the designated singular refinement reaches level 11. The earlier introductory recipe in the README describes a smaller prune depth; it is not the full-pass setting.

**B — Re-run physical side pruning.** Apply the unchanged SideTriplePrune recursively to level 13. `triple_leaves.py` records, for each original layer leaf, terminal hexadecimal child paths and a code: `T` means a physical \(D_0\)-exclusion, `O` means unresolved. Every child address has 16 choices, with the first coordinate varying fastest as in the Julia driver. Complete prefix coverage, not merely the number of path tokens, is required.

**C — Certify newly generated work cells.** Apply production cover-only batch certification. The full-pass recipe uses `CERT_COVER0=30`, 64 work cells per task; its distinct budget is not a different mathematical criterion. All failures remain in the ledger.

**D — Classify unresolved level-13 boxes.** An outward negative \(R\) bound can exclude a box. Otherwise the outward interval distinguishes `posR` with \(\inf R>1\), suitable for regular side-chart work, from the residual branch. This classification is a routing decision, not a certificate of quartet exclusion.

The retained README describes the full pass in `nofourmubs_branch95_full_2026-10-01`, approved on 30 September. It records pilot measurements per 1,000 survivors: about 92% of survivor volume removed by stage A, 65% of singular-leaf volume removed by stage B, and about 550 stage-C work cells certified without a pilot failure. The approximate 2.8% remaining volume is a pilot observation, **not** a final count, an exact volume statement, or a guarantee of a 95% rate.

Other retained tests can be used when their full-box certificates are attached. `ProvenResults/CornerBounds/CampaignSecondPass/README.md` reports 93 of 512 held-out original-size cells excluded by complete additional covers, while its conditional R-gap result proves \(D_0\Rightarrow R>1\) on 56 of 202 tested cells. The latter removes only the low-R portion: it does **not** close the positive-R portion. Historical IDs must be matched to the new exact coordinates before reuse.

[PENDING: full branch95 freeze, original-to-descendant mapping, A/B/C/D counts, surviving exact boxes, per-method accepted-leaf totals, complete path audit, and acceptance receipts; from the named full branch95 run and its consolidated outputs].

[PENDING: complete bridge from the rescaled 623,187-ID inventory to branch95 input order and from branch95 descendants to subsequent side-chart/signed-corner/analytic ledgers; from the inventory manifests and exact-coordinate reconciliation].

## 6.2 Side-chart carrier provider

**Mathematical sources:** `ProvenResults/RegularSideCharts/README.md`; `ProvenResults/ChartConditioning/RESULTS.md`; `ProvenResults/SideChartCover/PROOF.md`.

**Implementation/status sources:** `ProvenResults/SideChartCover/README.md`, `provider.jl`, `cover_model.jl`; `Verification/branch_helper_2026-09-30/README.md`.

For the physical six-phase side moment map, the exact determinant identity is

\[
 (\det J)^2=R/64.
\]

Thus a physical side is locally regular when \(R>0\), even when a particular radical implementation is singular on the seed box. The regular-side theorem does not itself provide a uniformly wide chart or solve the quartet problem.

The side-chart provider proposes polynomial phase models and validates them by a uniform contraction argument. With preconditioner \(A\), the map \(q\mapsto q-A(\Phi(q)-y(\theta))\) must map the proposed side-phase box into itself and have contraction bound \(\lambda<1\). Its outward residual and radius tests must hold for every seed in the enlarged input box. A new proposed polynomial is not an enclosure until that validation succeeds.

To exhaust physical completions rather than merely follow a numerically chosen branch, the construction validates both normalized side orbits in each orientation and separates them against all six side-column permutations. A2 then supplies exhaustion. The provider retains all four horizontal/vertical pairings, with the ordinary row/column permutation equivalences accounted for. All relevant pairings must pass the common-ray cover. It is not sound to declare a floating sheet label to be the physical one and discard the other models. Overenclosing a nonflat pairing is harmless; omitting a possible physical pairing is not.

For the completion block, use \(C^*D=-E^*B\). With an exactly represented finite preconditioner \(Y\), a polynomial proposal \(P_D\), and

\[
 \lambda\ge\|I-YC^*\|_\infty<1,\qquad
 Z=Y(C^*P_D+E^*B),
\]

the columnwise residual gives an enclosure of the form

\[
 \|(D-P_D)_{:,j}\|_\infty
 \le\frac{\sup\|Z_{:,j}\|_\infty}{1-\lambda}.
\]

This controls the completion without division by \(\sqrt R\). Vertical normalized seed variables must be swapped back to the original common seed coordinates before combining the models. The side-phase radii, completion entry errors, and four seed-angle radii are distinct quantities.

`ChartConditioning` proves existence of a well-conditioned auxiliary split, but that does not certify the specific split used by a proposed model. Either the actual chosen inverse bound is validated, or an explicitly recorded rechart is used without pretending that the new corner is still the maximal \(D_0\) corner.

**Current implementation gate is not passed.** The helper's frozen construction report gives 617 constructed models out of 1,000 inputs, but these are not 617 quartet certificates. The later local verification in `Verification/branch_helper_2026-09-30/README.md` records:

* the delivered Python verifier fails with `NameError: moments_poly_interval` in its parallel worker;
* the delivered `test_regular.jl` fails on Julia global soft scope; a separately retained fixed test passes on four regular boxes;
* the unchanged Julia pilot certifies 32 of its first 40 inputs, with eight `side_contraction` failures, at a reported mean 39 CPU-seconds per input on the local environment.

These are three different populations/outcomes. The module is not registered in the current root verifier. The 32 local end-to-end successes neither repair the Python verifier nor close the full positive-R branch population.

[PENDING: additive corrected SideChartCover release, passing full Python verifier and Julia regression, cluster-environment pilot, root registration, frozen provider/cover hashes, and approved acceptance contract; from the side-chart integration receipt].

[PENDING: production side-chart population, all-completion coverage for each accepting box, successful and unresolved counts, and final receipt; from the positive-R branch ledger after integration].

## 6.3 Symmetric signed-corner pruning

**Sources:** `ProvenResults/SymmetricSignedCornerPrune/PROOF.md`; `predicate.py`; `interval_core.py`; `verify.py`; `Verification/branch_helper_2026-09-30/root_check/`.

This predicate uses A2 and the side identities in A4, but not global A1 or positive-sheet surjectivity A3. The physical complementary-corner invariant is the square of a real signed invariant \(f\). Averaging suitable mixed-corner signed invariants over a side triple, and using its exact moments, gives

\[
 m_{jk,\sigma}=\alpha_{jk}+\sigma\beta_{jk}\sqrt R,
 \qquad \sigma\in\{-1,+1\},
\]

with explicit rational coefficient functions in the seed phases. The algebra and coefficients are in the module; no root selection by floating sign is assumed. Since the absolute mean is no larger than the largest absolute member,

\[
 M(H)\ge m_{jk,\sigma}^{\,2}.
\]

A physical strict maximal completion therefore needs a sign \(\sigma\) for which all three pair inequalities \(m_{jk,\sigma}^{\,2}\le R\) hold simultaneously. The transposed orientation has the same necessary condition, with its own permissible sign.

For a whole seed box, let \(R\in[L,U]\), \(\alpha_{jk}\in A_{jk}\), and \(\beta_{jk}\in B_{jk}\). If \(U\le0\), no strict point is present. Otherwise set

\[
 Q_R=\sqrt{[\max(0,L),U]}.
\]

If, **for each sign** \(\sigma\), at least one pair satisfies

\[
 \inf\bigl(A_{jk}+\sigma B_{jk}Q_R\bigr)^2>U,
\]

the box is outside strict \(D_0\). Different pairs may witness the two signs. All coefficient denominators must be separated from zero on the whole box. The square root is used only to enclose the positive physical subset; a negative-R part of a straddling box does not invalidate the implication.

The module bounds coefficients with outward first/second derivative jets and the integral Taylor remainder. Failure of an interval inequality, denominator bound, or budget is inconclusive.

The retained deterministic pilot selects 1,000 specified lines from an older 338,054-record representative list. It excludes **511** boxes, including **172** whose recomputed R enclosure crosses zero, and retains six known physical \(D_0\) negative controls. Its class breakdown is:

| Nearest F6 class, metadata in units of \(\pi/3\) | Pilot inputs | Excluded | Still unresolved |
|---|---:|---:|---:|
| (0,0,2,4) | 88 | 88 | 0 |
| (0,2,3,0) | 318 | 128 | 190 |
| (0,2,3,2) | 49 | 39 | 10 |
| (1,2,2,4) | 207 | 10 | 197 |
| (2,4,4,2) | 321 | 229 | 92 |
| (4,5,0,3) | 17 | 17 | 0 |
| **Total** | **1,000** | **511** | **489** |

Nearest-class metadata is not an acceptance hypothesis. These proportions are not a probability guarantee or a claim about the final branch95 population. The retained root check passes; this is a proved useful whole-box strict-domain prune, not a complete closure theorem.

[PENDING: source-pinned signed-corner evaluation on the authoritative residual ledger, all accepted witnesses and replay, exact remaining population, and final production cost; from the post-branch95 residual run].

## 6.4 Near-F6 results: conditioning, matrix tubes, and seed lifts

### A. Radius conventions

For normalized column vectors \(u_j,v_j\), the column-projector distance is \(\||u_j\rangle\langle u_j|-|v_j\rangle\langle v_j|\|_2\). For unit vectors,

\[
 \||u\rangle\langle u|-|v\rangle\langle v|\|_2
 =\sqrt{1-|\langle u,v\rangle|^2}\le\|u-v\|_2.
\]

Thus a certified maximum normalized-column Euclidean error bounds the corresponding projector error after the specified alignment. A maximum **entry-phase** bound on all 25 free phases of a fully dephased matrix can similarly bound its normalized-column error. A bound on only the four seed phases cannot do so without a completion-lifting theorem.

| Quantity | Meaning and units |
|---|---|
| \(r_{\rm seed}\) | Half-width in the four seed angles, in radians, with periodic/frame transformations explicitly applied. |
| \(t\) or \(\rho_{\rm matrix}\) | Maximum phase perturbation of all 25 free entries of an aligned, fully dephased physical matrix. |
| \(r_{\rm col}\) | Maximum Euclidean error of normalized columns. |
| \(r_{\rm proj}\) | Maximum operator-norm error of normalized column projectors. |
| \(R(\theta),M(H)\) | Invariants, not distances or radii. They agree for a physical maximal leading corner. |

### B. Well-conditioned auxiliary charts and local matrix rigidity

`ProvenResults/ChartConditioning/RESULTS.md` proves that, for fixed three rows of a physical order-six Hadamard, one of the ten unordered column \(3+3\) splits has every one of its four \(3\times3\) blocks satisfying

\[
 |\det Q|^2\ge27/10,\qquad
 \operatorname{spec}(QQ^*)\subset(1/4,23/4),
 \quad\|Q^{-1}\|_2<2,\quad\operatorname{cond}_2(Q)<\sqrt{23}.
\]

This includes \(R=0\) and gives stable completion comparisons after matching the actual blocks. It is an auxiliary-chart existence theorem, not a claim that the originally maximal corner is always so conditioned.

The completion constants are explicit. For two physical matrices in a common partition, with the reference conditioned as above, set

\[
 e^2=\|E-E_0\|_F^2+\|B-B_0\|_F^2+\|C-C_0\|_F^2.
\]

Then

\[
 \|D-D_0\|_F\le6\sqrt2\,e,\qquad
 \|H-H_0\|_F\le\sqrt{73}\,e,\qquad
 \|H/\sqrt6-H_0/\sqrt6\|_F\le\sqrt{73/6}\,e.
\]

If all 27 entries of the three matched blocks have error at most \(\varepsilon\), the normalized-column and projector errors are bounded by \(3\sqrt{73/2}\,\varepsilon<19\varepsilon\). A **common simultaneous matching** of the three blocks is essential; four-seed proximity alone does not establish it. These constants supply one justified matrix-error conversion, while the residual provider in Section 6.2 can certify a sharper box-specific one.


In a full-matrix F6 phase chart, the module also proves \(M\ge4\rho_{\rm matrix}^2\) for \(\rho_{\rm matrix}\le1/40\). Within its smaller stated matrix neighbourhood it eliminates the stationary corner classes as maximal endpoints, leaving the two active classes \((4,5,0,3)\) and \((1,2,2,4)\), in units of \(\pi/3\). The hypothesis is proximity of the **whole physical matrix**, not merely the four seeds or a small leading-corner R.

`ProvenResults/FourierCornerRigidity/PROOF.md` strengthens this local information: in its aligned F6 phase chart, \(M\ge100t^2\) for \(t\le1/100\); within \(0<t\le1/256\), the 220 stationary corners have R strictly below the global maximum. It also gives special nearly rank-one \(2\times3\) corner criteria. Under its stated physical maximal-corner hypothesis, the radian threshold \(h\le2^{-14}\) forces equivalence to F6; the larger threshold \(h\le1/2560\), combined with the F6 tube, gives quartet exclusion. The implementation's rational-turn thresholds are different numbers and must be converted by \(2\pi\), not read as radians.

These local statements do not by themselves show that every seed box with a small outward R cap is in such a matrix chart. That is the role of a validated lift or the separate global confinement theorem below.

### C. Matrix exclusion tubes

The retained practical Fourier-family tube has projector radius **\(1/16384\)**, uniformly over the Fourier family, its transpose, and the stated equivalences. Its proofs and finite cover are in `ProvenResults/FourierNeighbourhood/PracticalTube/`; its partition and audit have retained receipts. The special expanded F6 tube has projector radius **\(1/30\)**, proved in `ProvenResults/FourierNeighbourhood/ClusterTube/EXPANDED.md` and replayed by `verify_expanded.py`.

The latter is not a uniform \(1/30\) tube about the whole Fourier family. Regional improvements in `ProvenResults/FourierNeighbourhood/WideFamilyTube/` have their own reference domains and radii. Any accepting leaf using one must cite the specific regional certificate, not inherit the F6 number by analogy.

### D. The existing production-width seed cube

`ProvenResults/FourierNeighbourhood/SeedLifting/PRODUCTION_CUBE.md` proves the following **without A1–A4** for physical maximal carriers:

\[
 \theta_*=(4\pi/3,5\pi/3,0,\pi),\qquad
 |\theta_i-\theta_{*,i}|\le\pi/512
 \quad\Longrightarrow\quad H\text{ is not a quartet edge}.
\]

Periodic shifts and all 72 leading-corner frames are allowed with their exact transformed coordinate conditions. Every physical maximal completion is covered, including physical \(R=0\) points. This is not a theorem about all seeds with \(R<1/5\).

The exact binary partition has **227 leaves**: **207** completion lifts enter the F6 tube with normalized-column Euclidean error \(<1/30\), and **20** leaves contain no physical \(D_0\) carrier. There are no unresolved leaves and no acceptance based only on discarding strict-R-zero points. Distinct paths, prefix-freeness, and the exact identity

\[
 \sum_{\text{leaves}}2^{-\text{path length}}=1
\]

prove the finite partition's coverage. A separate 160-bit replay reconstructs coordinates as exact rational multiples of \(\pi\), independently of the 96-bit discovery arithmetic. The receipts and complete partition are in `Verification/T2_production_seed_lift_2026-09-29/`.

The whole-cube bound is \(\sup R<0.192074<1/5\). Its role is a bound **inside that specified seed cube**, not the converse implication that all small-R carriers lie in it.

An enlarged production cell at the same center has radius slightly larger than \(\pi/512\). It is therefore **not automatically contained** in this closed theorem cube. One must verify exact whole-box/frame containment, refine the ideal obligation appropriately, or retain and close its outer collar. Merely matching the nominal radius does not close the enlarged cell.

### E. Other retained F6 seed neighbourhoods

`ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md` and `EXTENDED_ANALYTIC_RADII.md` give the following physical-maximal seed cubes. The last two entries use the proved extended radii rather than the smaller earlier values.

| Representative, in units of \(\pi/3\) | Certified seed-angle half-width in radians | Scope |
|---|---:|---|
| (4,5,0,3) | \(\pi/512\) | Production cube above |
| (0,2,3,0) | \(1/1024\) | Retained matched-side cover lift |
| (0,2,3,2) | \(1/2048\) | Retained matched-side cover lift |
| (1,2,2,4) | \(1/65536\) | Retained complete residual lift; not production width |
| (2,4,4,2) | \(2^{-39}\) | Extended nearly-F3 analytic argument |
| (0,0,2,4) | \(2^{-43}\) | Extended rank-one rechart argument |

The exact 72-frame maps have maximum row absolute sum four; accordingly the extended results imply a uniform seed radius \(2^{-45}\) at every F6 corner seed. This is not the same statement as six equally large coordinate cubes. In particular, some radii are below the campaign's \(2^{-40}\) guard, so further subdivision with that fixed guard does not automatically activate them.

The corresponding extended Fourier-reference corollary uses \(M(\text{reference})\le2^{-86}\) and seed displacement at most \(2^{-46}\). Its M is the maximum invariant of a **Fourier-family reference**, not the leading R of an arbitrary physical carrier. `FOURIER_MAX_R.md` and `EXTENDED_ANALYTIC_RADII.md` keep this distinction explicit.

`ZERO_NEIGHBOURHOOD.md` and its implementation add a finite non-F6 corridor and additional local domain exclusions. These are available accepting mechanisms only on their proved boxes; they do not establish coverage of every intervening shoulder or the entire residual branch.

## 6.5 Exact global confinement: proved but impractically small

**Source:** `ProvenResults/EffectiveConfinement/PROOF.md`; verifier `verify.py`; `Verification/effective_confinement_2026-09-30/`.

This module supersedes statements in earlier handoffs that no explicit global cutoff at all is known. It uses A1, the signed-invariant identities, JPT, and the retained local F6 estimates, but no A2–A4 reconstruction coverage.

It constructs compact basic closed sets in \(n=26\) variables using 883 integer polynomial constraints of degree at most \(d=38\) and coefficient height at most \(H=2^{34}\). The objective \(w\) represents \(\sqrt{M}\). The constraints include physicality, bounded Cayley coordinates, all signed-corner bounds, and a bad sixth-root entry defect. A1 excludes a zero objective on these bad-entry sets: a physical matrix with all corner invariants zero is in the F6 class, whose fully dephased entries are sixth roots. Compactness therefore gives a positive minimum before JPT is applied.

Let

\[
 K=181\cdot26\cdot76^{26},\qquad N=2K,\qquad m=2^{-N}.
\]

These are exact, finalized mathematical constants, not pending numerical fits. In particular,

\[
 N=74960990727782768688244669160897235157377430230925312
 \quad(\text{approximately }7.50\times10^{52}).
\]

JPT and exact sixth-root rounding prove

\[
 0<M(H)<m
 \quad\Longrightarrow\quad
 H\sim F_6\odot e^{iu},\qquad
 \max_{25\ \mathrm{free\ entries}}|u|<1/3072.
\]

The latter is a **full-matrix phase** conclusion and hence lies inside the F6 projector tube. The module also supplies an explicit global quadratic constant \(m/16\), active-seed confinement radius \(2\sqrt m\), and stationary-seed gap \(m/2^{26}\), with their exact hypotheses in Sections 7–8 of its proof.

The predicate uses exact scaled rationals, so it need not allocate an integer of \(N\) bits. A certified upper R cap below \(m\) on a strict physical maximal seed box is a valid conditional quartet exclusion. However, the existence of this cutoff does not make it reachable by the current practical subdivision, nor turn a cap such as R below 1 into an accepted box.

[PENDING: a useful larger global outer-region cutoff or alternative practical cap theorem, if this route is used to close the remaining residual; from a new proved module and its verifier/receipt, not from extrapolating the existing JPT constant].

## 6.6 Remaining branch obligations

There is no retained production-width closure for the active class \((1,2,2,4)\). Its 72-frame orbit contains **18 distinct seed tuples**, enumerated under `seed_classes` in `ProvenResults/EffectiveConfinement/certificates/arithmetic.json`. A new closure must cover the appropriate transformed boxes/orbit, both physical side alternatives, and the boundary strata permitted by its statement. The existing \(1/65536\) cube and 10 signed-corner pilot acceptances in that class do not fill the production-width gap.

[PENDING: production-width closure certificate for the active class `(1,2,2,4)`, with exact domains, transformed-orbit coverage, all accepted leaf witnesses, and independent replay; from the active-class seed-lifting work].

The signed-corner pilot also leaves stationary-class subregions unresolved. Local matrix rigidity says such corners cannot be maximal when the **whole carrier is sufficiently close to F6**. It does not justify excluding seed boxes 0.04–0.2 radians from a reference without proving the required matrix proximity or a different whole-box domain obstruction.

[PENDING: complete closure of the remaining stationary residual boxes and all shoulders/collars not covered by the existing seed cubes; from new signed/side moment tests, validated carrier lifts, or other proved whole-box certificates, attached to the authoritative residual ledger].

[PENDING: final branch population by method, exact number of unresolved boxes, maximum levels and radius policy used, and final acceptance replay; release requires an empty unresolved obligation set, certified by Section 7 rather than inferred from pilot percentages].

---

# 7. Final coverage audit: what must tile, what must be replayed

## 7.1 The finite-cover implication

Let \(\Omega=[-\pi,\pi]^4\), with the periodic endpoint identifications retained. Start with its exact ideal dyadic tree. The final proof must establish the following chain of inclusions:

\[
 D_0\cap F\subseteq
 \bigcup\{\text{unpruned ideal level-6 job cells}\}
 \subseteq\bigcup\{\text{soundly pruned boxes, work boxes, layer boxes}\},
\]

followed by a complete discharge of every unpruned work or layer obligation. In the first inclusion, “unpruned” means the other ideal cells have already been excluded from the target domain. In the second, an accepting numerical box must contain its assigned ideal cell. Later branch refinements must preserve whichever exact ideal-cell or enlarged-parent contract is recorded.

At every terminal obligation, one of two conclusions is sufficient:

\[
 B\cap D_0\cap F=\varnothing,
 \qquad\text{or}\qquad
 \forall\theta\in B\cap D_0\cap F,\ H_+(\theta)\text{ is not a quartet edge}.
\]

If every original ideal cell is represented and every terminal obligation has such a certificate, every target point is excluded. Section 2 then proves the theorem of record under A1–A4.

“Tile exactly” here means **no omitted ideal region or boundary and no unaccounted obligation**. The enlarged numerical boxes generally overlap; they are not asserted to form an interior-disjoint partition of \(D_0\cap F\). Their exact ideal addresses provide the partition, while enlargement supplies containment. Overlap of sound certificates is harmless. Duplicate records masquerading as distinct required children are not harmless.

## 7.2 Required ledger identities and formats

The retained formats can support the audit, but their semantic checks must be completed as described below.

| Record family | Existing format | Required interpretation |
|---|---|---|
| Work/layer inventory | `ID JOB LEVEL theta1 theta2 theta3 theta4`, 121-byte records in the cluster workflow | IDs are unique and complete; byte length is an exact multiple of the record length; coordinates are the precise parsed binary64 values and bind to the source ledger. |
| Expansion output | Work lines, `#layer` lines, per-job `#prune` counters | Counters reconcile totals. Exact child addresses or a deterministic replay are additionally required to establish which regions were emitted or pruned. |
| First layer prune | JSONL rows from `cluster/layer_prune.py` | Exactly one authoritative outcome per layer ID, same job/level/coordinates, approved source and whole-box scope. |
| branch95 side refinement | One original leaf row with `path:T` / `path:O` tokens | Hexadecimal paths encode all 16 children, first coordinate fastest. Distinct/prefix-free terminal paths must form a complete subtree. Every `T` requires a replayable accepting side test. |
| Enlarged-parent tree | `cell`, `path`, `theta`, `radius`, `status`, `method`, with headers/evidence | Exact root containment, complete Cartesian children, no duplicate or unreachable nodes, and a valid method-specific certificate for each closed leaf. |
| Consolidated layer audit | `manifest.json`, shard headers/done records, `second.jsonl`, `cover.jsonl`, `t2.jsonl`, optional `sideleaf.jsonl`, `replayed.jsonl` | Input hashes and row ranges bind the population. Every source outcome and every required accepting replay is accounted for. |

`ProvenResults/CampaignLayerCoverage/geometry.py` interprets finite floats as exact rationals via `Fraction`. A root must contain the requested enlarged parent. For each split, all 16 child addresses must be present. For each coordinate, the eight negative-sign children must share one interval, the eight positive-sign children another, their union must reach the parent's endpoints, and the two intervals must meet or overlap. Thus all Cartesian sign combinations cover the parent. The checker rejects duplicate paths, missing children, non-Cartesian families, gaps, and descendants below an already terminal node.

The geometry checker deliberately does not prove that a non-`split` status is a valid mathematical acceptance. The calling audit must separately authorize its `status`, `method`, exact input box, source hash, and acceptance evidence. An unknown terminal status cannot become a proof merely by passing geometry.

`ProvenResults/CampaignLayerCoverage/collar.py` gives another exact option: a certified inner box plus at most eight outer slabs covers the already enlarged parent. The inner box may use exact rational endpoints without a second automatic \(2^{-40}\) enlargement, provided its acceptance arithmetic covers those endpoints. Every outer slab still needs a certificate. Deleting an arbitrarily thin collar because it “should not matter” is not allowed.

## 7.3 Scope checking at terminal leaves

| Certificate scope | May close a whole target obligation? |
|---|---|
| `outside_F` / a proved `F_out` | Yes, for the target \(D_0\cap F\), on the complete recorded box. |
| No positive R on the box | Yes, because \(D_0\) is strict. |
| `outside_physical_D0` | Yes, provided it covers all physical completions relevant to the box. |
| `outside_strict_D0` | Yes for this strict target; do not relabel it as a theorem excluding physical R=0 carriers. |
| Whole-box cluster-cover quartet exclusion | Yes, when the carrier model contains every relevant physical carrier and all phase/graph obligations are complete. |
| Whole-box physical-maximal Fourier seed lift | Yes, with the exact matrix tube and frame-containment hypotheses checked. |
| `D0_implies_R_above_threshold` | **No, not alone.** The surviving above-threshold physical subset must still be closed. |
| `posR`, `residual`, nearest-reference label, good center sample, or side-model construction only | **No.** These are routing/proposal facts, not quartet/domain exclusions. |

A release audit must reject method/source mismatches, absent replay records, failed controls, altered centers or radii, unsupported depths, incomplete shard files, and a “done” line that lacks a complete certificate tree. A subsequently successful pass must replace a whole parent obligation with a clearly identified authoritative result; results from incompatible trees cannot be combined by counting their successful leaves.

## 7.4 Existing auditors and what their PASS means

**Cluster accounting.** `NumericalCampaign/Campaign/cluster/audit.py expand` checks job accounting, grid tolerance, and per-level recurrences of the form

\[
 E_{\ell+1}=16(E_\ell-P_\ell-W_\ell-L_\ell).
\]

This is a necessary count identity, not a spatial cover proof. The code does not reject duplicated spatial work cells when they carry consistent aggregate counts. Its `--allow-pending` option cannot be used as final completeness evidence.

`audit.py certify` checks declared cell completions and certain split counts, but does not validate actual child geometry or require a root certificate tree for every `done` record. It can accept a completion-only record with no leaf. Its code-hash cardinality checks do not by themselves enforce the approved manifest and method configuration. The synthetic tests in Section 10 show these logical limitations without asserting that the actual production data exhibit them.

**Layer coverage.** `NumericalCampaign/Campaign/layer2/audit.py` is materially stronger. It checks inventory hashes, original ID/coordinate agreement, shard row ranges, exact enlarged-box geometry, certificate scopes, and equality of expected replay keys. With `--replay`, it replays its supported Python accepting engines and requires matching Julia replay records. It distinguishes `structural_coverage='PASS'` from `closure='PASS'`; unresolved cells yield an open inventory and exit 2.

However, that file is currently hard-coded to `run_of_record='guarded_2026-09-29'` and FastTM

```
e18d1563b7413ad70423ed1dc16a3a785b929607611aac036fe61048a77df984
```

Its accepting-engine schema also predates the new signed-corner and side-chart integrations. **It cannot be invoked unchanged and honestly described as the final rescaled audit.** Its underlying exact geometry and scope-checking contract are reusable; an additive rescaled binding and method adapters need their own review and receipt. Likewise, the cluster expansion auditor's fixed `JOBLEVEL=6` is not automatically a branch95 auditor for survivor roots at level 9.

[PENDING: additive exact expansion/work coverage audit or deterministic replay sufficient to supplement the aggregate cluster checks; from a reviewed auditor binding actual addresses, accepted predicates, and the frozen run].

[PENDING: additive rescaled CampaignLayerCoverage adapter, approved FastTM/source policies, and replay support for every method used by the final branch ledger; from a reviewed audit module and its independent controls].

No existing auditor or source needs to be silently overwritten to satisfy these obligations. A new frozen adapter can retain the earlier audit as historical evidence.

## 7.5 Release receipt and end-to-end conclusion

The final release receipt must bind, at minimum, the original phase root and level-6 preparation, all 340,972 job results, all 8,652,805 original work obligations, all 14,020,093 layer decisions, the exact 623,187-survivor inventory, every refinement/substitution, all method/source manifests, and every final accepting witness or required replay.

| Release field | Required final evidence |
|---|---|
| Original obligations represented exactly once | [PENDING: actual counts and identity checks from the final inventory audit] |
| Missing roots, jobs, children, or input IDs | [PENDING: actual final counts; each must be zero] |
| Duplicate authoritative outcomes or illegal overlaps of obligation identities | [PENDING: actual final counts; each must be zero] |
| Unresolved or unsupported terminal obligations | [PENDING: actual final count; must be zero] |
| Unsupported code hashes, methods, depths, or arithmetic guard records | [PENDING: actual final counts; each must be zero] |
| Exact geometry / ideal-address coverage | [PENDING: final PASS receipt and hash-bound witnesses] |
| Acceptance validity for every closed leaf | [PENDING: approved execution/replay receipt with an explicit complete population] |
| Independent replay and controls | [PENDING: Section 5.5 receipt and branch-specific replay receipts] |
| Final audit artifact and its SHA256 | [PENDING: named, frozen receipt under `Verification/` after all preceding checks pass] |

**Final proof paragraph, effective only when the above evidence is present.** Take any \(\theta\in D_0\cap F\). The audited exact phase cover assigns it an original ideal cell and a chain of obligations. No domain-excluded obligation can contain this point. Completeness therefore reaches a terminal quartet-exclusion certificate valid for its carrier. Thus Q holds. By the reduction of Section 2 and external endpoint exclusions E1–E2, A1–A4 imply that four MUBs in \(\mathbb C^6\) do not exist. ∎

The snapshot does not yet authorize replacing the pending final receipt by this conclusion.

---

# 8. Dependency and evidence table

The table lists the modules used by this proof spine and the optional mechanisms explicitly discussed above, not every research result in the repository. **“No A-input” means no A1–A4 reconstruction assumption; it does not mean no arithmetic trust or upstream proved lemma.** A module proving a physical statement may be unconditional on A1–A4 while its application to all Hadamard classes still uses the global reduction.

For compactness, **R0** below means the exact directory `Verification/root_run_2026-09-30/`; for example, `R0/fasttm_invariant.txt` denotes that file in that directory, together with its entry in `R0/summary.json`. That summary's overall status is FAIL because of the separate CountTwo timeout, although the individual checks cited here passed. New modules have their separately named receipts. The complete current root suite has 82 registered checks; its unified release replay is pending.

| Claim / role | Proved-results module and verifier | Retained receipt / release status | Accepted inputs and external dependencies |
|---|---|---|---|
| A1–A4 coverage and side inputs | `MinimalConstruction/ASSUMPTIONS.md`; **no local global verifier** | Accepted inputs, not a verification receipt | A1–A4 themselves |
| Reconstruction formula consistency | `MinimalConstruction/Implementation/verify.py`; `verify_single_radical.py` | `R0/reconstruction.txt`; `R0/single_radical.txt` | A4 for universal physical use; does not verify A1–A3 |
| Fourier endpoint/family exclusion | External E1; local use in `NumericalCampaign/REDUCTION.md` | Published theorem; no claim of independently replaying its full external computation here | E1 |
| Tao endpoint exclusion used in this proof | External E2; `ProvenResults/ExceptionalEndpoints/Tao/README.md` describes the local alternative | Published theorem; `R0/tao_exclusion.txt` only corroborates the conditional local packet | E2; local substitute would require its elimination input |
| Effective-minimum theorem | External E3; application in `ProvenResults/EffectiveConfinement/PROOF.md` | Published theorem plus the application receipt below | E3 |
| Sheet conjugation | `ProvenResults/Sheets/CONJUGATION.md`; `verify.py` | `R0/sheet_conjugation.txt` | Explicit A4 formulas; no A1–A3 for the identity |
| Defined side-root permutations | `ProvenResults/Sheets/BRANCH_LEMMA.md`; `verify_branch_lemma.py` | `Verification/T4_branch_lemma_2026-09-28/summary.json`; `R0/side_branch_lemma.txt` | Prescribed-sign side identities in A4; defined-branch qualification |
| Q on \(D_0\cap F\) implies no quartet | `NumericalCampaign/REDUCTION.md`; `NumericalCampaign/Domain/verify_reduction.py`; upstream `ProvenResults/Sheets/` | `R0/campaign_reduction.txt` | A1–A4, E1–E2, exact corner invariances |
| Guarded FastTM invariant | `ProvenResults/FastTMInvariant/README.md`; `verify.py` | `R0/fasttm_invariant.txt` | No A-input; stated IEEE/range guards and interval trust |
| Rescaled intrinsics bind to production | `ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md`; `guarded_replay.py` | `Verification/fasttm_rescaled_2026-09-30/guarded_replay/summary.json`; final independent review pending | Guarded invariant; outward scalar/interval operations |
| Historical unrestricted arithmetic obstruction | `ProvenResults/CertificateArithmetic/README.md`; `verify.py` | `R0/certificate_arithmetic.txt` | No A-input; exact arithmetic counterexample |
| Particular strict-side denominator identities | `ProvenResults/StrictSideGuards/`; `verify.py` | `R0/strict_side_guards.txt` | Explicit reconstruction identities; not global coverage |
| Ideal dyadic cells lie inside enlarged boxes through level 13 | `ProvenResults/DyadicTiling/README.md`; `verify.py` | `R0/dyadic_tiling.txt` | No A-input; exact rounding and pi bounds |
| Corner comparison and complementary-square identities | `ProvenResults/CornerBounds/`; `verify.py` | `Verification/T1_corner_bounds_2026-09-28/summary.json`; `R0/corner_boundary_bounds.txt` | No A-input for physical identities |
| Complete side-column phase cover | `ProvenResults/CornerBounds/SideColumnPrune/`; `verify.py` | `Verification/T1_side_column_2026-09-28/summary.json`; `R0/side_column_prune.txt` | No A-input; CornerBounds and Arb |
| Complete side-triple domain prune | `ProvenResults/CornerBounds/SideTriplePrune/`; `verify.py` | `Verification/T1_side_triple_2026-09-28/summary.json`; `R0/side_triple_prune.txt` | No A-input; side-column cover and physical Gram identities |
| Paired-side and subdivided second-pass exclusions | `ProvenResults/CornerBounds/PairedSidePrune/verify.py`; `CampaignSecondPass/verify.py` | `R0/paired_side_prune.txt`; `R0/campaign_layer_second_pass.txt` | No A-input; physical side-cover theorems |
| Conditional local R-gap tests | `ProvenResults/CornerBounds/LocalBranchGap/verify.py`; `ProvenResults/RegularSideCharts/ResidualCells/verify.py` | `R0/local_branch_R_gap.txt`; `R0/t6_residual_cells.txt` | No A-input for physical gap; not a whole-cell quartet exclusion |
| Common-ray capacity/graph theorem | `ProvenResults/CommonRays/ClusterCover/PROOF.md`; `verify.py` | `R0/cluster_cover.txt` | No A-input given a valid physical carrier enclosure; production H+ application uses A4 |
| Cartesian exclusion, sharp capacity, label refinement | `ProvenResults/CommonRays/ClusterCover/`; `verify_acceleration.py` | `R0/cluster_cover_acceleration.txt`; `Verification/Campaign_cartesian_cover_2026-09-29/` | Cluster-cover theorem; arithmetic invariant and outward enclosures |
| Regular physical side charts | `ProvenResults/RegularSideCharts/`; `verify.py` | `Verification/T6_regular_side_2026-09-28/summary.json`; `R0/regular_side_charts.txt` | No A-input for physical Jacobian identity/local chart |
| Well-conditioned auxiliary split and local F6 estimates | `ProvenResults/ChartConditioning/RESULTS.md`; `verify.py` | `R0/chart_conditioning.txt`; module `verification_receipt.json` | No A-input for local physical statements; A1 for its global endpoint confinement argument |
| SideChartCover provider and all-completion use | `ProvenResults/SideChartCover/PROOF.md`; `verify.py`; `provider.jl` | `Verification/branch_helper_2026-09-30/README.md` records verifier failure and limited Julia pilot; **integration pending** | A2 and A4; regular charts, validated completion residual, cluster cover |
| Signed mean-corner domain obstruction | `ProvenResults/SymmetricSignedCornerPrune/PROOF.md`; `verify.py --project-root ... --all` | `Verification/branch_helper_2026-09-30/root_check/summary.json` | A2, A4; CornerBounds; `mpmath.iv` |
| Fourier-family practical matrix tube | `ProvenResults/FourierNeighbourhood/PracticalTube/verify_partition.py`; `audit.py`; `verify_controls.py` | `Verification/T2_practical_partition_2026-09-28/`; `R0/fourier_practical_tube.txt`, `fourier_practical_audit.txt`, `fourier_practical_controls.txt` | No A-input; explicit reference-family/common-ray certificates |
| Optional effective uniform Fourier tube | `ProvenResults/FourierNeighbourhood/UniformTube/verify.py` | `Verification/T2_uniform_tube_2026-09-28/summary.json`; `R0/fourier_uniform_tube.txt` | E1/E3 and the module's quantified compactness/algebra; no A-input |
| Expanded F6 projector tube \(1/30\) | `ProvenResults/FourierNeighbourhood/ClusterTube/EXPANDED.md`; `verify_expanded.py` | `Verification/T2_F6_expanded_tube_2026-09-29/`; `R0/fourier_f6_expanded_tube.txt` | No A-input; explicit F6 common-ray/overlap certificate |
| Completion-error and matched-side seed lifting | `ProvenResults/FourierNeighbourhood/SeedLifting/RESIDUAL_LIFT.md`; `verify_residual_lift.py`; `verify_side_cover_lift.py` | `Verification/T2_residual_lift_2026-09-29/`; `Verification/T2_matched_cover_lift_2026-09-29/`; corresponding R0 logs | No A-input for all physical maximal completions; side covers and matrix tube |
| Complete production seed cube \(\pi/512\) | `ProvenResults/FourierNeighbourhood/SeedLifting/PRODUCTION_CUBE.md`; `verify_production_cube.py`; `verify_production_partition.py` | `Verification/T2_production_seed_lift_2026-09-29/`; `R0/fourier_production_seed_cube.txt` | No A-input for physical theorem; completion lift, exact partition, F6 tube |
| Local F6 seed cubes and extended radii | `ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md`; `EXTENDED_ANALYTIC_RADII.md`; `verify_near_f6.py`; `verify_analytic_radius_extension.py` | `Verification/T2_near_F6_closure_2026-09-29/`; `R0/fourier_near_F6_closure.txt`; `R0/fourier_analytic_radius_extension.txt` | No A-input; F3-block classification, phase estimates, FourierMaxR, F6 tube |
| F3-block classification used by analytic lifting | `ProvenResults/FourierBlocks/FourierBlockClassification.md`; `FourierBlockClassification.py` | `R0/fourier_blocks.txt` | No A-input; exact algebra |
| Non-F6 local corridor | `ProvenResults/FourierNeighbourhood/SeedLifting/ZERO_NEIGHBOURHOOD.md`; `verify_zero_neighbourhood.py` | `Verification/T2_zero_neighbourhood_2026-09-29/`; `R0/fourier_zero_neighbourhood.txt` | No A-input for physical scope; retained lifts/domain prunes |
| Fourier-reference maximum invariant | `ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_MAX_R.md`; `verify_fourier_max_R.py` | `Verification/T2_fourier_max_R_2026-09-29/`; `R0/fourier_max_corner_R.txt` | No A-input; exact Fourier-family corner enumeration |
| Stronger local corner rigidity | `ProvenResults/FourierCornerRigidity/PROOF.md`; `verify.py` | `R0/fourier_corner_rigidity.txt`; module `verification.json` | No A-input for physical local statement; stated local-inverse/tube inputs |
| Explicit global small-M confinement | `ProvenResults/EffectiveConfinement/PROOF.md`; `verify.py` | `Verification/effective_confinement_2026-09-30/replay.json`; `root_check/summary.json` in that directory | A1, E3; signed corners, exact rounding, local inverse and F6 tube |
| Enlarged-parent/collar coverage and scoped F/side trees | `ProvenResults/CampaignLayerCoverage/PROOF.md`; `verify.py`; `geometry.py`; `collar.py` | `R0/campaign_layer_coverage.txt` | No A-input for geometry; respective predicate dependencies for accepted leaves |
| Rescaled expansion and initial layer population | Above domain/side modules; `NumericalCampaign/Campaign/cluster/audit.py` and `layer_prune.py` | Reported counts; **bulk rescaled receipt and supplemental exact coverage pending** | Domain pruning uses its specific A-inputs; pure side pruning uses none |
| Global work certification and independent replay | ClusterCover and arithmetic modules; production driver; `cluster/replay_full.jl` | **Pending:** complete work ledger, exact subtree audit, and independent replay receipt | A4 for H+ models, arithmetic trust, cluster-cover theorem |
| Global branch closure | The per-leaf modules in Section 6; branch95 and layer audit adapters | **Pending:** authoritative complete branch ledger and all accepting replays | Union of the actual per-leaf dependencies; no unidentified assumptions |
| Final Q and theorem of record | Section 7 finite-cover implication plus `NumericalCampaign/REDUCTION.md` | **Pending:** final source-pinned coverage/acceptance receipt under `Verification/` | A1–A4; E1–E2; E3 only for used effective-minimum routes |

The reduction and campaign executables are located outside `ProvenResults/`; this table names their actual paths rather than inventing a module that does not exist. At release, any new accepting mechanism must add a row with its proof, verifier, receipt, source hash, scope, and accepted-input dependencies before it can contribute to Q.

---

# 9. Reproduction, source hashes, and costs

## 9.1 Preserve the snapshot and use fresh output directories

The uploaded archive used for this draft has SHA256

```
ca46674c52bab0fc61b3c3d65fa6b15ab98abca0ff3eb0db2e591b2e27abaa91
```

Its uploaded filename was `NoFourMUBS_2026-09-30_night(3).zip`; the logical snapshot name is the 30 September night archive. The suffix is not a different mathematical run identifier.

The writer checked all 64,316 entries of the retained root `MANIFEST.sha256`: **64,302 present entries matched, none mismatched, and 14 were absent**. All 14 absent entries are exactly the large branch-layer files declared in `EXCLUDED_FROM_ZIP.txt`. Thus absence is intentional and is not evidence of corrupt present files. It also means that this ZIP alone cannot replay every historical branch bulk audit.

For reproduction without altering the source snapshot, use a fresh working copy. Set `SOURCE` to the extracted source root before running these commands:

```sh
set -eu
: "${SOURCE:?Set SOURCE to the extracted NoFourMUBS directory}"
WORK=$(mktemp -d "${TMPDIR:-/tmp}/nofourmubs-record.XXXXXX")
cp -a "$SOURCE" "$WORK/repo"
cd "$WORK/repo"
export PYTHONDONTWRITEBYTECODE=1
mkdir -p "$WORK/receipts"
```

Do not use an old receipt directory as an output directory. The commands below describe reproduction; this document does not claim that the writer launched the cluster campaign or reran the entire root suite.

A manifest check that recognizes the declared export omissions, but does not ignore unexpected missing or changed files, is:

```sh
python3 -B - <<'PY'
from pathlib import Path
import hashlib
root = Path('.')
excluded = {}
for line in (root / 'EXCLUDED_FROM_ZIP.txt').read_text().splitlines():
    if line.strip() and not line.lstrip().startswith('#'):
        _, digest, name = line.split(maxsplit=2)
        excluded[name] = digest
present = 0
missing = set()
for line in (root / 'MANIFEST.sha256').read_text().splitlines():
    digest, name = line.split(maxsplit=1)
    path = root / name
    if not path.is_file():
        assert excluded.get(name) == digest, ('unexpected missing file', name)
        missing.add(name)
        continue
    assert hashlib.sha256(path.read_bytes()).hexdigest() == digest, name
    present += 1
assert missing == set(excluded), ('export omission list mismatch', missing)
print('Present entries matched:', present, '; declared absent:', len(missing))
PY
```

A newly built bundle is not retroactively the historical execution bundle. Its hash must either equal the retained run's freeze or be treated as a separate reproduction source.

## 9.2 Key snapshot hashes

These hashes were checked against the extracted archive. They identify source files **in this snapshot**, not completed execution receipts. The final manifest must also pin all imported dependencies and accepting-engine adapters, not only this selected table.

| File | SHA256 |
|---|---|
| `MinimalConstruction/ASSUMPTIONS.md` | `7e4fe15e0de5652ceef07a407453e23643252ed19e475d497b18551afd1d0181` |
| `NumericalCampaign/REDUCTION.md` | `d2e66fdb209a23fe225775b7e8629efd478b24b217e08d168dd63c441bda2b95` |
| `NumericalCampaign/Certification/fasttm.jl` | `7e9c0bc3c08a42094d1f1dca34a61238c7a3510f091db189fa7947f1c2f35baa` |
| `NumericalCampaign/Certification/fasthplus.jl` | `ccece5358d56d0c2dc574d45a97b7308d7dcfa2e30ebb1a9f32cca1baf441b5e` |
| `NumericalCampaign/Certification/cover.jl` | `bec3bcd67a8f6ff67bf30f34dbb871804788d8579db74991d18d699cad3ae428` |
| `NumericalCampaign/Certification/cover_accelerated.jl` | `5f95cd84a1a3445a98e56b5c06e598cb2810fbc2d4fc581cec1c9084db163d96` |
| `NumericalCampaign/Certification/domain.jl` | `a99f3992d6b85cb6cdc6d4ef5127bf8caa7273dc1c7f424c75968aaa6501bb92` |
| `NumericalCampaign/Campaign/driver.jl` | `ed464451e25312120719ff0393619a2c0de7d334f95bbc2c5e75893bcd107ffc` |
| `NumericalCampaign/Campaign/cluster/audit.py` | `c982749a062dcb6633f1f873bff1fa43685f561ed9cd343d13c8d012208e6cd5` |
| `NumericalCampaign/Campaign/cluster/replay_full.jl` | `4a227b8842ae6070091cb2966d195051ad73f8588942b8927f0f10fd2c3b96a9` |
| `NumericalCampaign/Campaign/cluster/layer_prune.py` | `aee39c5e79be07892a35cc9255bbf73b0a4dec0b696205b1f7e02b98d7fb26a5` |
| `NumericalCampaign/Certification/jlenv_cluster/Manifest.toml` | `14dc881a00fc46f83244b6afe25b8fe2c2489aeefce5a3181b6c054ea98349e3` |
| `ProvenResults/CampaignLayerCoverage/geometry.py` | `6741717c39137a5284fa45d7e108e2ff7bf5e7124a4a7e793b7682d4d0fe3bde` |
| `ProvenResults/SymmetricSignedCornerPrune/predicate.py` | `8ed2a361fc9cf656250280afac868f01143fe74273fb6eff2fa410824c711015` |
| `ProvenResults/SideChartCover/provider.jl` — not yet an approved production provider | `033aa8f001553303c8f2d22e849d945fb73b61d064d3994adc41323b99f11ca2` |
| Root `verify.py` | `388253ded98103bf8079a2b13f78db4a5c7c8e7508757fdd5310ccdd58a931a7` |

`NumericalCampaign/Campaign/REPORT_2026-09-30.md` gives only the prefix `7220d243…` for the rescaled execution manifest. It is not expanded here by guessing.

[PENDING: full rescaled execution-manifest SHA256 and archive location; from the run-of-record `MANIFEST.sha256`/freeze evidence].

[PENDING: hashes of the final imported work/layer/result ledgers, branch95 freeze, any approved provider/predicate adapters, and final auditors; from the completed reproduction manifest].

## 9.3 Mathematical and arithmetic replays

Run the registered suite into a new directory:

```sh
python3 -B verify.py --jobs 4 --output-dir "$WORK/receipts/root"
```

A focused proof-spine replay, still with separate receipts, is:

```sh
python3 -B verify.py --jobs 4 \
  --only fasttm_invariant certificate_arithmetic strict_side_guards dyadic_tiling \
         campaign_reduction sheet_conjugation side_branch_lemma \
         side_triple_prune cluster_cover cluster_cover_acceleration \
         campaign_layer_coverage regular_side_charts chart_conditioning \
         fourier_corner_rigidity effective_confinement symmetric_signed_corner_prune \
  --output-dir "$WORK/receipts/spine"

python3 -B ProvenResults/FastTMInvariant/guarded_replay.py \
  --output-dir "$WORK/receipts/rescaled_intrinsics"
```

The default full production-cube verifier is preferable to relying only on the more general partition verifier: it additionally requires all 227 leaves to be either `residual_tube` or `outside_D0`, with 207 lifts, so that the stated physical R=0 scope is preserved.

```sh
python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify_production_cube.py \
  --output "$WORK/receipts/production_cube_160.json"

python3 -B verify.py --jobs 1 \
  --only fourier_practical_tube fourier_practical_audit fourier_practical_controls \
         fourier_f6_expanded_tube fourier_near_F6_closure \
         fourier_analytic_radius_extension \
  --output-dir "$WORK/receipts/fourier_tubes"
```

The optional explicit partition replay is:

```sh
python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify_production_partition.py \
  ProvenResults/FourierNeighbourhood/SeedLifting/data/production_cube_pi512.json \
  --precision 160 --output "$WORK/receipts/production_partition_160.json"
```

Its generic `PASS` alone has strict-domain scope; the stronger physical R=0 conclusion additionally uses the production-specific reason checks just described. Do not use `--controls-only` as a substitute for the full leaf replay.

For additional side-cover certificates retained in the appropriate JSONL format:

```sh
# INPUT_SECOND_PASS is a frozen CampaignSecondPass JSONL certificate file.
: "${INPUT_SECOND_PASS:?Set the certificate file to replay}"
python3 -B ProvenResults/CornerBounds/CampaignSecondPass/run.py \
  "$INPUT_SECOND_PASS" "$WORK/receipts/second_pass_160.json" --replay
```

Do not count a SideChartCover Python replay as passed until the reported packaging failure has been resolved in an additive reviewed release. The snapshot's `verify.py` in that module is not a presently successful production gate.

## 9.4 Build, freeze, and replay a cluster bundle

The retained builder takes a destination argument and copies sources into it:

```sh
bash NumericalCampaign/Campaign/cluster/build_bundle.sh "$WORK/bundle"
(
  cd "$WORK/bundle"
  sha256sum -c --quiet MANIFEST.sha256
)
```

In a fresh reproduction bundle on the specified cluster environment, its `preflight.sh` checks the manifest, instantiates the pinned Julia environment, runs two end-to-end control cells with the production method, and checks the job count. It writes only into that new bundle:

```sh
bash "$WORK/bundle/preflight.sh"
```

The preflight is not the full campaign. The builder's retained manifest does not hash every copied administrative/replay script; bind such scripts separately in the final reproduction manifest, especially `replay_full.jl` and the supersession/audit adapters.

To reproduce completed-run accounting, restore the frozen run's data into a **separate** package copy and run, from its root:

```sh
python3 -B audit.py expand
python3 -B audit.py certify certify certify_pass2
```

The result directories in the second command are appropriate only if those are the names in the final run manifest. Earlier packages used `certify_full` and `certify_full_pass2` instead. [PENDING: authoritative ordered certification result-directory list; from the completed rescaled run manifest]. Omit no required pass and do not use `--allow-pending` for final coverage.

Task creation and submission settings must come from the frozen command/task records, not a newly chosen schedule. The main wrapper's current defaults are recorded in Section 5.3; the branch95 full-pass defaults are recorded in Section 6.1.

[PENDING: exact expansion, layer, certification, pass2, branch95, and residual-run command lines and task manifests, including all environment overrides; from the execution archive].

The corrected retained independent-replay invocation is, from the restored package root:

```sh
: "${K:?Set positive replay sample size from the final replay manifest}"
: "${REPLAY_SEED:?Set integer seed from the final replay manifest}"
: "${RESULTS_SUBDIR:?Set the approved results subdirectory}"
julia --startup-file=no --project=code/Certification/jlenv_cluster \
  replay_full.jl "$K" "$REPLAY_SEED" "$RESULTS_SUBDIR" \
  > "$WORK/receipts/work_replay.log" 2>&1
# The retained Julia script does not return failure on every disagreement.
! grep -q 'DISAGREE' "$WORK/receipts/work_replay.log"
grep -Fx "replay: all $K agree" "$WORK/receipts/work_replay.log"
```

Those last checks prevent mistaking the script's normal exit for agreement. They do not add the absent complete leaf-ID selection log or supersession policy. [PENDING: final independently reviewed replay wrapper/selection manifest and command; from the release replay implementation].

For historical layer2 data that actually match its approved guarded source and inventory, the existing command is:

```sh
# This is a historical guarded audit, NOT the final rescaled audit.
: "${LAYER_INVENTORY:?Set historical guarded inventory directory}"
: "${LAYER_SHARDS:?Set corresponding complete shard directory}"
python3 -B NumericalCampaign/Campaign/layer2/audit.py \
  "$LAYER_INVENTORY" "$LAYER_SHARDS" "$WORK/receipts/layer2_historical" --replay
```

[PENDING: executable commands for the rescaled exact expansion/work audit and the adapted final CampaignLayerCoverage audit; from the reviewed adapters required by Section 7.4]. There is deliberately no fictitious currently available command here that claims to close the rescaled run with the old hard-coded policy.

## 9.5 Recorded and pending costs

Costs below are evidence about specified runs, not mathematical assumptions or a promise about future runtime. CPU-seconds, wall-seconds, and volume percentages must not be interchanged.

| Computation | Retained measurement / final status |
|---|---|
| 30 September root run, 80 checks | 1,619.632 wall-seconds in its receipt; overall FAIL because CountTwo hit its time budget. |
| Separate CountTwo rerun | PASS; 48.347 check-seconds, 48.698 total elapsed seconds, in `Verification/root_run_2026-09-30_count_two_rerun/summary.json`. |
| Current 82-check unified release replay | [PENDING: full status, runtime, and environment from a new complete root receipt]. |
| Twelve-cell local cover benchmark | 131.96 accelerated CPU-seconds and 3,860,037 nodes; historical selected-cell experiment, not a final campaign average. |
| Signed-corner deterministic 1,000-box pilot | 439.810 summed worker CPU-seconds; 111.301 wall-seconds with four workers; the independent replay has its own cost. |
| Local SideChartCover 40-box end-to-end pilot | Reported mean 39 CPU-seconds per input; not a population projection and not the 617-model construction-only experiment. |
| Complete rescaled expansion and first layer prune | [PENDING: CPU-hours, wall duration, memory maxima, failures/retries, and hardware allocation from scheduler and task accounting]. |
| Complete rescaled work certification, including all later passes | [PENDING: final CPU-hours, wall duration, node totals, peak memory, and method/level breakdown from the final work ledger and scheduler]. |
| Complete branch95 and subsequent side-chart/signed/analytic closure | [PENDING: final CPU-hours, wall duration, peak memory, accepted populations, and retry costs from the consolidated branch run]. |
| Final exact coverage and acceptance audits | [PENDING: audit CPU/wall cost and peak memory from the final audit receipts]. |
| Independent complete-run replay | [PENDING: selected/exhaustive population as applicable, CPU/wall cost, peak memory, and outcome counts from Section 5.5]. |

Historical campaign estimates, including the branch95 planning estimate, are not substituted for these pending measured totals. The arithmetic/proof source manifest, input/output ledger hashes, execution flags, and resource accounting must be retained together so that a cost claim refers to the same computation as the acceptance claim.

---

# 10. Inconsistencies found

This section distinguishes actual code/document mismatches from chronological updates and missing release evidence. None of the following is, by itself, a counterexample to the no-four-MUB theorem or evidence that a particular real production cell was falsely accepted.

## 10.1 The cluster expansion audit's tiling assertion is stronger than its checks

**Files:** `NumericalCampaign/Campaign/cluster/audit.py`, especially its module docstring and `audit_expand()`; the expansion-audit claims in the campaign documentation.

The docstring says the aggregate refinement recurrence and grid check show that the cells tile each job. They do not. An unmodified copy of this auditor was tested with one valid level-6 job and **16 identical** level-7 work-child records, plus a matching `#prune` counter. It reports `PASS`, although the intended ideal subdivision contains 16 distinct children and 15 are absent.

**Verdict:** error in the stated sufficiency of the audit, demonstrated by a synthetic counterexample. Actual production coverage remains an independent question. The completion gate is an exact-address/geometry audit or deterministic replay of all expansion decisions, not a cosmetic change to the printed count.

## 10.2 The certification audit can pass a cell with no certificate subtree

**File:** `NumericalCampaign/Campaign/cluster/audit.py`, `audit_certify()`.

An unmodified copy was tested with one 121-byte cell record and a JSONL file containing only a header and `{"cell":1,"done":true,"failed":0}`. It reports `PASS` with no root, split, or certified leaf at all. It also counts child records by depth without checking their spatial identities. Thus “every done line has failed=0” is not a complete certificate-tree audit.

**Verdict:** demonstrated validation gap. A release audit must require a root and complete authoritative tree, validate actual children, bind every leaf's method/source/box, and reconcile reported failures with the actual tree. It must not infer all this from a final counter.

### Reproduce the two synthetic audit tests without editing repository files

The following code copies the auditor into a temporary directory and uses synthetic data only. The asserted success is the **undesired acceptance by the old auditor**, not a mathematical certificate.

```python
from pathlib import Path
import json, math, shutil, subprocess, sys, tempfile

source = Path('NumericalCampaign/Campaign/cluster/audit.py').resolve()
with tempfile.TemporaryDirectory(prefix='nofourmubs-audit-test-') as name:
    root = Path(name)
    shutil.copy2(source, root / 'audit.py')
    center = [math.pi / 64] * 4
    child = [x + math.pi / 128 for x in center]
    (root / 'jobs_L6.txt').write_text(
        ' '.join(format(x, '.17g') for x in center) + '\n')
    out = root / 'results/expand'
    out.mkdir(parents=True)
    row = '1 7 ' + ' '.join(format(x, '.17g') for x in child) + '\n'
    (out / 'e_1.txt').write_text(row * 16 + '#prune 1 work:16 layer:0\n')
    p = subprocess.run([sys.executable, '-B', str(root / 'audit.py'), 'expand'],
                       capture_output=True, text=True)
    assert p.returncode == 0, p.stdout + p.stderr
    print('Duplicated-child input accepted:\n' + p.stdout)

    record = '1 1 6 ' + ' '.join(format(x, '.17g') for x in center)
    assert len(record) <= 120
    (root / 'cells.txt').write_text(record.ljust(120) + '\n')
    out = root / 'results/certify'
    out.mkdir(parents=True)
    (out / 'c_1.jsonl').write_text(
        json.dumps({'header': True, 'code': 'synthetic'}) + '\n' +
        json.dumps({'cell': 1, 'done': True, 'failed': 0}) + '\n')
    p = subprocess.run([sys.executable, '-B', str(root / 'audit.py'), 'certify'],
                       capture_output=True, text=True)
    assert p.returncode == 0, p.stdout + p.stderr
    print('No-tree completion accepted:\n' + p.stdout)
```

## 10.3 Layer2's current approval policy is for a superseded run

**Files:** `NumericalCampaign/Campaign/layer2/audit.py`; `NumericalCampaign/Campaign/layer2/README.md`; `ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md`.

The layer2 audit accepts only the old guarded run label and FastTM hash `e18d1563…`; production now uses `7e9c0bc3…`. It also lacks the new accepting-method adapters. Calling that existing script the final rescaled closure audit would be false, even though its exact geometry component remains useful.

**Resolution:** retain its old policy for historical receipts and require an additive, reviewed rescaled binding and method whitelist. Its `structural_coverage=PASS` must never be reported as `closure=PASS` while open obligations remain.

## 10.4 SideChartCover's delivery receipt and local replay disagree

**Files:** `ProvenResults/SideChartCover/README.md` and its delivered verification material; `Verification/branch_helper_2026-09-30/README.md`; `sidechart_python_verify_FAILS.txt` in that directory.

The helper reports a successful construction-witness replay; the received Python verifier fails with an undefined `moments_poly_interval`. The supplied Julia regression also fails until a separate global-scope fix is applied. The later 32/40 Julia pilot is useful but does not validate the failing Python package or authorize full production integration.

**Resolution:** Section 6.2 marks the module pending integration and distinguishes 617 construction-only successes, four fixed-regression successes, and 32 end-to-end pilot certificates. None is used as a completed global branch result.

## 10.5 Campaign reports mix successive runs and snapshots

**Files:** `HANDOFF.md`; `HANDOFF_BRANCH_HELPER.md`; `NumericalCampaign/Campaign/REPORT_2026-09-30.md`; `NumericalCampaign/Campaign/cluster/REPORT_2026-09-29.md` and subsequent reports.

The main 30 September report begins with the completed **old guarded** expansion and later records the rescaled restart, still pending at that report's end. Earlier files use unguarded totals, pending-job snapshots, or cancellation progress. The user-provided completed rescaled counts are later information. Equal counts between two runs do not prove identical provenance or arithmetic soundness. Broad claims that all predecessors remain archived also need qualification against later reports of removal for file-quota reasons.

**Resolution:** use the named rescaled run and the fixed counts in Section 4, but leave import/hash/replay of its actual evidence pending. This is chronological document drift, not a contradiction between two proved numerical enclosures.

## 10.6 branch95's introductory and full-pass settings differ

**File:** `NumericalCampaign/Campaign/branch95/README.md`.

The introductory stage-A description mentions prune refinement to level 11. The later approved full-pass recipe sets `EXPAND_EXTRA=4`, reaching level 13, while retaining the separate singular extra depth. The document refers to a byte-identical frozen copy and `FREEZE.json`, but the full remote freeze and completed run output are not present in this branch95 directory in the ZIP.

**Resolution:** the full-pass settings control this draft. The run name containing `2026-10-01` and its 30 September approval are not evidence of a completed pass. Actual settings, source freeze, outcome counts, and exact descendant cover remain pending until imported.

## 10.7 Replay command and success semantics do not match an informal “independent audit PASS”

**Files:** `NumericalCampaign/Campaign/cluster/README.md`; `replay_full.jl` in the same directory.

The documented two-argument example with `certify` in the second position disagrees with the code's integer seed argument. The script samples task files and then leaves with replacement, does not resolve the authoritative multi-pass population automatically, prints rounded coordinates rather than a complete selected-leaf identity ledger, and can end normally after reporting disagreements. Its separate graph uses an older sufficient capacity bound, so some replay failures may be inconclusive rather than contradictory.

**Resolution:** Section 5.5 specifies the needed outcome accounting and Section 9 gives the correct argument order. A release-grade independent replay still needs its frozen selection/identity policy and explicit success checks.

## 10.8 Root-check counts and global PASS language need correction

**Files:** root `verify.py`; `Verification/root_run_2026-09-30/summary.json`; `Verification/root_run_2026-09-30_count_two_rerun/summary.json`; the separate effective-confinement and branch-helper receipts; `HANDOFF.md`.

The retained 80-check root run has overall status **FAIL**: `count_two` hit its `collisions_and_five_value` time budget. A separate rerun passes. Later additions bring the current registered list to **82**, whereas a handoff still refers to 81. Individual relevant checks have passing receipts, but there is no single retained all-82 PASS receipt in this snapshot.

**Resolution:** cite individual receipts accurately, include the separate rerun, and mark the unified release replay pending. In any case, root algebra/certificate replay is not a global Q certificate and does not verify A1–A4.

## 10.9 Some older “unknown cutoff” and F6-radius statements have been superseded

**Files:** `ProvenResults/ChartConditioning/RESULTS.md`, especially the uncomputed global tau discussion; `ProvenResults/EffectiveConfinement/PROOF.md`; `ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md`; `EXTENDED_ANALYTIC_RADII.md`.

The older chart-conditioning result leaves its global cutoff uncomputed; EffectiveConfinement later gives an exact but extremely small cutoff. Similarly, the extended-radius note replaces the older uniform F6 seed radius and two analytic class radii with larger proved values. These are mathematical improvements, not reasons to continue citing the older values as the latest state.

**Resolution:** Sections 6.4–6.5 use the newer results. Neither update closes the production-width active class or the entire practical residual. A practical cutoff and exact branch coverage remain pending.

## 10.10 Matrix radii, seed radii, and enlarged parent obligations are not interchangeable

**Files:** `ProvenResults/ChartConditioning/RESULTS.md`; `ProvenResults/FourierNeighbourhood/SeedLifting/PRODUCTION_CUBE.md`; `EXTENDED_ANALYTIC_RADII.md`; `ProvenResults/DyadicTiling/README.md`; `ProvenResults/CampaignLayerCoverage/PROOF.md`.

The source theorems largely state their scopes correctly, but combining their shorthand names can create a false inference: a full-matrix phase radius is not a four-seed radius; a projector tube is not an entry-error tube; a nominal \(\pi/512\) production width does not include the extra \(2^{-40}\) collar; and ideal dyadic containment does not prove coverage of an already enlarged parent. The DyadicTiling proof stops at level 13 even though the cluster accounting loop accepts counters through level 15.

**Resolution:** this is a scope/interface hazard, not a counterexample to the individual radius theorems. Keep the conversion and endpoint-containment certificates explicit, and do not invoke greater subdivision depth without a valid geometry proof.

## 10.11 Tao provenance and root-branch qualifications must remain explicit

**Files:** `ProvenResults/ExceptionalEndpoints/Tao/README.md`; `MinimalConstruction/ASSUMPTIONS.md`; `ProvenResults/Sheets/README.md`; `BRANCH_LEMMA.md`.

The local Tao packet's elimination input is not independently established by its ordinary verifier; describing that PASS as a self-contained endpoint proof hides a dependency. Separately, broad language about all root choices must respect the branch lemma's qualification that the alternative formula is defined. An undefined reversed branch at a strict seed is not a counterexample to the prescribed branch or permission to discard that seed.

**Resolution:** use the published endpoint theorem E2 and the exact accepted-input boundary, and retain every chart failure as inconclusive unless another certificate closes it.

## 10.12 The export and bundle manifests are not complete execution archives

**Files:** root `MANIFEST.sha256`; `EXCLUDED_FROM_ZIP.txt`; `NumericalCampaign/Campaign/cluster/build_bundle.sh`.

The 14 absent root-manifest files are expressly excluded from the ZIP because of size; they are not unexplained hash failures. Nevertheless, any proof claim requiring those bulk records cannot be replayed from this archive alone. The current rescaled bulk output is also remote. In addition, the builder copies some administrative/replay scripts that its listed manifest-generation inputs do not include, notably `replay_full.jl`; freezing the numerical code alone does not freeze the independent audit procedure.

**Resolution:** final reproduction must retain the required ledgers and hash the complete acceptance and audit toolchain. Section 9 supplies checked hashes for key snapshot files without pretending to know the missing full run-manifest hash.

## 10.13 Generic production-partition replay has weaker scope than the named cube theorem

**Files:** `ProvenResults/FourierNeighbourhood/SeedLifting/verify_production_partition.py`; `verify_production_cube.py`; `PRODUCTION_CUBE.md`.

The general partition replay permits `outside_strict_D0` and labels its report with strict-domain scope. The production cube theorem includes physical R=0 carriers and therefore needs the stronger condition that every nonlifting leaf is `outside_D0`. The dedicated full production-cube verifier enforces exactly that condition, checks all 227 leaves, and requires 207 lifts. Its retained successful replay supports the stronger theorem.

**Resolution:** there is no unresolved cube gap from this distinction, but the generic partition PASS must not be cited alone as the stronger statement. The reproduction commands use the dedicated verifier for that reason.

---

**Release status of this document:** the proof architecture, accepted-input boundary, retained local theorems, and known run counts are stated. The no-four-MUB conclusion remains gated by the explicitly pending completed work certificates, branch closure, source bindings, exact coverage audit, and independent replay. No pending computation or missing audit is replaced by an assumption of success.

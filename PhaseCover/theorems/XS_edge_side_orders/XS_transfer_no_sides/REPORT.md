# XS — transfers into the Fourier edge chart without side data

25 October 2026

## 1. Result and proof status

**PROVED, relative to the supplied Return W theorem and its accepted U germ input.** Let K be a 6-by-6 complex Hadamard matrix, and let I and J be ordered triples of distinct row and column indices. A T3 transfer needs no stored complementary row order, complementary column order, side windings, side-angle comparison, or orientation test if the source matrix has one certified coarse distance bound:

\[
\boxed{
p'(K)\in E_t,\qquad t\le\frac15,\qquad
d_{\rm ph}([K],[F_6])\le\frac3{20}
\quad\Longrightarrow\quad K\simeq H(p'(K)).
}
\tag{XS1}
\]

Here the parameter is exactly the brief's parameter, including the **signed** coordinate \(y=-2\operatorname{Im}\Psi\). The prescribed ordered corner can be arbitrary. The statement includes both signs of \(y\) and the fold \(y=0\). It does not assume that the omitted fourth corner phase already equals the chart's fourth phase.

The same proof, with new exact comparisons, improves the allowed coarse distance to

\[
\boxed{\rho_* = \frac{1514489}{10^7}=0.1514489.}
\tag{XS2}
\]

The simpler \(3/20\) is sufficient for all the supplied transfers and is the constant used in the implementation prototype.

**CERTIFIED, conditional on the four existing source C1 enclosures.** Every one of the **4,528 supplied T3 boxes** passes the replacement coarse-distance check. The worst bound is

\[
\boxed{d_{\rm ph}([K],[F_6])<0.128601<0.15.}
\tag{XS3}
\]

This bound holds on each transfer box intersected with its source ball, including the source's stored nonlinear C1 remainder; the affine norm is bounded on the full box. It is proved by exact rational arithmetic, not by sampling matrices. The replay reads none of `hcols`, `vrows`, `wind_h`, or `wind_v`.

**PROVED, relative to W's uniform side tube bound; new algebra and comparisons CERTIFIED.** Throughout the exact parameter ellipsoid of radius \(0\le t\le1/5\), both chart sides obey

\[
\boxed{
\sup_{p\in E_t}\|\phi_h(p)-\phi^0\|_\infty,
\quad\sup_{p\in E_t}\|\phi_v(p)-\phi^0\|_\infty
<\frac{2t}{\sqrt3}+\frac{153}{10000}.
}
\tag{XS4}
\]

At \(t=0.13\) this is below \(0.165412\) radians; at \(t=0.20\) it is below \(0.246241\) radians. Both are comfortably below \(\pi/6\).

**NOT ESTABLISHED.** This return does not certify the chart, its side bound, or the transfer theorem at \(t=0.30\). The largest tangent radius justified here is **\(t=0.20\)**, the full domain supplied by W. Neither that number nor \(\rho_*\) is asserted to be an intrinsic optimal radius. No global MUB conclusion, MUB atlas theorem, or Stage C result is used.

### What is inherited and what is replayed

The supplied `context/W_REPORT.md` states the chart and normal-graph theorems, with quantitative bounds. It explicitly depends on U's accepted analytic Hadamard germ theorem. The original W predictor JSON, contraction certificate, tensor certificates, and verifier are **not included** in the XS archive. This return therefore treats those W statements as theorem inputs and does not claim to have independently regenerated them.

The new corner census, metric bounds, enlarged coarse-radius comparisons, exact side Jacobian, nearest-order separation, stored-ellipsoid containment, and all 4,528 replacement distance inequalities are replayed here. The distance replay assumes source C1; it does not replay those C1 proofs or the existing parameter-ellipsoid membership checks. The package is a mathematical proof and computational replay, with a Python integration prototype, **not a Lean formalization or a completed Julia/Lean port**.

## 2. Definitions and exact domain

Let

\[
F_{ij}=e^{\pi\mathrm iij/3},\qquad
h(Z)=P_6ZP_6,\qquad P_6=I-\tfrac16\mathbf1\mathbf1^T.
\]

The distance is W's horizontal phase quotient distance: \(d_{\rm ph}([K],[F])\le\rho\) means that, after row and column permutations and diagonal unitary factors, \(K\) has a representative \(F\circ e^{\mathrm iz}\) with \(h(z)=z\) and \(\|z\|_F\le\rho\). There is no normalization by 6 or \(\sqrt6\).

Write

\[
p=(u_1,u_2,u_3,y),\qquad q=(u_1,u_2,u_3,y/24),
\]

\[
W=\begin{pmatrix}
1&-1/2&-1/2&0\\
-1/2&7/4&1/4&0\\
-1/2&1/4&7/4&0\\
0&0&0&1
\end{pmatrix},\qquad E_t=\{p:q^TWq\le t^2\}.
\tag{1}
\]

W supplies the analytic chart \(H\) on an open neighborhood of \(E_{1/5}\). Its base seed and side phases are

\[
\theta^0=(1,2,2,4)\pi/3,\qquad
\phi^0=(3,4,5,0,2,4)\pi/3.
\]

For an ordered corner \(I=(i_0,i_1,i_2)\), \(J=(j_0,j_1,j_2)\), its dephased entries are the cross ratios

\[
E_{ab}=\frac{K_{i_a j_b}K_{i_0j_0}}
{K_{i_a j_0}K_{i_0j_b}}.
\]

Take the three real phase lifts

\[
\arg E_{11}=\pi/3+u_1,\quad
\arg E_{12}=2\pi/3+u_2,\quad
\arg E_{21}=2\pi/3+u_3
\pmod{2\pi}
\]

that put the candidate parameter in \(E_{1/5}\), and define

\[
y=-2\operatorname{Im}\Psi(K[I,J^c]),\qquad
\Psi(B)=\frac{\operatorname{perm}(B)\det(B)^2}{\prod_{a,b}B_{ab}}.
\tag{2}
\]

The order of \(J^c\) in (2) is immaterial. Under diagonal row and column factors, the numerator and denominator acquire the same factor: the permanent contributes one copy and the squared determinant two copies of the product of the row and column multipliers; the entry product contributes three copies. Column or row permutations leave the permanent unchanged and the determinant sign disappears on squaring. Thus \(\Psi\) is invariant under these operations.

For a transfer, use **strict** membership in the target edge ellipsoid. Equality in (XS1) is sufficient for the identification theorem, but interior membership is the usual transfer requirement.

## 3. Proof of the transfer theorem

### 3.1 Fixed-frame recovery is stronger than quotient coverage

**PROVED relative to W.** Suppose initially that

\[
K=F\circ e^{\mathrm iz},\qquad h(z)=z,\qquad\|z\|\le3/20.
\]

Let \(T\) be the Fourier tangent space and put \(\eta=P_Tz\). W §4 constructs an analytic genuine Hadamard normal graph over the tangent ball \(\|\eta\|\le1/4\), in normal radius \(11/200\). Its normal uniqueness theorem also applies to any two genuine Hadamard lifts with the same tangent coordinate and ambient norm at most \(3/5\). Consequently \(K\) is the graph point at \(\eta\), even if its initially presented normal component has not been placed in the small graph tube.

Follow the graph at \(s\eta\), \(0\le s\le1\), and extract its parameters \(p(s)\) by (2) in the fixed Fourier frame. W equation (21) proves that this entire path remains strictly inside \(E_{1/5}\). Both the dephased graph matrix and \(H(p(s))\) are real analytic in \(s\). They agree near zero by U's accepted germ theorem and the local branch uniqueness. The real-analytic identity theorem therefore gives equality through \(s=1\):

\[
\boxed{\operatorname{dephase}(K)=H(\operatorname{extract}(K)).}
\tag{3}
\]

This is the framed assertion proved inside W's coverage argument. The weaker headline “there exists some chart parameter representing the class” would not suffice: it would leave an unspecified change of corner or stabilizer.

Equation (3) also recovers the fourth seed phase. We have not inferred it from uniqueness at a fixed four-phase seed, which would leave exactly the ambiguity identified in the brief.

### 3.2 The three corner phases anchor the Fourier frame

**PROVED.** Now let \(K\) be an arbitrary representative and let \((I,J)\) be its specified ordered corner. Choose a Fourier alignment with horizontal increment \(z\), \(\|z\|\le\rho\). In this alignment, the chosen corner corresponds to ordered Fourier indices

\[
(r_0,r_1,r_2),\qquad(c_0,c_1,c_2)\pmod6.
\]

Each rectangle phase perturbation is

\[
z_{r_ic_j}-z_{r_ic_0}-z_{r_0c_j}+z_{r_0c_0}.
\]

Its coefficient matrix is horizontal and has Frobenius norm two, so its magnitude is at most \(2\rho\). Meanwhile, direct inversion of \(W\) gives

\[
|u_1|\le\frac{2t}{\sqrt3},\qquad
|u_2|,|u_3|\le\sqrt{\frac23}\,t.
\tag{4}
\]

At \(t\le1/5\), \(\rho\le\rho_*\),

\[
\frac{2t}{\sqrt3}+2\rho<1<\pi/3.
\tag{5}
\]

The unperturbed Fourier rectangle phases are integer multiples of \(\pi/3\). Their first three residues must therefore be exactly \(1,2,2\): another residue is separated by at least \(\pi/3\), contradicting (5).

Put

\[
a=r_1-r_0,\quad b=r_2-r_0,\quad
c=c_1-c_0,\quad d=c_2-c_0\pmod6.
\]

The residue statement reads

\[
ac=1,\qquad ad=2,\qquad bc=2\pmod6.
\tag{6}
\]

The first equation forces \(a,c\) to be units. The only units modulo six are \(1,5\), each its own inverse, so \(a=c\), \(b=2a\), and \(d=2a\). The selected triples extend to full permutations

\[
R_i=r_0+ai,\qquad C_j=c_0+aj\pmod6,
\qquad i,j=0,\ldots,5.
\tag{7}
\]

After dephasing, their action sends the Fourier matrix to itself, since

\[
(R_i-R_0)(C_j-C_0)=a^2ij=ij\pmod6.
\]

The complementary orders in (7) are used only to prove existence of a suitable frame. They need not be found or stored in a T3 group. The verifier also checks the finite statement directly: among all \(120^2=14,400\) ordered-corner pairs, exactly 72 satisfy (6), and every one has the extension (7).

Permuting a horizontal increment preserves its norm and horizontality. Dephasing adds row and column gauge terms and does not alter the horizontal norm. Thus the completed corner frame still gives a Fourier lift of norm at most \(\rho\).

### 3.3 Parameter preservation and conclusion

**PROVED.** In the completed corner frame, the first three extracted parameters are precisely the original \(u_1,u_2,u_3\). Their real branches cannot differ by \(2\pi\): their total possible discrepancy is less than (5). The value \(y\) is unchanged because \(\Psi\) is invariant under complement permutations and diagonal gauge factors.

Applying (3) gives the exact dephased identity \(K_{\rm framed}=H(p'(K))\). Undoing the equivalence operations proves (XS1). The argument makes no division by \(y\), requires no nonzero orientation sign, and treats \(y=0\) directly.

### 3.4 Exact improvement of the coarse distance

**PROVED relative to W's quantitative graph and extraction inputs; new comparisons CERTIFIED.** W supplies

\[
\|Vq(z)-P_Tz\|\le f(\|z\|),\qquad
f(R)=\frac43R^2+\frac{10}{3}R^3+\frac{249}{24}R^4.
\tag{8}
\]

Its normal fixed-point map has image norm at most
\(\sqrt{2/3}(\|\eta\|^2+\|\nu\|^2)\). Choose the exact rationals

\[
\rho=0.1514489,\qquad b=0.0190233,\qquad R=0.152639.
\]

The new verifier checks

\[
\frac23(\rho^2+b^2)^2<b^2,\qquad
\rho^2+b^2<R^2,\qquad
\rho+f(R)<\frac15,
\tag{9}
\]

and \(\tfrac83R^2<1\), the squared contraction comparison. The smaller normal tube is inside W's graph domain. It gives the same analytic graph by uniqueness. Every actual lift of norm at most \(\rho\) agrees with it by W's ambient uniqueness below \(3/5\).

Along the radial graph path, \(\|P_Tz\|\le\rho\), \(\|z\|<R\), so (8)–(9) keep its parameters inside \(E_{1/5}\). The proof of (3) therefore works at \(\rho_*\). Its exact parameter margin is

\[
\frac15-\rho_*-f(0.152639)
=\frac{747946011173543597}{8000000000000000000000000}
>9.3493251\times10^{-8}.
\]

For clarity about “largest”: the supremum permitted by this scalar comparison method uses

\[
R(\rho)^2=\frac34\left(1-\sqrt{1-\frac83\rho^2}\right)
\]

and solves \(\rho+f(R(\rho))=1/5\). Exact rational square-root enclosures bracket it strictly between **0.15144896 and 0.15144897**. The approximate value \(0.151448966252\) is informational. This is the comparison-method supremum, not an intrinsic maximal neighborhood or a proof that a larger coarse radius is impossible.

## 4. Exact side derivative and fixed-reference bound

Define

\[
\begin{aligned}
\alpha&=u_1/2+u_2/4-u_3/4-y/48,&\beta&=u_2,\\
\gamma&=u_1/2-u_2/4+u_3/4+y/48,&\delta&=u_3.
\end{aligned}
\]

**CERTIFIED.** Regenerating the augmented system's signature polynomial gives 55 nonzero Laurent monomials. Exact arithmetic in \(\mathbb Q(\sqrt3)\) verifies

\[
\det\mathcal H_x(0,0)=3\sqrt3/2
\]

and the exact derivative

\[
x_{\rm lin}=(0,\gamma,\alpha,\beta+\gamma,\delta,0,\delta).
\tag{10}
\]

The tangent quadratic form is

\[
q^TWq=2(\alpha^2-\alpha\beta+\beta^2+
\gamma^2-\gamma\delta+\delta^2).
\]

The squared dual norms of the seven components in (10) are exactly

\[
(0,2/3,2/3,4/3,2/3,0,2/3).
\]

**PROVED relative to W.** W equations (9)–(10) supply the uniform nonlinear error
\(\|x-x_{\rm lin}\|_\infty<153/10000\) on \(E_{1/5}\). Adding it to the linear dual-norm bound proves (XS4). The transpose parameter map \((u_1,u_2,u_3,y)\mapsto(u_1,u_3,u_2,-y)\) preserves \(W\), giving the same vertical bound.

| Exact tangent radius | Certified strict side bound, rounded upward | Certified margin below \(\pi/6\), rounded downward |
|---|---:|---:|
| \(23/200=0.115\) | 0.148090562 | 0.375508213 |
| \(13/100=0.130\) | 0.165411070 | 0.358187705 |
| \(1/5=0.200\) | 0.246240108 | 0.277358667 |

**PROVED.** The reference columns, as pairs of circular phases in units \(\pi/3\), are \((3,0),(4,2),(5,4)\). Each pair has circular sup-distance \(2\pi/3\). If one correspondence has error at most \(B<\pi/3\), any wrong correspondence has error at least \(2\pi/3-B>B\). Hence the actual maximum-error nearest-order rule has a unique minimizer. The brief's threshold \(\pi/6\) is sufficient and more conservative.

This does **not** create a label-independent table indexed only by the corner. Permuting complementary columns changes the required column order while preserving the corner, \(\Psi\), and class distance; changing a real phase lift by \(2\pi\) changes raw windings. A finite table is meaningful only after fixing a labelled Fourier frame and a phase-lift convention. The transfer theorem avoids this problem by proving equivalence without storing those orders.

**NOT ESTABLISHED.** The inherited \(153/10000\) is a uniform nonlinear remainder on \(E_{1/5}\), not a newly certified quadratic function of \(t\). It cannot be rescaled to \((153/400)t^2\) merely because the first derivative is exact. Nor can (XS4) be extrapolated to \(t=0.30\). A new remainder certificate would be required for either claim.

## 5. Replay of the supplied transfer distance bounds

### 5.1 The replacement inequality

**PROVED.** Suppose source C1 supplies, after choosing entrywise \(2\pi\) windings and row/column gauge, a representative phase lift of the form

\[
Q(w)=P+Uw+\nu(w),\qquad\|\nu(w)\|\le n.
\]

For the supplied horizontal-gauge sources, this means that \(Q(w)=h(Q_{\rm raw}(w)+2\pi N(w))\) is enclosed as displayed; the winding may depend on the point. Choose any fixed row/column permutation, optional transpose or conjugation, and Fourier phase reference for the source. Write the resulting affine phase difference as \(A(w)\). Then

\[
d_{\rm ph}([K(w)],[F])
\le\|h(A(w))\|+n
\le\max_{v\in\operatorname{Vert}(\beta)}\|h(A(v))\|+n.
\tag{11}
\]

Transpose and conjugation preserve this distance to the Fourier class: \(F^T=F\), and \(\overline F\) is a row permutation of \(F\). The last inequality is convexity of the norm of an affine function on a box. Its 16 vertices bound the whole box. C1 need only hold on the intersection with the source ball; evaluating the affine expression on box overhangs makes the upper bound more conservative and does not assert C1 there.

The replay generates a Fourier reference once per source by a small finite search using only allowed corner fields. It then checks that reference using exact arithmetic. The search is an untrusted choice of a norm witness, not an acceptance test. No side solution, side-angle reference, or target root solve is evaluated.

### 5.2 Certified results

**CERTIFIED conditional on source C1.**

| Source seed index | T3 groups | Boxes | Strict distance upper bound |
|---:|---:|---:|---:|
| 2297 | 7 | 934 | 0.128601 |
| 2325 | 4 | 865 | 0.100762 |
| 2326 | 7 | 2,353 | 0.118283 |
| 2327 | 4 | 376 | 0.092678 |
| Total | 22 | **4,528** | **0.128601** |

`verify_coarse.py` interprets every hexadecimal binary64 value as its exact dyadic rational. It derives a rigorous 80-decimal bracket for \(\pi\) from Machin's identity and alternating arctangent series, and checks squared norm bounds by integer arithmetic. Shared vertices are deduplicated. The replay took under one second in this run; runtime is informational and is not an acceptance condition.

`coarse_data.json` retains the four sources' required C1 data, the 22 groups' allowed fields and boxes, and the edge header. It deliberately contains no discarded side-order or side-winding fields. `extract_coarse_data.py` can regenerate that subset from the original compressed certificate. Input and selected-data hashes are recorded.

The exact replay does **not** establish source C1, actual Hadamard existence, or \(p'(\beta)\subset\operatorname{int}E_e\). Those existing obligations remain. Its result is that the **new distance gate** passes every supplied T3 box once those source enclosures are accepted.

### 5.3 Exact stored-frame containment and data correction

**CERTIFIED.** Stored `Mth` entries are approximate inverse-square-root data encoded as exact dyadics. They cannot be silently equated with the exact metric in (1). Set

\[
S=\operatorname{diag}(1,1,1,1/24)M_e.
\]

The replay proves by exact rational LDL factorization

\[
S^TWS\prec(1+10^{-14})I.
\]

For the supplied literal edge header this gives an effective tangent radius below **0.11500000000001**, hence strict containment in \(E_{1/5}\). The general implementation should certify target containment once per edge ball; for a shifted target it must include the center displacement.

The actual `edge_ball_header.json` and sampled certificate have nominal `r=0.115` and `x_radius=0.15`. In particular the attached data's `x_radius` is **not** \(7/40\), despite the brief's prose. The exact dyadic values are in the receipt. This discrepancy does not affect (XS3), whose distance bounds lie well below both constants.

## 6. Format and certifier change

**PROVED sound migration rule, conditional on the theorem inputs.** Replace the T3 group by

```json
{
  "kind": "T3",
  "target": 0,
  "g": "id",
  "rows": [0, 1, 2],
  "cols": [0, 1, 2],
  "wind": [0, 0, 0],
  "boxes": []
}
```

The fourth corner winding is unnecessary; only the first three corner phase lifts enter \(p'\). A transition reader may accept four entries and ignore the fourth, but the new format can store three. Delete `hcols`, `vrows`, `wind_h`, and `wind_v`.

The sound obligations are:

1. **Once per target:** establish the accepted W chart on \(E_{1/5}\), identify the target with its restriction, and certify \(E_e\subset E_{1/5}\).
2. **For each source region:** retain its Hadamard/C1 enclosure and certify (11) below \(3/20\), or below the improved \(\rho_*\) if that lemma is used.
3. **For each T3 box:** extract the three corner phases and the order-invariant signed \(\Psi\), and certify \(p'(\beta)\subset\operatorname{int}E_e\).
4. Apply (XS1). There is no horizontal/vertical target-tube membership check and no additional sign check.

In this rule the theorem is applied to \(K=g\cdot H_{\rm source}\), exactly as in the original T3 definition. A distance bound on the source also bounds \(K\) by the Fourier symmetries just noted. The surrounding proof retains its existing symmetry rule for \(g\); the conclusion does not silently assert that transposition of an arbitrary Hadamard is ordinary row/column equivalence.

The coarse distance certificate can be cached at source-region level. In the supplied example one Fourier reference per source suffices for all its T3 groups; no new order or winding fields are needed per T3 group. The reference is a witness for a conventional phase norm bound, not side-branch data.

**Implementation audit.** The reference `edgecert.check_T3` consumes target tubes already generated by C1e, checks both source sides against every potentially intersected target tube, and recursively subdivides failures. It does not itself always run two fresh Krawczyk solves. The new lemma removes those two target-side membership tests and their subdivision mechanism. Chart existence certification, source C1, image bounds, and any unrelated use of C1e remain necessary. A complete implementation also needs to identify its target chart with W's normalized analytic branch; an arbitrary collection of locally unique roots is not enough.

The included Python prototype implements the reduced extraction and membership gate against the supplied Taylor-model API. Its tests check the exact Fourier point, gauge/permutation invariance of extraction, and rejection of malformed or unsupported inputs. The mathematical theorem is a dependency of its soundness. No Julia or Lean source was supplied, so those ports are specified rather than represented as completed.

For Lean, the new central theorem should accept a Hadamard, the specified corner extraction, the W chart theorem, target containment, and the coarse metric bound. Its conclusion is equivalence to \(H(p')\). The checker then needs finite norm arithmetic and target membership. It no longer needs target-side tube soundness for T3 itself. The 72-corner arithmetic lemma and rational comparison receipts are separated for easy formalization.

## 7. Radius conclusions and remaining work

| Claim | Status and scope |
|---|---|
| T3 identification at \(t=0.13\), \(\rho=0.15\) | **PROVED relative to W/U** |
| T3 identification for every target contained in exact \(E_{0.20}\) | **PROVED relative to W/U**, with the coarse distance hypothesis |
| Coarse radius \(0.1514489\) | **PROVED relative to W**, new exact comparisons **CERTIFIED** |
| All 4,528 supplied boxes pass the new distance gate | **CERTIFIED conditional on source C1** |
| Both chart sides move less than \(\pi/6\) for \(t\le0.20\) | **PROVED relative to W's side remainder**, new algebra **CERTIFIED** |
| A label- and phase-lift-independent side table indexed only by a corner | Not a valid general requirement; complementary permutations and windings change it |
| Radius \(t=0.30\) | **NOT ESTABLISHED** |
| The numerical reference chart fails beyond \(t=0.20\) | **NOT ESTABLISHED**; no such impossibility claim is made |
| Enlarging the actual quartet-free X-ball to \(t=0.20\) | **NOT ESTABLISHED here**; its full image exclusion and other edge-ball obligations must still be certified |
| Removal of the per-transfer side data and target-tube checks under the stated gates | **PROVED** |
| A complete atlas, a Lean kernel replay, or no four MUBs | **NOT ESTABLISHED by this return** |

The structural obstruction in the brief is resolved on the supplied W domain: a small extracted corner anchors the Fourier frame, and W's framed continuation recovers the entire completion. Extending to \(t=0.30\) now requires a larger certified chart and a recovery argument covering the required source distances. Side-order ambiguity and the two target-side tube membership tests are no longer required within the domain proved here.

## 8. Replay

See `README.md` for commands. The main theorem constants and the 4,528 distance checks use Python's standard library only. The side-Jacobian and side-angle comparisons use `python-flint`; the integration prototype also uses `numpy` and the provided Taylor-model reference modules. Every receipt states its external theorem assumptions. Run Python normally, without `-O`, because mathematical assertions are used as verifier gates.

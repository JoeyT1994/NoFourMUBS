# Patch2442Local: exact leading obstruction and a directional radius certificate

## Status and scope

**PARTIAL. This is not a certificate excluding the whole punctured seed ball. No global radius r\_* is established here.**

This package establishes exact multivariate leading forms, identifies an exact direction on which all six separate `C > 0, F > 0` tests fail near the seed, proves a coupled-orientation exclusion, and certifies that exclusion through the rational radius **3/50 radians** on an explicitly stated conical angular domain and its exact seed-frame images. The cone has angular parameter **1/200**. It is not the whole unit sphere. The box adapter never treats membership in the radius-3/50 ball alone as an exclusion certificate.

There is **no physical counterexample** to the proposed full-ball theorem in this package. Failure of a sufficient squared-mean test must not be confused with existence of a Hadamard completion.

All radii below are seed phase radii. Arithmetic used for acceptance is exact rational/algebraic arithmetic or outward dyadic interval arithmetic implemented with integers.

## 1. Definitions and adopted, pinned inputs

Let omega = exp(2 pi i/3), theta\_0 = (2,4,4,2) pi/3, and

\[
E(\theta)=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\qquad (a,b,c,d)=(e^{i\theta_1},e^{i\theta_2},e^{i\theta_3},e^{i\theta_4}).
\]

A strict-D0 corner means a corner of an actual order-six complex Hadamard, with R(E)>0 and R(E) at least as large as the invariant of every one of its 400 three-by-three corners. Ties are allowed in maximality.

Use exactly the signed-mean definitions and the orientation convention in the pinned `SignedCornerPSDPrune/PROOF.md`, especially its clearing argument. In particular, for a known column pair j among 01, 02, 12,

\[
 m_{j,\sigma}=\frac{A_j+\sigma B_j\sqrt R}{3\Delta},
 \qquad D=3\Delta,
\]
\[
 C_j=A_j^2+(B_j^2-D^2)R,
 \qquad F_j=C_j^2-4A_j^2B_j^2R.
\]

Here A and B clear the **sum** of the three complementary signed corner values; the denominator of the **mean** is 3 Delta. This factor of three is retained throughout.

The adopted implications are:

1. The squared-corner identity and maximality give `m_{j,sigma}^2 <= R` for every applicable mean of a physical maximal corner.
2. MC2–MC3 supply the two side fibers and positivity of Delta on the physical R>0 domain.
3. MC4, with its Tao exception separated, requires opposite horizontal/vertical side signs. The exception has R=243. Every application of the coupled test below verifies R<243.

These are adopted repository results, not new completion or classification assumptions. Their exact file hashes, the upload hash, and snapshots are in `PINNED_INPUTS.json`. `verify.py` checks all snapshot hashes. No assertion that the rest of the no-four-MUBs project is complete is needed here.

For reference, the invariant circuit uses

\[
s=-1-a-b,\quad t=-1-c-d,\quad r=-1-c/a-d/b,
\]
\[
X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad p=X+Y+Z,
\quad J=sr\bar t+\bar s\bar r t,
\quad W=XY+XZ+YZ-XYZ,
\]
\[
g=27-3p+J,\quad \eta=9-p+J,
\quad \chi=W-(p-9)(p-18)+(p-15)J,
\quad R=4g^2\eta-\chi^2.
\]

The three side denominator polynomials are

\[
P_0=rs^2+\bar r t^2+(3-Z)st,
\quad P_1=t\bar s^2+r^2\bar t+(3-Y)r\bar s,
\quad P_2=s\bar t^2+\bar r^2\bar s+(3-X)\bar r\bar t,
\]

and Delta = |P_0 P_1 P_2|^2. The complete six coefficient functions, moment circuit, pair rephasings, and all signs are explicit in `formal.py`, `symbolic.py`, and the pinned signed-mean proof.

## 2. Exact multivariate leading forms

Write theta=theta\_0+rho u, with real u=(u1,u2,u3,u4). A subscript denotes the homogeneous degree in theta-theta\_0, equivalently the coefficient of the indicated power of rho.

Define

\[
d=u_1u_4-u_2u_3,
\quad X_2=u_1^2-u_1u_2+u_2^2,
\quad Y_2=u_3^2-u_3u_4+u_4^2,
\]
\[
Z_2=(u_3-u_1)^2-(u_3-u_1)(u_4-u_2)+(u_4-u_2)^2,
\qquad \nu=X_2Y_2Z_2.
\]

Then, for each of the three known pairs,

\[
\boxed{R_4=3^5d^2,\qquad \Delta_{12}=3^6\nu^2,}
\]
\[
\boxed{B_{10}=\frac{3^7}{2}\nu d^2,
\qquad A_{12}=-\frac{3^9\sqrt3}{2}\nu d^3,}
\]
\[
\boxed{C_{24}=\frac{3^{19}}2\nu^2d^6.}
\]

All lower coefficients of these quantities vanish. Moreover,

\[
[A^2-B^2R]_{24}=[A^2-B^2R]_{25}=0.
\]

In particular, the degree-48 leading candidate for F vanishes identically, and so do degrees 49, 50, and 51. The first generally nonzero homogeneous form is degree 52.

### 2.1 Factored degree-52 form

Introduce the three explicit quadratics

\[
L_1=2u_1u_2-u_1u_4-u_2u_3+2u_3u_4,
\]
\[
L_2=2u_1^2-2u_1u_2-2u_1u_3+u_1u_4+u_2u_3+2u_3^2-2u_3u_4,
\]
\[
L_3=2u_1u_2-u_1u_4-2u_2^2-u_2u_3+2u_2u_4+2u_3u_4-2u_4^2.
\]

They satisfy

\[
L_1L_2-L_1L_3-L_2L_3=3d^2.
\]

Set q\_01=L1 L2, q\_02=-L1 L3, q\_12=-L2 L3. The exact identities are

\[
\boxed{[A_j^2-B_j^2R]_{26}=3^{17}\nu^3d^2q_j,}
\]
\[
\boxed{(F_j)_{52}=3^{34}\nu^6d^4\bigl(q_j^2-81d^4\bigr).}
\]

These are global polynomial identities, not a fit to sampled directions. The verifier reconstructs the multivariate coefficients in Q(i,sqrt(3)), checks the degree-25 cancellation, then checks each degree-26 polynomial against the displayed factorization. The retained complete low-order coefficient data are in `symbolic_coefficients.json`; the degree-26 coefficient lists are in `Q26_coefficients.json`; the small degree-eight factors are in `F52_reduced_polynomials.json`.

To see the last implication without expanding a degree-52 polynomial, use

\[
 F=(A^2-B^2R)^2-2D^2R(A^2+B^2R)+D^4R^2.
\]

The three terms start at degrees 52, 52, and 56, respectively. Substitution of the checked lower-degree forms gives the boxed formula.

### 2.2 Derivation and verification of the lower forms

The first-order row sums are

\[
s_1=\frac{\sqrt3}2(u_1-u_2)+\frac i2(u_1+u_2),
\quad t_1=-\frac{\sqrt3}2(u_3-u_4)+\frac i2(u_3+u_4),
\quad r_1=-s_1-\overline{t_1}.
\]

In particular, Im(s1 t1)=sqrt(3)d/2. Direct substitution gives R4=324 Im(s1 t1)^2. The three leading P forms are 3 s1 t1, 3 r1 conjugate(s1), and 3 conjugate(r1 t1). This gives Delta12. Substitution in the six moment coefficients gives the displayed A12 and B10.

For an independently checkable cancellation, put ell=9 sqrt(3)d. The exact coefficient replay verifies

\[
A_{12}=-\ell B_{10},\quad R_4=\ell^2,
\quad 2\ell A_{13}+2R_4B_{11}+B_{10}R_5=0
\]

for all three pairs. This proves the degree-25 cancellation after factoring out B10; no division by ell or by d is needed for the identity.

## 3. An exact obstruction to the separate F-positive strategy

Take the unit sup-norm direction

\[
\boxed{u_*=(-1,0,0,-1).}
\]

It is fixed by transposition. Here d=1, nu=3, (L1,L2,L3)=(-1,3,-3), and

\[
R(\theta_0+\rho u_*)=243\rho^4+O(\rho^5),
\quad C_j(\theta_0+\rho u_*)=\frac{3^{21}}2\rho^{24}+O(\rho^{25}).
\]

For pairs 01 and 02,

\[
F_j(\theta_0+\rho u_*)=-72\,3^{40}\rho^{52}+O(\rho^{53}).
\]

For pair 12, the degree-52 coefficient vanishes and the next coefficient is

\[
F_{12}(\theta_0+\rho u_*)=-600\sqrt3\,3^{40}\rho^{53}+O(\rho^{54}).
\]

Consequently all three F values are negative for sufficiently small positive rho. Since the direction is transpose-fixed, all six horizontal/transposed `C>0,F>0` tests fail there. The exact univariate verifier calculates through input order 18, which determines F through degree 54; it does not infer anything from uncomputed padded coefficients above that order.

**Interpretation:** this disproves a uniform positivity argument using these six separate both-sign F tests. It does not disprove strict-D0 exclusion. Indeed, the next section certifies physical exclusion on a whole cone around this direction out to rho=3/50. Opposite physical side signs are the information lost by testing each orientation independently for exclusion of both signs.

## 4. A coupled test and a certified directional radius

### 4.1 Root-free coupled inequality

Choose any horizontal and vertical means. A physical matched pair with R>0, R<243 must satisfy, for the same sigma,

\[
|A_h+\sigma B_h\sqrt R|\le3\Delta_h\sqrt R,
\quad |A_v-\sigma B_v\sqrt R|\le3\Delta_v\sqrt R.
\]

Multiply by Bv and Bh and add. The radical terms cancel. By the triangle inequality and (x+y)^2<=2(x^2+y^2), a necessary inequality is

\[
\boxed{(A_hB_v+A_vB_h)^2
\le18R\bigl((\Delta_hB_v)^2+(\Delta_vB_h)^2\bigr).}
\]

A strictly positive difference excludes both matched sign choices. This identity has no radical, no division, and uses the required opposite-sign matching rather than discarding it.

### 4.2 Fixed-sign version used in the finite certificate

A simpler sufficient condition is enough on the certified cone. If

\[
A_h\le0,\quad B_h>3\Delta_h,
\quad A_v\le0,\quad B_v>3\Delta_v,
\quad 0<R<243,
\]

then horizontal sign -1 and vertical sign -1 are each impossible: the absolute value of A-B sqrt(R) is strictly larger than 3 Delta sqrt(R). Every allowed opposite-sign matched pair has one of those signs. Thus no physical matched completion can be maximal. Equality A=0 causes no difficulty; strictness comes from B>3 Delta and R>0.

### 4.3 The precise finite-radius theorem

Let r\_c=3/50 and epsilon=1/200. For u!=0, set rho=||u||\_infinity. Define the conical set K by

\[
u_1u_4>0,\qquad
\min(|u_1|,|u_4|)\ge(1-\epsilon)\rho,
\qquad |u_2|,|u_3|\le\epsilon\rho.
\]

**Theorem (directional radius, not full-ball radius).** If u belongs to K and 0<||u||\_infinity<=3/50, no physical order-six Hadamard has E(theta\_0+u) as a strict-D0 corner. The same assertion holds about the conjugate seed (4,2,2,4) pi/3.

Proof: first consider the charts on which |u1|=rho. Write u=rho v. There are two parameter boxes:

- v1=-1; v2,v3 in [-1/200,1/200]; v4 in [-1,-199/200]; rho in [0,3/50].
- v1=+1; v2,v3 in [-1/200,1/200]; v4 in [199/200,1]; rho in [0,3/50].

The exact radial deflation below produces analytic quantities

\[
\widehat R=R/\rho^4,\quad \widehat\Delta=\Delta/\rho^{12},
\quad \widehat A=A/\rho^{12},\quad \widehat B=B/\rho^{10}.
\]

On every leaf of a complete binary subdivision of each parameter box, the verifier establishes for at least one known pair

\[
\widehat A\le0,
\qquad \widehat B-3\rho^2\widehat\Delta>0,
\qquad \rho^4\widehat R<243.
\]

Multiplication by positive powers of rho gives the conditions in §4.2. The parameter boxes are invariant under transposition, which exchanges v2 and v3. Thus the same excluded sign is available vertically at every seed, even when a different leaf or known pair supplies that vertical witness. The finite certificate contains 104 accepted leaves: 16 for the negative chart and 88 for the positive chart. Its coverage is certified by replaying its binary tree from the full root boxes; no point sampling is used.

The simultaneous swap of the last two selected rows and columns sends u to (u4,u3,u2,u1), fixes the F3 seed, and preserves strict-D0 maximality. It covers the charts on which |u4|=rho. Complex conjugation transfers the result to the conjugate seed. This proves exactly the stated conical theorem.

### 4.4 Radial deflation and explicit remainder control

For real v and rho>=0, define

\[
\phi(v,\rho)=\frac{e^{i\rho v}-1}{\rho},\quad \phi(v,0)=iv.
\]

Use the degree-12 expansion

\[
\phi(v,\rho)=\sum_{k=1}^{12}\frac{i^k v^k\rho^{k-1}}{k!}+\mathcal E,
\qquad |\mathcal E|\le\frac{|v|^{13}\rho^{12}}{13!}.
\]

This bound follows from the real-parameter integral remainder for exp(ix), whose derivatives have modulus one. In the certificate, |v|<=2 even for the differences entering r. Therefore the uniform complex remainder is at most

\[
\frac{2^{13}(3/50)^{12}}{13!}
=\frac{2187}{763702392578125000000000}<10^{-20}.
\]

Both real and imaginary parts are enlarged by this rational error bound. The exact inputs to the scaled circuit are

\[
\hat s=-\omega\phi(v_1,\rho)-\bar\omega\phi(v_2,\rho),
\quad \hat t=-\bar\omega\phi(v_3,\rho)-\omega\phi(v_4,\rho),
\]
\[
\hat r=-\omega\phi(v_3-v_1,\rho)-\bar\omega\phi(v_4-v_2,\rho).
\]

The complete scaled formulas are implemented directly in `cones.py`; no division by a small computed interval occurs. For example, if X=|s-hat|^2, Y=|t-hat|^2, Z=|r-hat|^2, p=X+Y+Z, j=2 Re(s-hat r-hat conjugate(t-hat)), w=XY+XZ+YZ and h=XYZ, then

\[
\begin{aligned}
\widehat R={}&324w-81p^2+54\rho pj
+\rho^2(27j^2+18p^3-54pw-324h)\\
&+\rho^3(-24p^2j+30jw)
+\rho^4(2pj^2-p^4+2p^2w+54ph-w^2)\\
&+\rho^5(4j^3+2p^3j-2pjw-30jh)
+\rho^6(-p^2j^2-2p^2h+2wh)\\
&+2\rho^7pjh-\rho^8h^2.
\end{aligned}
\]

This is an exact substitution of p\_actual=rho^2 p, J\_actual=rho^3 j and W\_actual=rho^4 w-rho^6 h in the invariant polynomial, not a truncated expression for R. Analogous exact division by the known powers of rho gives the scaled P, Delta, A and B circuits. Their only approximation is the explicitly enclosed exponential remainder.

`intervals.py` represents each endpoint as an integer divided by 2^112. Integer floor and ceiling implement every outward multiplication or division. The sqrt(3) enclosure comes from an integer square root. No machine floating-point value authorizes a certificate. CPU measurements, which are not mathematical bounds, use the system process timer.

## 5. What happens on the determinant-zero cone

For a fixed direction with d!=0, the leading forms already prove a qualitative directional exclusion: B10>0, A12 has sign -sign(d), and B has order 10 while Delta has order 12. Transposition preserves d. Hence the same noncancelling side sign is excluded in both orientations for all sufficiently small positive rho, with a direction-dependent threshold. This does **not** supply a uniform explicit threshold over all such directions.

The quartic R form vanishes on d=0. The next term is not uniformly nonpositive. On u=(x,y,kx,ky), exact coefficient replay gives

\[
\boxed{R_5=648\sqrt3\,k(k-1)xy(x-y)(k^2-k+1)(x^2-xy+y^2).}
\]

For example the unit sup-norm direction (-1/4,-1/2,-1/2,-1) has R4=0 and R5=729 sqrt(3)/32>0. It cannot be removed merely by declaring the degenerate leading-R locus nonphysical. This is a statement about R, not proof of a Hadamard completion.

On the further plane u=(x,0,y,0),

\[
\boxed{R_6=9(x+y)^2(x-2y)^2(2x-y)^2.}
\]

This has additional zero directions. No complete blow-up covering all these strata is provided here. Finite-radius coverage of the rest of the unit sphere, including neighborhoods of d=0, remains the missing step for the user's full-ball theorem.

## 6. Whole-box adapter, exact frame changes, and controls

`verify.py --boxes INPUT.jsonl.gz --output OUTPUT.jsonl.gz` accepts records with `id`, four rational-string `centers`, and four nonnegative rational-string `radii`. Plain JSONL is also accepted. Each result has `id`, `ok`, `reason`, and `statement`.

Before any acceptance, the adapter proves that the entire closed input box lies in the punctured circular sup-norm ball of radius 3/50 about one target seed. Pi is enclosed by an exact Machin alternating-series bound. An integer winding proposal is followed by rigorous interval containment; the proposal itself never certifies a box. The origin must be excluded by a separated coordinate interval. Boxes straddling the radius boundary or the origin fail closed.

It then verifies membership of the whole box in the proved cone. Optionally, it uses one of the 36 exact rephasings of the three selected rows and columns. If U is the seed-offset matrix with first row and column zero, such a map is

\[
U'_{ij}=U_{r_i,c_j}-U_{r_i,c_0}-U_{r_0,c_j}+U_{r_0,c_0}.
\]

Each map sends the F3 base to one of the two target seeds after dephasing. The verifier checks all 36 Laurent identities R(E')=R(E) exactly, and checks the base exponents. The transformed whole box must independently satisfy the same seed-radius and cone containment tests. These frame images are **not asserted to cover the ball**.

A box inside the ball but outside this angular domain returns `ok:false`, reason `inside_ball_but_outside_certified_angular_domain`. It is not relabeled excluded. This is deliberately a partial verifier, not a radius-only certificate for the pilot campaign.

### Physical negative controls

The six controls are the three pinned physical strict-D0 points

\[
(-2\pi/3,-\pi/3+\delta,0,-\pi+\delta),
\qquad \delta\in\{1/100,1/5,1/2\},
\]

and their transposes. The pinned exact physical-algebra checker replays the Hadamard and all-400 maximality census. For each control, the zero coordinate has circular distance exactly 2 pi/3 from the corresponding coordinate of **both** target seeds. Consequently every control is outside the radius-3/50 ball. The adapter is also tested on enclosing rational boxes for these points and must reject them.

Additional controls include accepted interior cone boxes about both seeds, nontrivial 2 pi windings, boxes outside the ball, an origin-straddling box, a box whose center is inside but whose extent leaves the ball, uncovered rank-one directions, and invalid rational inputs. Exact timings and outcomes are retained in the replay receipt.

## 7. Reproduction and deliverable boundary

Run with ordinary Python 3 and SymPy. `python -O` is forbidden because it disables exact verification assertions. No network, C++ compiler, MPFR, or external interval package is required.

```
python verify.py
python verify.py --boxes inputs/data/leaves_4174.jsonl.gz --output /tmp/patch2442_results.jsonl.gz --receipt /tmp/patch2442_receipt.json
```

`build_cones.py` regenerates the finite outward cover. `symbolic.py` regenerates the exact multivariate coefficient file. The verifier independently replays retained coefficients, factorizations, cone leaves, pinned inputs, controls, and frame identities. Supplied CPU measurements are execution records, not promised runtimes.

`MANIFEST.sha256` pins the delivered files, excluding itself and the packaging ZIP. `PINNED_INPUTS.json` separately pins the adopted repository inputs and the uploaded archive. `results/` records the executed replay and any box classification performed when packaging.

**Conclusion:** the explicit 3/50 radius in this package applies to the stated directional domain, not to the entire seed ball. The requested global r\_*>=0.0475 (or >=0.06) remains unproved by this work. The exact negative-F direction and the factored degree-52 forms identify why an uncoupled leading-F positivity proof cannot provide that closure; the coupled radial circuit provides a checked replacement on a nonempty four-dimensional conical domain.

## Executed replay summary

The packaged replay completed all exact/outward checks. Verification CPU time was 10.435739768999998 seconds. The supplied leaf adapter processed 4174 records, accepted 0, and returned 4174 as inconclusive. These are partial angular-domain results, not full-ball or pilot closure. Detailed bounds, controls and timings are in `results/verification.json`.

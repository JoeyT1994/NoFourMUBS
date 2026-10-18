# A quadratic unitary core and two phase gates for order-six Hadamards

## What is new

The cube roots in the preceding conjugate-Fourier construction can be replaced by **cube roots of unit-modulus numbers**, without any additional radical. All cubic dependence then lies in two unitary diagonal phase gates. After normalization, the full factorization consists entirely of unitary matrices.

More precisely, after the three square roots have been evaluated, an explicit unitary `K` and two phases `xi_h, xi_v` are known. For arbitrary phases `w_h, w_v`,

\[
U(w_h,w_v)=\mathscr F\mathscr P(w_v)K\mathscr P(w_h)\mathscr F
\]

is unitary, and on the inherited admissible domain

\[
\sqrt6\,U(w_h,w_v)\text{ is Hadamard}
\quad\Longleftrightarrow\quad
w_h^3=\xi_h,\qquad w_v^3=\xi_v.
\]

There are exactly nine phase pairs on this fixed two-torus that give flat matrices. They differ only by cycling the last three rows and columns. They are not nine inequivalent Hadamards.

An exact sum-of-squares identity quantifies the failure of either phase equation. The quadratic core is unitary before the phase equations are solved.

### Scope and inherited inputs

The results of the supplied paper, *A Complete Classification of Complex Hadamard Matrices of Order Six*, by Mateo Cárdenes Wuttig and Joseph Tindall, remain accepted inputs. The global inputs are its Theorem 22 and Supplemental Proposition S.11, together with the previously derived extended-domain theorem, the inclusion of H_cross, and the positive-sheet coverage argument in `Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md`.

The new algebra below is proved directly by rewriting an existing invertible phase block and by block multiplication. It does not re-prove the classification or independently audit the earlier extension through the original companion singularities.

The three auxiliary rational phases `lambda_i` remain. This note does **not** claim to have eliminated them, reduced the generic radical count, or enlarged the domain. Its advances concern the cubic stage, a genuinely unitary factorization, and an exact characterization of flatness in the resulting two-angle orbit.

Matrices called Hadamard are unnormalized: entries have modulus one and `HH†=6I`. The normalized matrix is `U=H/sqrt(6)`.

---

## 1. The unchanged four-seed input and frame selection

Start with four phases and set

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\qquad G_h=6I-EE^\dagger,
\qquad G_v=6I-E^T\bar E.
\]

For the bounded Fourier frame, use the preceding seed-only convention. In `G_h`, put the least-correlated row pair in positions zero and one. In `G_v`, do the same for the seed columns. Apply those permutations to `E` and dephase it. All formulas below refer to this adapted corner, still denoted by `E`.

Dephasing a phase matrix `A` means

\[
E_{ij}=A_{00}A_{ij}\bar A_{i0}\bar A_{0j}.
\]

No roots are required for this frame selection. The constructor returns both the adapted representative and a representative with the original input corner restored.

For either Gram matrix write

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix}.
\]

Define

\[
X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad
p=X+Y+Z,\quad J=2\operatorname{Re}(sr\bar t),
\]

\[
W=XY+XZ+YZ-XYZ,
\]

\[
g=27-3p+J,\qquad \eta=9-p+J,
\]

\[
\chi=W-(p-9)(p-18)+(p-15)J,
\qquad \mathcal R=4g^2\eta-\chi^2.
\]

The horizontal and vertical evaluations agree. For the positive-sheet atlas use

\[
\boxed{\zeta=\frac{\chi+i\sqrt{\mathcal R}}{2g}.}
\]

Use `z=zeta` horizontally and `z=conjugate(zeta)` vertically.

The strict domain is `R>0`. It implies `g>0`, positive complementary Gram matrices, and nonzero side factors below. The permitted boundary is `g>0`, `R=0`, and nonvanishing of all three `P_i` in both directions. No new domain condition is introduced in this note.

The positive sheet suffices for inherited class coverage. This does not assert that both candidates at one prescribed corner are equivalent. The previous negative-to-positive opposite-corner transport changes the corner in general.

### The inherited uniform bounds

Let `p` be the sum of the three squared off-diagonal Gram entries. Then

\[
\det G+\det(6I-G)=54-6p.
\]

Since `G` is positive definite and its complement is positive semidefinite, `p<9`. The least squared correlation is therefore below three. In the adapted frame,

\[
|\mu|^2<1/3,\qquad n=1-|\mu|^2>2/3,
\qquad \mu=s/3.
\]

Selecting the larger first-row Fourier coefficient gives `rho>=n/2>1/3`.

---

## 2. The unchanged quadratic-stage side data

For either `G,z`, form

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t,
\end{aligned}
\]

\[
(c_0,c_1,c_2)=(9-|r|^2,9-|t|^2,9-|s|^2),
\]

\[
\lambda_i=\frac{P_i(g+c_i\bar z)}{|P_i|^2}.
\]

The first nonconstant row product is

\[
u=\lambda_0\bar\lambda_1.
\]

Each `lambda_i` and `u` has modulus one. Define

\[
\mu=s/3,\qquad \nu=t/3,\qquad n=1-|\mu|^2,
\qquad k=r/3-\nu\bar\mu,
\]

\[
\alpha=\mu^2-u\bar\mu,\qquad
\gamma=2\mu\nu-z\lambda_0/3.
\]

Choose a square root

\[
\delta^2=\frac g{27}\lambda_0\bar\lambda_1\bar\lambda_2.
\]

The number

\[
d_F=\frac{27}{g}(n\gamma-2\alpha k)\bar\delta
\]

is real. Choose the sign of `delta` so that `d_F>=0`, and put

\[
\rho=(n+d_F)/2,
\]

\[
q=\frac\alpha\rho,\qquad
c_+=\frac{k-\delta\bar q}{n},\qquad
c_-=\frac{kq+\delta}{n}.
\]

At `d_F=0` either determinant orientation is allowed. This includes repeated original coordinates. It does not cause a zero denominator.

The previous side formula was

\[
X=\begin{pmatrix}1&0&0\\\mu&1&q\\\nu&c_+&c_-\end{pmatrix}
\operatorname{diag}(1,\tau,\bar\tau)F_3,
\]

where

\[
\tau^3=T=u\rho+\mu\alpha,\qquad |\tau|^2=\rho,
\]

and

\[
F_3=\begin{pmatrix}1&1&1\\1&\omega&\omega^2\\1&\omega^2&\omega\end{pmatrix},
\qquad \omega=e^{2\pi i/3}.
\]

Everything preceding `tau` is evaluated using only rational operations, conjugation, the shared square root, and the side determinant square root.

---

## 3. Replace the general cube root by a unit-phase cube root

Define the new quadratic-stage numbers

\[
\boxed{\sigma=u+\mu q=\frac T\rho,\qquad
\xi=\frac{\sigma^2}{\rho}.}
\]

The exact norm identity `|T|^2=rho^3` gives

\[
\boxed{|\sigma|^2=\rho,\qquad |\xi|=1.}
\]

Choose any phase `w` satisfying

\[
\boxed{w^3=\xi.}
\]

It can be evaluated by an angle division:

\[
w=\exp\!\left(\frac{i}{3}\arg\xi\right).
\]

The other choices multiply `w` by a cube root of unity. Define

\[
\boxed{
M=\begin{pmatrix}
1&0&0\\
\mu&\sigma&q\bar\sigma\\
\nu&c_+\sigma&c_-\bar\sigma
\end{pmatrix},
\qquad P(w)=\operatorname{diag}(1,\bar w,w).
}
\]

Then the side formula is

\[
\boxed{X=M P(w)F_3.}
\]

No cube root is used to form `M` or `xi`. Both are known before choosing `w`.

### Exact equivalence, with no extra algebraic extension

Let `tau` be an old cube root, so `tau^3=T` and `|tau|^2=rho`. Set

\[
w=\frac{\tau}{\bar\tau}.
\]

Then

\[
w^3=\frac{T}{\bar T}=\frac{\sigma^2}{\rho}=\xi,
\qquad
\sigma\bar w=\tau,
\qquad \bar\sigma w=\bar\tau.
\]

Conversely, given any unit-phase root `w^3=xi`, set `tau=sigma*conjugate(w)`. Then

\[
\tau^3=\frac{\sigma^3}{\xi}=\rho\sigma=T,
\qquad |\tau|^2=\rho.
\]

Thus the two cubic descriptions are bijective. No additional root or continuous parameter is introduced.

### Improved coefficient interpretation

Write the actual Fourier coefficients as

\[
x_j=\mu+A\omega^j+B\omega^{-j},\qquad
y_j=\nu+C\omega^j+D\omega^{-j}.
\]

The preceding construction gives `rho=|A|^2`, `alpha=AB`, `q=B/conjugate(A)`, `c_+=C/A`, and `c_-=D/conjugate(A)`. With `w_0=A/conjugate(A)`,

\[
M=\begin{pmatrix}
1&0&0\\
\mu&A w_0&B\bar w_0\\
\nu&C w_0&D\bar w_0
\end{pmatrix}.
\]

All entries of `M` therefore have modulus at most one: they are Fourier coefficients of phase rows multiplied by phases. In particular,

\[
\boxed{3MM^\dagger=G.}
\]

The matrices `M` are generally **not** unitary. They are Gram factors. The normalized six-by-six matrix constructed from them in the next section is unitary.

In the adapted frame,

\[
1/3<\rho\le1,\qquad 1/\sqrt3<|\sigma|\le1.
\]

The new variable division in `xi=sigma^2/rho` is by an already bounded positive number. The cubic radicand has modulus exactly one, rather than merely being separated from zero.

---

## 4. A unitary core before either cube root is evaluated

Let `M_h,M_v` be the two quadratic-stage coefficient matrices. Write

\[
\Gamma_h=\operatorname{adj}G_h,
\qquad G_h^{-1}=\Gamma_h/g.
\]

Define

\[
\boxed{
K=\frac1{\sqrt6}
\begin{pmatrix}
E&\sqrt3\,M_h\\
\sqrt3\,M_v^T&-3M_v^T E^\dagger\Gamma_hM_h/g
\end{pmatrix}.
}
\]

This matrix requires no cubic root. It obeys

\[
\boxed{KK^\dagger=I_6.}
\]

To see this, take `B_0=sqrt(3)M_h` and `C_0=sqrt(3)M_v^T`. The side identities give

\[
B_0B_0^\dagger=6I-EE^\dagger,
\qquad C_0^\dagger C_0=6I-E^\dagger E.
\]

Set `D_0=-C_0 E†G_h^{-1}B_0`. The usual block multiplication gives

\[
C_0^\dagger D_0=-E^\dagger B_0,
\qquad D_0^\dagger D_0=6I-B_0^\dagger B_0.
\]

Hence the unnormalized block matrix has adjoint product `6I`. This proof needs the Gram identities, not entrywise flatness of `B_0,C_0,D_0`.

Now define the fixed Fourier unitary and the variable phase gate

\[
\mathscr F=\operatorname{diag}(I_3,F_3/\sqrt3),
\qquad
\mathscr P(w)=\operatorname{diag}(I_3,1,\bar w,w).
\]

For any unit phases `w_h,w_v`, put

\[
\boxed{U(w_h,w_v)=\mathscr F\mathscr P(w_v)K\mathscr P(w_h)\mathscr F.}
\]

**Every factor in this formula is unitary.** Therefore `U(w_h,w_v)` is unitary for every pair of phase-gate angles, even when they do not satisfy the cubing equations. Its upper-left block is always `E/sqrt(6)`, and its first row and column remain constant `1/sqrt(6)`.

At the locking phases,

\[
w_h^3=\xi_h,\qquad w_v^3=\xi_v,
\]

one has

\[
\sqrt6\,U=
\begin{pmatrix}E&B\\C&-CE^\dagger\Gamma_hB/g\end{pmatrix},
\qquad B=M_hP(w_h)F_3,\quad C=F_3P(w_v)M_v^T.
\]

These are exactly the preceding matched side blocks. Thus the inherited lower-block norm theorem establishes full entrywise flatness.

The Fourier matrices are symmetric, which explains why the displayed fixed factor on the right is `mathscr F`, rather than its adjoint. Both are unitary; the formula above has the correct transpose convention for the vertical block.

The core `K` is not generally flat and is not a fixed universal device. It depends on all four seed phases and the quadratic choices. The factorization does not mean that two physical phase shifters alone implement an arbitrary six-mode Hadamard.

---

## 5. Exact flatness is equivalent to the two phase equations

This direction is stronger than merely giving a sufficient construction. There are no additional flat points on this fixed two-torus orbit.

For one side write

\[
M=\begin{pmatrix}1&0&0\\\mu&a&b\\\nu&c&d\end{pmatrix},
\qquad X(w)=MP(w)F_3,
\]

and let `xi` be its prescribed phase target. Define

\[
\boxed{\Lambda=6\bigl(|ab|^2+|cd|^2\bigr)
=6\rho^2\bigl(|q|^2+|c_+c_-|^2\bigr).}
\]

Then

\[
\boxed{
\sum_{i,j=0}^{2}\bigl(|X(w)_{ij}|^2-1\bigr)^2
=\Lambda\,|w^3-\xi|^2.
}
\]

Moreover, `Lambda>0` throughout the inherited admissible domain.

### Proof of the residual identity

A nonconstant row has the form

\[
f_j=m+a\bar w\omega^j+bw\omega^{-j}.
\]

Its norm is fixed by the Gram factor:

\[
|m|^2+|a|^2+|b|^2=1.
\]

The coefficient of `omega^j` in `|f_j|^2-1` is

\[
C(w)=\bar w(a\bar m+m\bar b)+b\bar a\,w^2.
\]

At any known locking phase `w_0`, this vanishes, so

\[
a\bar m+m\bar b=-b\bar a\,\xi,
\qquad \xi=w_0^3.
\]

Therefore

\[
C(w)=b\bar a\,\bar w(w^3-\xi).
\]

The three-point Fourier identity gives

\[
\sum_{j=0}^2\bigl(C\omega^j+\bar C\omega^{-j}\bigr)^2=6|C|^2.
\]

Apply this to the two nonconstant rows and add. The first row is already all ones for every phase `w`.

### Why the weight cannot vanish on this chart

For any invertible phase block with first row ones,

\[
\Lambda=0\quad\Longleftrightarrow\quad G=3I_3.
\]

Indeed, if both `ab` and `cd` vanish, each nonconstant row has at most one nonzero Fourier mode besides its mean. A row `m+a omega^j` is phase-valued only when `m*conjugate(a)=0`. A constant row would make the block singular. Thus both means vanish and the two nonconstant rows are pure Fourier modes. Invertibility makes their modes opposite, giving `G=3I`. The converse follows in the same way from the orthogonal phase rows.

But `G=3I` makes all three retained side factors `P_i` zero, and is outside this chart. Hence the weights are strictly positive here. They can approach zero near the excluded Fourier-fiber boundary; no uniform positive lower bound for them is claimed.

### Full-matrix iff statement

If `sqrt(6)U(w_h,w_v)` is flat, its horizontal and vertical side blocks are flat. Positive weights force

\[
w_h^3=\xi_h,\qquad w_v^3=\xi_v.
\]

Conversely these equations reproduce the matched sides, and the inherited norm theorem gives a flat lower-right block. Therefore

\[
\boxed{
\sqrt6\,U(w_h,w_v)\text{ is Hadamard}
\iff w_h^3=\xi_h\ \text{and}\ w_v^3=\xi_v.
}
\]

There are three phase roots in each direction, hence exactly nine phase pairs. Multiplying a root by `omega` cycles its side columns (with the appropriate orientation). In the full matrix these are last-three-column and last-three-row permutations. No new continuous parameters or inequivalent classes arise from those branch labels.

---

## 6. Explicit phase angles and exact sensitivity of the final stage

Write `xi_h=exp(i phi_h)` and `xi_v=exp(i phi_v)`. The required phase-gate angles are

\[
\theta_h=\phi_h/3+2\pi j/3,
\qquad \theta_v=\phi_v/3+2\pi k/3,
\qquad j,k\in\{0,1,2\}.
\]

There is no general cubic solving. A jump of the chosen argument by `2pi` produces only a cyclic permutation.

If a gate angle is offset by `epsilon` from a locking angle, the exact side residual is

\[
\boxed{\mathcal E_{\rm side}=4\Lambda\sin^2(3\epsilon/2).}
\]

For the normalized full unitary, the operator norm obeys

\[
\boxed{
\|U(\theta_h+\epsilon_h,\theta_v+\epsilon_v)-U(\theta_h,\theta_v)\|_2
\le 2|\sin(\epsilon_h/2)|+2|\sin(\epsilon_v/2)|.
}
\]

For a change in one gate only, the corresponding one-term bound is an equality. This follows because the other factors are unitary and

\[
\|P(e^{i(\theta+\epsilon)})-P(e^{i\theta})\|_2=2|\sin(\epsilon/2)|.
\]

These are final-stage phase sensitivity statements with the core fixed. They are not bounds on the dependence of the quadratic core on the four seeds near its old singular boundaries.

---

## 7. Exact examples

### A nontrivial unit-phase cube radicand

For the phase block

\[
X_0=\begin{pmatrix}1&1&1\\1&\omega&i\omega^2\\1&\omega&\omega^2\end{pmatrix},
\]

its preferred first Fourier coefficient and power are

\[
A=(2+i)/3,\qquad \rho=5/9.
\]

The old cube radicand was `(2+11i)/27`. The new data are

\[
\boxed{
\sigma=(2+11i)/15,\qquad
\xi=(-117+44i)/125,\qquad
w=(3+4i)/5.
}
\]

Both `xi` and `w` have modulus one, `w^3=xi`, and the new formula reconstructs `X_0` exactly. This is a universal side-block check, not a claim that this arbitrary side has been supplied with a new full Hadamard completion.

### H_cross: a full exact example

Use the inherited seed `(-1,-1,-1,i)` and the representative

\[
H_*=\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&-1&1&i&-i\\
1&-1&i&-1&-i&1\\
1&1&-1&i&-i&-1\\
1&i&-i&-i&-1&i\\
1&-i&1&-1&i&-1
\end{pmatrix}.
\]

Here both directions have

\[
g=4,\quad \zeta=0,\quad
\rho=(4+2\sqrt3)/9,\quad \sigma=(1+\sqrt3)/3,
\]

\[
\boxed{\xi_h=\xi_v=1,\qquad \Lambda_h=\Lambda_v=16/27.}
\]

Choose `w_h=w_v=1`. Direct exact multiplication verifies the unitary core, the full factorization, and `H_*H_*†=6I`.

With that core held fixed, arbitrary gate angles still give unitaries. Their side flatness errors are exactly

\[
\mathcal E_h=\frac{64}{27}\sin^2(3\theta_h/2),
\qquad
\mathcal E_v=\frac{64}{27}\sin^2(3\theta_v/2).
\]

The full matrix is Hadamard exactly at the nine phase pairs with both angles multiples of `2pi/3`.

---

## 8. Implementation, boundaries, and verification

Files:

- `hadamard6_phase_gate.py`: standalone mpmath constructor, quadratic core, and arbitrary-phase unitary orbit.
- `verify_hadamard6_phase_gate.py`: exact new identities/examples and optional numerical regression.
- `hadamard6_single_sheet.py`: unchanged prior implementation for independent regression.
- `Hadamard6_Phase_Gate_Verification.txt`: actual test output.

Usage:

```python
from hadamard6_phase_gate import from_angles

r = from_angles(['1.2', '2.5', '3.2', '6.0'], dps=80)
H = r.matrix                 # original input corner restored
H_adapted = r.adapted_matrix # frame used by the factorization
K = r.core                   # unitary, computed before either cube root

# These phase targets have modulus one.
print(r.horizontal.lock_target)
print(r.vertical.lock_target)

# An arbitrary point of the two-angle orbit is unitary, generally not flat.
U_trial = r.unitary_at('0.1', '0.2')
```

The branch labels `branch_h` and `branch_v` choose cyclic row/column representatives only. The positive sheet remains the covering convention; it is not an enumeration of both completions at every prescribed corner.

The numerical implementation checks the phase identity before using an argument trisection. It does not repair the output matrix by projecting its entries onto the unit circle. As in the prior constructor, phase inputs within `1e-12` of the unit circle are explicitly normalized. A tiny negative sheet radicand is clamped only as a documented floating-point boundary convention and is recorded in `boundary_roundoff_clamped`. Neither operation is an exact input-domain certificate. Decimal-string angles and increased precision should be used for reproducible calculations near boundaries.

The exact checks establish the two-term cube identity, the new unit-phase root transformation, the residual sum-of-squares identity, the nontrivial side example, and the exact H_cross core and reconstruction. The written proofs establish core unitarity and the iff criterion generally; the symbolic examples are not substituted for those proofs.

At 80 decimal digits the regression tested 100 strict-domain seeds, four prior special examples, 312 arbitrary phase-pair unitary matrices, and 126 locked-branch matrices. Observed maxima were:

| Diagnostic | Maximum absolute residual |
|---|---:|
| Hadamard entry modulus | 2.99398421587746860e-77 |
| Hadamard orthogonality | 2.04602977682217995e-76 |
| Quadratic-core unitarity | 3.10931586137641052e-77 |
| Arbitrary-phase-orbit unitarity | 2.41627176858843592e-77 |
| Unit-phase target modulus | 2.34985592154608363e-77 |
| Exact side-error formula | 7.91929909495476905e-78 |
| Full factorization agreement | 2.45035243833342585e-80 |
| Difference from preceding constructor, up to permutations | 1.05149800665039492e-77 |
| Locked-branch permutation comparison | 7.83605196859523549e-81 |

These are floating-point regressions, not interval certificates. The new algebra is exact; the inherited classification and lower-block flatness inputs remain explicitly identified above.

Run:

```sh
python hadamard6_phase_gate.py 1.2 2.5 3.2 6.0 --dps 80
python verify_hadamard6_phase_gate.py
python verify_hadamard6_phase_gate.py --numerical --compare-old --count 100 --dps 80
```

## Bottom line

The construction can now be organized as

\[
\boxed{\text{four seeds}\ \longrightarrow\
\text{quadratic unitary core}\ \longrightarrow\
\text{two phase trisections}\ \longrightarrow\ H.}
\]

All Fourier-coefficient magnitudes are fixed before the cubic stage; the two cubic radicands are phases. Every factor of the normalized final formula is unitary. Flatness within its two-angle orbit is exactly equivalent to two scalar phase-cubing equations, with an explicit nonnegative error certificate.

# Eliminate the anchor in the existing aligned-quartet gauge

**Proved here:** for a fixed *overlap-aligned* orthogonal flat quartet, anchor
existence is decided by **two scalar equations and one inequality**, formed
from a real Gram matrix of rank at most two. All rank strata are included.
Every such fixed gauge has at most two dephased physical anchors.

**Not proved:** a seed-only restriction, nonexistence for every quartet, or
nonexistence for every choice of the quartet's column phases. The latter
phases are essential input to this reduction. This is not an elimination from a phase-invariant quartet of projectors. It is exact in the **overlap-aligned gauge** defined explicitly in Section 1 below.

The derivation holds for every carrier; in particular it applies to the
canonical reconstructed `H(-1,b,c,d)`, with its actual chosen sheet. No
flat completion, balance, new seed chart, or extra seed guard is assumed.

## 1. The anchor lies on one explicit circle

Use normalized vectors. Let `V=[v1 v2 v3 v4]`, `V†V=I4`, with every column
flat in the standard basis and in `U=H/sqrt(6)`. Work in the existing gauge

\[
V^\dagger w=\mathbf1_4/\sqrt6,\qquad w_0=1/\sqrt6.
\]

Every physical configuration admits this gauge: dephase the anchor, then
multiply each quartet column by the phase of its nonzero anchor overlap.
The quartet columns are **not individually dephased** afterwards.

Define only explicit functions of the quartet:

\[
\Pi=I-VV^\dagger,\quad u=V\mathbf1_4/\sqrt6,\quad
v=\Pi e_0,\quad \delta=1/\sqrt6-u_0,
\]
\[
\boxed{h=u+3\delta v,\qquad J=\Pi-3vv^\dagger,
\qquad \rho=\frac13-3|\delta|^2.}
\]

Standard flatness gives `Pi_00=1/3`. Consequently `J` is a rank-one
orthogonal projector, `Jh=0`, `h_0=1/sqrt(6)`, and `||h||²=1-rho`.
The equations fixing the four aligned overlaps and the first coordinate
therefore give exactly

\[
\boxed{w=h+y,\qquad Jy=y,\qquad \|y\|^2=\rho.}
\]

If `rho<0` there is no anchor. Otherwise choose any unit vector `n` spanning
`range(J)`. Then `y=tn`, `|t|²=rho`. This is one circle, including its
zero-radius limit. The vector `n` is used only in the proof and recovery;
the elimination test below never chooses it.

To check the affine statement directly, the general solution to the four
aligned overlaps is `u+q` with `q` in `range(Pi)`. Its first-coordinate
condition is `e0†q=delta`. Because `||Pi e0||²=1/3`, its minimum-norm
solution is `3delta v`; the remaining complex line has projector `J`.
Orthogonality gives the norm formula. No nonconstant division occurs.

## 2. Nine linear measurement equations in two real coordinates

Take nine rank-one measurement projectors:

- the standard coordinate projectors at indices `1,2,3,4`;
- any five columns of `U` (for definiteness indices `0,1,2,3,4`).

Call them `A_m`, `m=1,...,9`, and set

\[
b_m=\frac16-h^\dagger A_mh-\rho\operatorname{tr}(A_mJ),
\qquad
\boxed{G_{mn}=4\operatorname{Re}(h^\dagger A_mJ A_nh).}
\]

For `w=h+tn`, each measurement condition is precisely

\[
2\operatorname{Re}\bigl(t h^\dagger A_mn\bigr)=b_m.
\]

Thus `G` is the real coefficient Gram matrix of nine linear equations in
`Re(t),Im(t)`. It is positive semidefinite and has rank at most two.
The first standard coordinate is already fixed. The omitted standard and
`U` measurements follow by summing probabilities to the known norm one.
All eleven remaining flatness conditions are therefore accounted for.

Define six real scalar contractions:

\[
T=\operatorname{tr}G,\qquad
E=\frac{T^2-\operatorname{tr}(G^2)}2,\qquad
B=b^Tb,\quad C=b^TGb,\quad D=b^TG^2b.
\]

Here `E=e2(G)`; it is unrelated to the seed corner matrix conventionally
also named `E` elsewhere. The code uses lowercase `t,e` to distinguish
these scalar contractions.

## 3. Complete elimination, including every rank stratum

Under the physical quartet hypotheses above, the entire answer is

\[
\boxed{EB-TC+D=0,\qquad TB-C-\rho E=0,\qquad B\le\rho T.}
\]

No case split or nonvanishing guard is needed in this unified formulation.
The proof below treats ranks two and one, while Section 4 shows why rank
zero cannot satisfy the test for a physical flat quartet. Hence `T>0` and
`rho>=0` follow from these conditions; they need not be extra guards.
This is a condition on the carrier **and the aligned quartet**, not on the
carrier seeds alone.

For clarity, the complete rank-by-rank derivation is:

An anchor exists in this fixed aligned gauge if and only if `rho>=0` and
one of the following mutually exclusive conditions holds:

\[
\begin{array}{c|l}
\operatorname{rank}G=2\ (E>0)&
\boxed{EB-TC+D=0,\quad TB-C=\rho E}\\[2mm]
\operatorname{rank}G=1\ (E=0,T>0)&
\boxed{TB-C=0,\quad B\le\rho T}\\[2mm]
\operatorname{rank}G=0\ (T=0)&\boxed{B=0}.
\end{array}
\]

These are fixed-size, explicitly computable equations and inequalities.
There is no pseudoinverse, omitted high-corank stratum, hidden anchor
variable, or large Macaulay determinant in the test.

**Proof.** Let `A` be the real `9x2` coefficient matrix, so `G=AA^T`.
We need `Ax=b` and `||x||²=rho`. If `rank(G)=2`, write its nonzero
eigenvalues as `lambda1,lambda2`. Then `T=lambda1+lambda2`,
`E=lambda1 lambda2`, and

\[
EB-TC+D=E\|b_\perp\|^2,
\]

where `b_perp` is the component outside `range(G)`. The first equation is
exactly linear-system consistency. On that range, the unique solution has

\[
\|x\|^2=\frac{TB-C}{E}.
\]

This proves the rank-two line, including `rho=0`.
For rank one, `TB-C=T||b_perp||²`. When consistent, the minimum solution
norm is `B/T`; the one-dimensional real nullspace can supply the remaining
norm if and only if `B/T<=rho`. For rank zero, all measurements are constant
on the circle and consistency is `b=0`. This proves all cases. In rank two, the extra unified inequality is
automatic: `B=||Ax||²<=T||x||²=rho T`. In rank one it is exactly the
required radius condition. In rank zero it forces `B=0`, which Section 4
rules out under the physical quartet hypotheses. QED.

Equivalently, consider the `10x10` real symmetric Gram extension

\[
\Omega=\begin{pmatrix}G&b\\b^T&\rho\end{pmatrix}.
\]

Circle feasibility is equivalent to `Omega>=0` and `rank(Omega)<=2`.
The displayed scalar expressions avoid testing a large family of minors:
`e4(Omega)=-(EB-TC+D)` and `e3(Omega)=-(TB-C-rho E)`.
They are low-order characteristic coefficients of a matrix already
constrained to rank at most four, not large expanded determinant tests.

The first rank-two equation is a nonnegative consistency expression, not
an ordinary generic hypersurface. Counting its single displayed equation
as only one real codimension would be incorrect.

## 4. The physical rank-zero branch is empty; recovery is finite

For a standard-flat quartet, `J<=Pi` and `Pi_ii=1/3`. Therefore every unit
`n` spanning `J` obeys `|n_i|²<=1/3`, while `rho<=1/3`.
If `G=0`, every standard-coordinate cross term `conj(h_i)n_i` vanishes.
This holds also for the omitted coordinate: the first coordinate vanishes
because `n_0=0`, and the remaining one follows from `h†n=0`.
Choose any coordinate with `n_i!=0`. Then `h_i=0`. A putative standard-flat
anchor would require

\[
\frac16=|w_i|^2=\rho|n_i|^2\le\frac19,
\]

a contradiction. Thus the algebraically complete rank-zero line above is
never feasible under the physical quartet hypotheses. **Every fixed aligned
quartet has at most two dephased physical anchors.** This statement is not
about an unphased quartet of projectors: different possible anchors may
induce different quartet column phases when aligned.

Recovery is explicit. Put `q_m=J A_mh`.
If `rank(G)=2`, choose any indices `j,k` with
`Delta=G_jj G_kk-G_jk²>0`. The unique anchor is `w=h+y`, where

\[
y=\frac{2}{\Delta}
\left[q_j(G_{kk}b_j-G_{jk}b_k)
+q_k(G_{jj}b_k-G_{jk}b_j)\right].
\]

This is a finite choice of at most 36 index pairs. It is an auxiliary
recovery choice and places no new restriction on the seeds.
If rank one, choose `j` with `G_jj>0`, set

\[
y_0=\frac{2b_j q_j}{G_{jj}},\qquad
\epsilon=\rho-B/T\ge0,
\]

and recover the two choices

\[
y=y_0\ \pm\ \frac{2i q_j}{\sqrt{G_{jj}}}\sqrt\epsilon.
\]

They coincide when `epsilon=0`. The zero-radius case is `w=h`.

## 5. Pullback and interpretation

The test is polynomial in the entries of `U,V` and their conjugates,
over constants containing `sqrt(6)`. It uses only fixed constant divisions
in `h,J,rho`, followed by the displayed scalar contractions. Its degrees
need not be small after expansion, but its evaluation is a few small
matrix products and real scalar operations. Expanding all monomials is
unnecessary.

For the current mixed coordinates, the same construction can be pushed
through the invertible map `L` from the reconstruction. Then `J` becomes
`L J L†`, a positive rank-one matrix which generally is **not** an
orthogonal projector. The residual still has the form `t r`, where
`r=L n` and `|t|²=rho`. For any Hermitian quadratic measurement forms `A_m`
with correct targets `c_m`, replace

\[
b_m=c_m-h^\dagger A_mh-\rho\operatorname{tr}(A_mJ).
\]

The same Gram formula and all three rank tests remain valid. The unified
physical test additionally uses the rank-zero impossibility proof. For the
current mixed choice of five displayed-coordinate forms and four side
moment forms, all physical standard-coordinate cross terms must therefore
be recoverable from those forms and the norm. This is exactly where the
existing noncollinearity theorem for the omitted diagonal moments enters:
it guarantees that spanning statement. The physical-projector version
proved above does not require this extra translation argument. Do not
impose `J²=J` or replace the physical radius by a mixed-coordinate Euclidean
norm.
This observation permits the existing seed-only quadratic moment forms to
supply the measurement equations without explicitly reconstructing `H`.

The reduction removes the five anchor phases from the existing 29-phase
aligned formulation, leaving its 24 quartet phases. Relative to a quartet
specified by its 20 phase-invariant parameters, four overlap-alignment
phases remain existential. It is therefore **not yet** a restriction only
on `b,c,d`. The next elimination must use quartet flatness and orthogonality
to constrain these scalar expressions uniformly over those quartet phases.

## 6. Exact checks

Run `python SmallAnchorElimination.py`. The verifier checks the three rank
strata, agreement of the unified predicate with all rank cases, augmented
Gram characteristic identities, off-range and radius negative controls,
and exact affine-circle and recovery identities. Its positive test deliberately uses repeated reference bases
`U=I`; it is not a claimed physical MUB6 configuration. An additional
exact physical strict-corner carrier/quartet tests rejection of its one
specified aligned phase choice, not all phase choices. The analytic proof
above supplies the global scope.

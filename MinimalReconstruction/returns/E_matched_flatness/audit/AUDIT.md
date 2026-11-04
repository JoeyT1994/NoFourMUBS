# Independent audit of the matched-flatness identities

## Verdict

No sign, conjugation, transpose or symmetric-square multiplicity error was found in the handoff's fourth-moment target. The coefficient reduction in (L-id) is correct. The supplied exact anchor satisfies the target and has the claimed positive horizontal signature.

The new weighted third-moment proof in `../direct/verify_third_moments.py` was independently audited at the level of its matrix indices and its implication to entrywise flatness. That implication is valid. This audit also independently verifies all its universal side-moment formulas by exact Laurent-polynomial expansion.

The rational seed evaluations in `specialization_receipt.json` are exact consistency checks only; they are **not** used as a proof of a four-variable identity. The global proof comes from the exact polynomial identities in the main certificate.

## 1. The original fourth-moment contraction has the right conventions

Let `V=C^T`, so both `B` and `V` have first row `(1,1,1)`. Write `b_j` and `v_i` for their columns and

\[
K=-E^*G_h^{-1},\qquad D_{ij}=v_i^T Kb_j.
\]

For a vector `x`, let `x^(2)` have entries `x_a x_b` indexed by

\[
(0,0),(0,1),(0,2),(1,1),(1,2),(2,2).
\]

The supplied matrix `L` is exactly the coefficient matrix of the bilinear square:

\[
(v^T Kb)^2=(v^{(2)})^T Lb^{(2)}.
\]

The two sums over distinct orderings in its definition are necessary: diagonal pairs have multiplicity one, and off-diagonal pairs have multiplicity two. `verify_universal_moments.py` checks this as a polynomial identity in 15 independent variables.

The moment matrices are

\[
T_h=\sum_j b_j^{(2)}(b_j^{(2)})^*,\qquad
T_v=\sum_i v_i^{(2)}(v_i^{(2)})^*.
\]

Consequently

\[
\sum_{ij}|D_{ij}|^4
=\operatorname{tr}(T_v^T L T_h L^*).
\]

The vertical matrix is transposed, not adjointed. This follows from the ordinary transpose in `D_ij=v_i^T Kb_j`.

The exponent convention in the handoff is also consistent: the squared vector is `(1,x,y,x²,xy,y²)`, so its Gram entry is the moment of exponent difference `e_i-e_j`. In particular `m_(1,-1)=conj(r)`.

## 2. The quadratic involution and coefficient reduction

Set `h=chi/g` and `z^#=h-z`. From

\[
\lambda_j=(g+c_j\bar z)/\bar P_j,
\]

one obtains

\[
\lambda_i\bar\lambda_j
=\frac{g^2+c_i\chi+c_i c_j\eta+g(c_j-c_i)z}
       {\bar P_iP_j}.
\]

This agrees with all three ratio formulas used in the handoff, including `u/v=lambda2/lambda1`. Also

\[
\pi=z\lambda_0,\qquad
u\bar\pi=\frac{\chi+c_1\eta-gz}{P_1},\qquad
v\bar\pi=\frac{\chi+c_2\eta-gz}{P_2},
\]

Thus the mixed-moment entries in the three timed-out scripts are correct.

For clarity, if `f(z)=f_0+zf_1`, then

\[
f(z)^\#=f_0^\#+hf_1^\#-zf_1^\#.
\]

After forming the two affine moment matrices, the matched contraction is

\[
A_{00}+zA_{01}+(h-z)A_{10}+(h-z)zA_{11}-9.
\]

Since `(h-z)z=eta`, it reduces to

\[
(A_{00}+hA_{10}+\eta A_{11}-9)+(A_{01}-A_{10})z.
\]

There is no missing `h A11` term: that term cancels when `z²=hz-eta` is substituted.

## 3. Independent audit of the smaller third-moment route

For any normalized phase side `A`, define

\[
Q_p(A)_{ac}=\sum_j\overline{A_{pj}}A_{aj}\overline{A_{cj}}.
\]

Writing the three rows as `(1,x,y)`, and using the side notation of the handoff, the exact tables are

\[
Q_1=
\begin{pmatrix}
\bar s&\bar s^2-2s\bar u&\bar s\bar t-\bar\pi\\
3&\bar s&\bar t\\
r&\bar s r-\bar u\pi&\bar s
\end{pmatrix},
\]

\[
Q_2=
\begin{pmatrix}
\bar t&\bar s\bar t-\bar\pi&\bar t^2-2t\bar v\\
\bar r&\bar t&\bar t\bar r-\bar v\pi\\
3&\bar s&\bar t
\end{pmatrix}.
\]

Here `conj(u)*pi=z lambda1` and `conj(v)*pi=z lambda2`, giving the particularly sparse affine coefficient matrices used by the new verifier. All 18 entries are independently checked in a Laurent polynomial ring in six algebraically independent variables by `verify_universal_moments.py`.

Now define

\[
\Delta_{ij}=|D_{ij}|^2-1,
\qquad W=\bar V\Delta\bar B^T.
\]

Direct expansion gives, with no positivity assumption on `Delta`,

\[
W_{pq}=\sum_{a,c}Q_p(V)_{ac}
       (KQ_q(B)K^*)_{ac}
       -G_v[0,p]G_h[0,q].
\]

The two factors in this entrywise contraction have the **same** `(a,c)` indices. The code implements precisely this expression. It also uses the correct scalar subtraction: because the first side row is one, `sum conj(A_pj)=G[0,p]`.

The forced completion satisfies `HH*=6I`. Every row and every column of `D` therefore has squared norm three, since the corresponding row of `C` or column of `B` already consists of three phases. Thus `W_p0=W_0q=0`. The four remaining entries are exactly the four affine quadratic-extension identities certified by the direct verifier. Both side matrices are invertible because their Gram determinants are `g>0`; hence

\[
W=0\quad\Longrightarrow\quad\Delta=0.
\]

This proves entrywise flatness. It does not assume entrywise flatness while deriving any of the weighted moment equations.

## 4. Exact anchor replay

`verify_anchor.py` reads the included `base_anchor_H0.json`. It uses a dependency-free implementation of

\[
\mathbb Q(i,\sqrt3,\sqrt5,\sqrt7)
\]

with rational coefficients in a fixed 16-element monomial basis. The inverse is computed recursively using the four quadratic conjugations. Input expressions are parsed with a restricted arithmetic syntax; no floating-point approximation or unrestricted expression evaluation is used.

The checks establish:

- all 36 entries have norm one;
- all 36 entries of `HH*` equal those of `6I`;
- the matrix is dephased;
- the two side Grams are the prescribed ones;
- `D=-C E* Gh^-1 B` exactly;
- both rational fourth-moment matrices equal the moment matrices computed from the actual sides;
- both matched signatures, including the positive horizontal sign;
- both coefficients in (L-id) at this anchor.

The invariant values are

\[
g=\frac{243}{16},\quad
\eta=\frac{117}{16},\quad
\chi=-\frac{5103}{64},\quad
R=\frac{1594323}{4096}>0,
\]

and

\[
\Theta_h=-\frac{21}{8}+\frac{3i\sqrt3}{8},\qquad
\Theta_v=-\frac{21}{8}-\frac{3i\sqrt3}{8}.
\]

The coefficient matrix is

\[
(A_{ij})=
\begin{pmatrix}
-1215/49&-96/7\\
-96/7&-256/49
\end{pmatrix}.
\]

At this seed, the exact matrix of fourth-moment defects, with horizontal and vertical signs each ordered `(+,-)`, is

\[
\begin{pmatrix}216/49&0\\0&216/49\end{pmatrix}.
\]

Thus the matched pairs are flat and both nonmatched pairs are nonflat. By continuity their fourth-moment defects stay positive in some neighborhood of the anchor; this observation is not used in the global proof.

## 5. Replaying this audit

Run from any directory:

```
python output/audit/verify_universal_moments.py
python output/audit/verify_anchor.py
python output/audit/evaluate_identity.py
```

Each verifier exits nonzero on a failed assertion and refuses `python -O`. The first two are exact symbolic or exact algebraic checks. The third checks the proposed rational identity at three displayed rational specializations, with the involution implemented by simultaneously evaluating a function at the seed and at its coordinatewise reciprocal. It is an audit check only.

The saved JSON receipts are illustrative outputs; verification recomputes every result.

## 6. Final review of `FLATNESS.md`

The complete assembled `../FLATNESS.md` was read and compared with the verified moment code. No correction was required.

In particular, the ordinary-transpose signature convention for `C=V^T`, the formulas for `lambda_j`, the two third-moment tables, the contraction (4.5), and both coefficients in (4.6) agree with the exact scripts. The proof of the block Gram equations does not use flatness of `D`. The row and column sums then remove precisely the five entries of the weighted defect matrix with a zero index, and invertibility removes the defect after the other four entries are certified.

The scope is stated correctly: uniform matched flatness is the new conclusion; `MatchedExistence` follows using the supplied side-existence theorem at its stated paper level. The report does not claim a newly compiled Lean proof, does not close `MatchedDensityReach`, and does not close the atlas input or assert the unconditional no-four-MUB theorem. Its optional boundary observation is restricted to actual sides where the original divisors remain nonzero and introduces no missing strict-domain case.

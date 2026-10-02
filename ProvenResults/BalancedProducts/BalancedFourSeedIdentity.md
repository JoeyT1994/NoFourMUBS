# A balanced-product identity from the current reconstruction

**The exact four-seed identity below is proved by a symbolic polynomial
certificate.** Its extension to every row partition uses the radical-branch
argument in [BalancedAllPartitionsExtension.md](BalancedAllPartitionsExtension.md)
and the accompanying interval certificate. The global coverage inputs remain
precisely the externally accepted inputs of
[the current reconstruction](../../MinimalConstruction/ASSUMPTIONS.md).

This is **not a proof of F3-block forcing**. The identity holds for the
reconstructed Hadamard itself, without assuming that a third basis exists.

## Statement

For a raw Hadamard X and three row indices I, define

\[
 b_I(X)=\sum_{j=0}^5
 \prod_{r\in I}X_{rj}\prod_{s\notin I}\overline{X_{sj}}.
 \tag{1}
\]

The result supplied by the reconstruction and the all-partition extension is

\[
 \boxed{b_I(X)=0\quad\text{for every }|I|=3,
 \text{ whenever }X\text{ is not equivalent to Tao}.} \tag{2}
\]

In particular (2) holds throughout the entire strict four-seed domain, on
both matched sheets, for all twenty row partitions and all twenty column
partitions. Row phases multiply (1) by a single unit scalar, column phases
cancel, and permutations relabel the tests, so vanishing is equivalence
invariant. Complementary partitions give conjugate equations.

For comparison, direct substitution in the standard Tao matrix gives
`|b_I|=3` for every partition I. Thus the excluded class does not satisfy
the identity; it is not an unnecessary exception.

This is the balanced Fourier coefficient
`g_X(pi(1,1,1,-1,-1,-1))`. Maxwell and Brierley proved it for Karlsson's
family in [Theorem 4.1](https://arxiv.org/abs/1402.4070), as a special case
of a conjecture for non-Tao order-six Hadamards. It is also the first part
of [Conjecture 2 in *Triplets of mutually unbiased bases*](https://doi.org/10.1007/s10801-026-01506-x).
No assertion about the degree-three version of that conjecture is made here.

## 1. Why no side roots are needed

Use exactly the canonical PDF construction, writing

\[
 H=\begin{pmatrix}E&B\\C&-CQB\end{pmatrix},\qquad
 Q=E^\dagger\operatorname{adj}(G)/g,\quad
 G=6I-EE^\dagger,\quad T=6I-E^\dagger E.
\]

The columns of B are `(1,x_j,y_j)^T`, for j=1,2,3. For either normalized
side, retain only the six symmetric data

\[
 s=\sum x_j,\quad t=\sum y_j,\quad r=\sum y_j\bar x_j,
 \quad u=\prod x_j,\quad v=\prod y_j,
 \quad\Pi=st-\sum x_jy_j.
 \tag{3}
\]

The PDF formulas give `u=lambda0 conjugate(lambda1)`,
`v=lambda0 conjugate(lambda2)`, and `Pi=z lambda0`.
Each is affine in the *single* formal sheet variable

\[
 \tau=i\sqrt R,\qquad\tau^2=-R. \tag{4}
\]

For clarity, using the PDF's P0,P1,P2 and c0,c1,c2, their explicit affine
forms are

\[
 u={2g^2+2c_0c_1\eta+(c_0+c_1)\chi+(c_1-c_0)\tau
       \over2\bar P_0P_1},
\]
\[
 v={2g^2+2c_0c_2\eta+(c_0+c_2)\chi+(c_2-c_0)\tau
       \over2\bar P_0P_2},\qquad
 \Pi={\chi+2c_0\eta+\tau\over2\bar P_0}.
 \tag{5}
\]

Also `Pi/u=(chi+2c1 eta+tau)/(2 conjugate(P1))`, and similarly for
`Pi/v`. All denominators are nonzero on the strict domain. Both signs
in (4) are retained in the symbolic proof.

The horizontal data use G. The vertical data below use **T**, not its
transpose, and the same tau: these are the data of `conjugate(C)^T`.
This convention absorbs the opposite sheet used by the PDF's vertical side.

## 2. Two elementary cubic formulas

For any side with columns `(1,x_j,y_j)^T`,

\[
 \begin{aligned}
 P(t_0,t_1,t_2)&=\prod_{j=1}^3(t_0+x_jt_1+y_jt_2)\\
 &=t_0^3+s t_0^2t_1+t t_0^2t_2
   +u\bar s\,t_0t_1^2+\Pi t_0t_1t_2+v\bar t\,t_0t_2^2\\
 &\quad+u t_1^3+v t_2^3+u r\,t_1^2t_2+v\bar r\,t_1t_2^2.
 \end{aligned} \tag{6}
\]

This follows by expanding the product and using unimodularity, for example
`sum_{j<k} x_j x_k=u conjugate(s)`.

Define the linear functional

\[
 \mathcal L(X^jY^k)=\sum_{\ell=1}^3
 x_\ell y_\ell\bar x_\ell^{\,j}\bar y_\ell^{\,k}.
\]

Only its ten moments of total degree at most three are required:

| Monomial | Moment |
|---|---|
| 1 | st-Pi |
| X, Y | t, s |
| X², XY, Y² | r, 3, conjugate(r) |
| X³ | conjugate(s) r-Pi/u |
| X²Y, XY² | conjugate(s), conjugate(t) |
| Y³ | conjugate(t) conjugate(r)-Pi/v |

For example, each x satisfies
`x³-s x²+u conjugate(s) x-u=0`. Dividing by x², multiplying by y,
and summing proves the X³ entry. Thus every moment is affine in tau.

## 3. A four-variable polynomial certificate

Let P_v be (6) formed from the vertical data. Set

\[
 A=E^T\operatorname{adj}(G^T)=g\bar Q.
\]

For the top-three/bottom-three partition, the left half of (1) is
`1+ac u_v+bd v_v`. The right half has a minus sign from the three
minus signs in the lower-right block. Consequently

\[
 \boxed{g^3 b_{\{0,1,2\}}(H)
 =g^3(1+ac\,u_v+bd\,v_v)
 -\mathcal L\!\left[P_v\big(A(1,X,Y)^T\big)\right].} \tag{7}
\]

Equation (7) contains no side square root or cube root. Substitute (5),
use `bar a=1/a` and likewise for b,c,d, clear the displayed nonvanishing
denominators, and reduce using `tau²=-R`. The result has the form

\[
 N_0(a,b,c,d)+\tau N_1(a,b,c,d).
\]

**Both polynomials are identically zero.**
[BalancedFourSeedIdentity.py](BalancedFourSeedIdentity.py) performs this
calculation over the rational function field `Q(a,b,c,d)` and then with
exact rational multivariate polynomials. It does not interpolate or evaluate
sample seeds. It also checks `G adj(G)=gI` exactly. The
[receipt](BalancedFourSeedIdentity.json) records zero monomials in both
remainders. An [independent audit](BalancedFourSeedIdentityAudit.md)
checks the contraction, conjugations, moments, and symbolic replay.

This proves (1) for the selected split at every strict seed on both matched
sheets. The extension to other row partitions is a separate proof step;
mere permutation invariance of the statement would not justify assuming
that every chosen row triple initially has a strict corner.

## 4. Global extension and its precise inputs

[BalancedAllPartitionsExtension.md](BalancedAllPartitionsExtension.md)
supplies the missing step. In outline:

1. Both side square-root signs give column-permuted presentations whenever
   their divisors are nonzero; a direct sign-switch lemma proves this.
   Including both sheets and both cube-root choices gives 72 algebraic
   presentations, counted with multiplicity.
2. At the exact Cayley seed `t=(-1,20,3/2,-7/10)`, where
   `a_j=(1+i t_j)/(1-i t_j)`, the
   [interval certificate](BalancedAllCornersCertificate.json) checks that
   all 400 positional corners are strict for every sheet/sign presentation.
   The property persists on an open seed neighborhood. Every row partition
   there can therefore be moved to a strict corner and (7) applied using
   the accepted fixed-corner completion exhaustion. Tao is absent because
   it has an F3 corner with R=0.
3. For each row partition take the monic polynomial whose roots are its
   72 balanced products. Its coefficients are rational functions of the
   four seeds, since all radical choices have been included. They vanish
   on that open torus neighborhood, hence identically. Therefore every
   root vanishes on every nonsingular branch. Continuity handles the
   remaining presentation degeneracies within the strict domain.
4. The accepted global surjection covers every non-F6, non-Tao class.
   F6 satisfies (1) directly: if its selected row indices sum to S, the
   sum is a geometric series with exponent `2S-15`, which is odd and
   cannot be divisible by six. Applying the same theorem to X^T gives
   the column identities.

The one-point interval calculation certifies the open neighborhood needed
in this algebraic argument. It is **not** being used as empirical evidence
for an identity on all seeds.

## What remains unproved

For a complete triple, the new identity applies separately to H, K and
`H†K/sqrt(6)` because Tao is excluded as a transition. It can be imposed
exactly in the reconstruction equations. But it also holds for Hadamards
that have no F3 block. It neither forces a row-pair saturation nor
classifies triples nor excludes four MUBs. The previous F3-forcing conjecture remains unproved and is paused.

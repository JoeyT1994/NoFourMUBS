# Proof of the exact necessary anchor inequalities

## 1. Quantifiers, normalization, and scope

Let `H` be any raw order-six complex Hadamard, and let `U=H/sqrt(6)`.
Let `k_1,...,k_4` be normalized, mutually orthogonal rays, each unbiased to
both the standard basis and `U`. Suppose that a normalized ray `w` is
unbiased to those two bases and to each of the four `k_i`.

The theorem applies to every physical configuration satisfying these hypotheses,
independently of seed coordinates or reconstruction guards. Thus it also
applies when U is evaluated by the canonical reconstruction. No completion,
balance, or additional symmetry is assumed. Its proof starts directly with
these physical projectors and needs no historical five-ray reduction.

## 2. Fixed finite templates and explicit coefficient map

Let `e_0=0` and let `e_r`, `1<=r<=5`, be the standard integer basis vectors
of `Z^5`. Put

\[
 \mathcal B=\{\beta\in\mathbb Z^5:\|\beta\|_1\le2\},\qquad
 \mathcal A=\{\alpha\in\mathbb Z^5:\|\alpha\|_1\le4\}.
\]

Their sizes are 61 and 681. For the latter, counting support sizes gives

\[
 |\mathcal A|=\sum_{j=0}^4 2^j {5\choose j}{4\choose j}
 =1+40+240+320+80=681.
\]

The exact data for a template are:

1. Rational complex coefficients `B_{ell,beta}`, forming the factors
   `s_ell(z)=sum_beta B_{ell,beta} z^beta`.
2. Nine real-valued Laurent polynomials `h_a` supported on `mathcal B`.

The arrays are in the three `data/certificate*.json` files. An integer in a
factor array is divided by `scale=10^8`. The corresponding real and
imaginary arrays supply its two rational components. A multiplier term with
integer fields `(cos,sin)` and exponent `beta != 0` means

\[
 \frac{\texttt{cos}}{10^8}\Re z^\beta
 +\frac{\texttt{sin}}{10^8}\Im z^\beta.
\]

At exponent zero only its constant cosine coefficient is present. These
instructions completely specify all coefficient numbers; no numerical
solver is required to read or evaluate a template.

Define

\[
 \sigma(z)=\sum_\ell |s_\ell(z)|^2\ge0\qquad(z\in\mathbb T^5).
\tag{2.1}
\]

For a normalized rank-one projector `P_a` on `C^6`, define, on that torus,

\[
 f_a(z)=(1,z)^\dagger P_a(1,z)-1
       =\sum_{r\ne s}(P_a)_{rs}z^{e_s-e_r}.
\tag{2.2}
\]

The diagonal terms cancel because `Tr(P_a)=1`. Formula (2.2) is real because
`P_a` is Hermitian. It is supported on `mathcal B`.

Write `h_{a,beta}` for a Laurent coefficient of `h_a`, and `sigma_alpha` for
one of `sigma`; absent coefficients mean zero. Define the following affine
functions of the nine projector matrices:

\[
 \boxed{C_\alpha(P_1,\ldots,P_9)
 =\sum_{a=1}^9\sum_{r\ne s}
   h_{a,\alpha-e_s+e_r}(P_a)_{rs}-\sigma_\alpha.}
\tag{2.3}
\]

Their support lies in `mathcal A`, and they satisfy
`C_{-alpha}=conjugate(C_alpha)`. In particular `C_0` is real. Expanding gives

\[
 P(z):=\sum_a h_a(z)f_a(z)-\sigma(z)
      =\sum_{\alpha\in\mathcal A} C_\alpha z^\alpha.
\tag{2.4}
\]

This is an explicit finite coefficient identity, not an eliminant whose
coefficients are left unspecified. `template_restriction.py` implements
(2.2)-(2.3). The verifier independently compares that implementation with
the reference expansion in `exact_algebra.py`.

The `P_a` are existing measurement projectors, not additional unknowns:
five columns of the current `U`, followed by the four current outer rays.
Consequently (2.3) can be pulled back to the original seed/mixed-coordinate
variables using their current recovery map. Since each outer projector is
`k_i k_i^dagger`, the inequalities below have outer-ray degree at most four.
No anchor variable remains in them.

## 3. Universal anchor-eliminated necessary inequalities

Because `w` is flat in the standard basis, a global phase makes its raw
representative `sqrt(6)w=(1,z_1,...,z_5)` with all `|z_r|=1`. This dephasing
loses no case: the first coordinate has modulus one in raw normalization.

Choose any five carrier columns, and use their five projectors followed by
the four outer-ray projectors as `P_1,...,P_9`. The physical anchor equations
are exactly `f_a(z)=0`. At this point (2.4) gives

\[
 \sum_\alpha C_\alpha z^\alpha=-\sigma(z)\le0.
\tag{3.1}
\]

Since every `|z^alpha|=1`, (3.1) implies

\[
 \boxed{C_0\le\sum_{\alpha\ne0}|C_\alpha|.}
\tag{3.2}
\]

If `C_0>0`, Cauchy--Schwarz over at most 680 nonconstant coefficients gives

\[
 C_0^2\le680\sum_{\alpha\ne0}|C_\alpha|^2.
\]

Thus, including the zero and negative branches without division,

\[
 \boxed{C_0\le0\quad\text{or}\quad
 Q:=C_0^2-680\sum_{\alpha\ne0}|C_\alpha|^2\le0.}
\tag{3.3}
\]

In particular, `C_0>0` and `Q>0` are a checkable contradiction to the anchor's
existence. Formula (3.3) is a real quadratic semialgebraic restriction on
projector entries, with completely explicit coefficients. It is a necessary
restriction, not a sufficient existence test.

The argument holds for each fixed template and every physical carrier and
quartet. It therefore holds throughout the full symbolic strict seed domain,
with both sheets. It also holds after any common monomial unitary, any
carrier-column permutation, and any relabeling or rephasing of outer rays.
A common monomial unitary preserves standard-basis flatness. Taking the
complex conjugate of the entire configuration preserves every squared
probability and gives the conjugate versions of the same tests.

Although (3.3) is written in one coordinate frame, its validity for every
such alignment is an invariant necessary restriction. Section 6 gives a
single scalar intrinsic consequence.

## 4. Exact nontriviality certificates at a strict carrier

### 4.1 The reference really belongs to the current domain

The two exponent matrices `N,L` are stored
in every certificate file. Let

\[
 H_0[r,j]=e^{\pi iN_{rj}/3},\qquad
 K_0[r,j]=e^{\pi iL_{rj}/6},\qquad
 U_0=H_0/\sqrt6,\quad V_0=K_0/\sqrt6.
\]

The exact verifier checks every entry modulus, every entry of the two raw
Gram matrices, and all 36 squared overlaps in `H_0^dagger K_0`. They give

\[
 H_0^\dagger H_0=K_0^\dagger K_0=6I,\qquad
 |(H_0^\dagger K_0)_{ij}|^2=6.
\]

Any four columns of `V_0` therefore satisfy the four-ray hypotheses,
including all six orthogonality pairs. This fact demonstrates that the
new restriction is not an exclusion already implied by those hypotheses
alone.

Let `omega=e^{2pi i/3}`. The top-left corner of `H_0` has seeds
`(-1,omega,-omega,omega^2)`. Substitution into the **current** invariant
definitions gives `g=3`, `chi=-3`, `R=27`. With `B` the actual top-right
3-by-3 side, exact arithmetic also checks

\[
 -\frac{\operatorname{perm}(B)\det(B)^2}
        {g\prod_{r,j}B_{rj}}=\omega
 =\frac{-3+i\sqrt{27}}6.
\]

Thus the reference is on the actual positive sheet, not merely a unitary
matrix with the right seed corner. Its conjugate has the conjugate seeds,
the same strict invariant, and the negative sheet. This observation is
only reference identification; it is not used to replace the two sheets
at an arbitrary fixed seed by a selected positive sheet.

### 4.2 Positivity of the certificate polynomials

For each of the three reference quartet representatives, use the first five
columns of `U_0` and the indicated four columns of `V_0` in (2.2).
Expanding (2.4) **exactly** produces the files `data/expanded_P*.json`.

Every coefficient lies in `Q(sqrt(3),i)`. The independent arithmetic layer
represents a number as

\[
 a+b\sqrt3+i(c+d\sqrt3),\qquad a,b,c,d\in\mathbb Q.
\]

No floating-point number is used in the acceptance computation. A rational
interval for `sqrt(3)` is obtained from the integer square root of
`3*10^120`; its two squared endpoint inequalities are checked exactly.
For each coefficient the program obtains a rational upper bound using
`|x+iy|<=|x|+|y|`. Thus it calculates a rigorous lower bound

\[
 \underline P=C_0^{\rm lower}
              -\sum_{\alpha\ne0}|C_\alpha|^{\rm upper}
 \le P(z)\qquad\text{for every }z\in\mathbb T^5.
\]

The bounds actually proved are stronger than the following convenient
integers:

| Quartet | Exact acceptance inequality |
|---|---|
| `{0,1,2,3}` | `P(z)>10` for every phase point |
| `{0,1,2,4}` | `P(z)>22` for every phase point |
| `{0,1,3,4}` | `P(z)>3` for every phase point |

For orientation only, the rigorous rational lower bounds have decimal
values approximately `10.511746930894018`, `22.818235480415556`, and
`3.3433532342147902`. The proof uses the rational bounds and the displayed
integer inequalities, not those rounded decimal displays.

The verifier separately checks that `C_0>0` and `Q>0` in all three cases.
So these examples strictly violate the new necessary polynomial inequality
(3.3), not only its stronger coefficient-norm version.

Three exact phase fixtures additionally compare the Laurent expressions
with direct raw inner products and direct evaluations of the stored SOS
factors. They are implementation checks, not the reason the inequality
holds for the whole torus.

### 4.3 All fifteen reference quartets

A transformation in `data/reference_symmetries.json` specifies a row
permutation `p`, six row-phase exponents `d_r` modulo twelve, and two column
permutations. It represents

\[
 (Mx)_r=e^{\pi i d_r/6}x_{p(r)}.
\]

The verifier checks by integer exponent arithmetic that each of the 36
listed `M` maps every column of `H_0` and `K_0` to its listed target column
up to a column phase. It also checks that the three quartet representatives
have orbits of sizes 6, 6, and 3 and that their union is **all** 15
four-element subsets of six columns.

Therefore every four-column subset of `V_0` has the proved anchor
exclusion. No assertion that these are all possible reference symmetries
is needed. More importantly, no symmetry of a variable carrier or quartet
is assumed: these fixed maps simply transport already verified reference
certificates.

## 5. A uniform probability-error bound for actual 4+1

Let `L_a` be the sum of the absolute rational cosine/sine coefficients of
`h_a`, including its constant. Then `|h_a(z)|<=L_a` everywhere on the torus.
Put `B^2=sum_a L_a^2`, computed exactly from the data.

At the reference, if the corresponding integer gap in §4.2 is `g_*`, then

\[
 \sum_a h_a(z)f_a(z)=\sigma(z)+P(z)>g_*.
\]

Cauchy--Schwarz gives

\[
 \sum_a f_a(z)^2>\frac{g_*^2}{B^2}.
\]

In normalized anchor notation `w=(1,z)/sqrt(6)`,
`f_a(z)=6(|<a,w>|^2-1/6)`. Hence

\[
 \sum_{a=1}^9\left(|\langle a,w\rangle|^2-\frac16\right)^2
 >\frac{g_*^2}{36B^2}
 >\frac1{1\,440\,000}.
\tag{5.1}
\]

The last comparison is checked by rational arithmetic for all three
certificates. It remains valid for all their reference orbit images and
for the conjugate reference. This is an error bound for five carrier
probabilities and **four** outer-ray probabilities, not a lower bound
requiring unbiasedness to a completed third basis.

For the first, second, and third representatives, respectively, the exact
bounds `g_*^2/(36B^2)` have decimal values approximately
`7.893259334087039e-7`, `1.949252879532283e-6`, and
`5.968140333682043e-6`. Their exact fractions appear in the receipt.

## 6. The intrinsic exclusion radius

For normalized rays `a,b`, let `P_a=aa^dagger`, and define

\[
 d(a,b)^2=\|P_a-P_b\|_{\rm op}^2
         =1-|\langle a,b\rangle|^2.
\tag{6.1}
\]

To verify the equality, restrict `P_a-P_b` to the span of `a,b`; its two
nonzero eigenvalues, when present, are
`+/-sqrt(1-|<a,b>|^2)`. If the rays coincide the two sides are zero, so no
exceptional division or excluded case is needed.

For an ordered physical carrier `U=[u_0,...,u_5]` and outer quartet
`k_1,...,k_4`, define `d_ref^2` as the infimum of

\[
 \sum_{j=0}^5 d(u_j^{0,\epsilon},M u_{\pi(j)})^2
 +\sum_{i=1}^4 d(v_{s(i)}^{0,\epsilon},M k_i)^2
\tag{6.2}
\]

over common monomial unitaries `M`, permutations `pi` of six carrier
columns, injections `s:{1,2,3,4}->{0,...,5}`, and `epsilon in {0,1}`.
Here `epsilon=0` means the displayed reference, and `epsilon=1` means its
entrywise conjugate. This quantity is intrinsic under every permitted
monomial equivalence of the two reference bases and under independent
column phases/relabelings. The optimization in (6.2) only defines an
invariant distance; evaluating any one alignment already suffices to
certify exclusion when its distance is small.

Suppose a physical anchor exists. Consider any alignment in (6.2), and
transform the anchor by the same `M`. Its probabilities for the actual
carrier columns and actual outer rays are `1/6`. For each aligned reference
projector `P_a^0` and its actual counterpart `P_a`,

\[
 \left|w^\dagger P_a^0w-\frac16\right|
 =|w^\dagger(P_a^0-P_a)w|
 \le\|P_a^0-P_a\|_{\rm op}.
\tag{6.3}
\]

Transport the relevant reference quartet to one of the three verified
types using §4.3. Apply (5.1) to its five carrier observations and four
outer observations. Squaring and summing (6.3) shows that the corresponding
sum of nine squared projector distances exceeds `1/1,440,000`. The sum in
(6.2) includes all six carrier distances, so it is at least that large.

In fact the same argument bounds every alignment below by the minimum of
the three exact fractions in (5.1), which is strictly greater than
`1/1,440,000`. Taking the infimum therefore preserves the strict simplified
bound:

\[
 \boxed{\mathfrak d_{\rm ref}>1/1200.}
\]

The reference itself, with any four of its third-basis columns, has zero
distance and satisfies all outer-ray conditions exactly. Thus the excluded
relative neighborhood is nonempty. The proof also excludes arbitrary
asymmetric perturbations inside the stated radius whenever they satisfy
the carrier/four-ray hypotheses; it assumes neither their completion nor
any symmetry.

## 7. What is and is not computer-assisted

The universal implications (3.2)-(3.3) and the perturbation argument are
analytic. Their nontriviality and the numerical constants in (5.1) are
computer-assisted **exact** claims. All data needed to check them are
provided: the rational factor arrays, rational multiplier arrays, reference
exponents, reference orbit maps, and expanded coefficient arrays.

The certificate is an **SOS plus exact coefficient-remainder bound**, not
an assertion that a floating-point matrix is positive semidefinite and not
a claim of a pure polynomial identity `-R^(2m)=SOS+ideal`. Each supplied
factor is squared explicitly, and the remainder is bounded using exact
rational arithmetic on the physical torus.

Numerical optimization was used only to discover these factors and
multipliers. The fixed search used all real Laurent multipliers supported
on `mathcal B` and SOS factors supported on `mathcal B`, at the three
specified reference quartets. It was not an exhaustive search over seeds,
a proof of bounded-degree infeasibility, or an optimality proof for the
resulting constants. The exact verifier does not run that search.

The original source packet and discovery logs are in the recovery archive.
The separation proof and retained exact certificate verifier are self-contained.
No external reconstruction-coverage theorem is needed for these inequalities.

## 8. The precise remaining obstruction

We have not shown that every strict symbolic-seed quartet violates one of
(3.3), nor that every quartet is within the certified reference distance.
The inequalities are necessary and exclude a genuine carrier–quartet
region, but their satisfaction does not establish an anchor. Hypothetical physical configurations outside these regions are not excluded. No claim of global 4+1 emptiness, a seed-only classification,
an all-Karlsson exclusion, or a no-four-MUB theorem follows from this work.

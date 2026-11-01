# Matched flatness from four weighted third moments

## Statement

Let `E=[[1,1,1],[1,a,b],[1,c,d]]` have phase entries and strict invariant `R>0`.
Put `Gh=6I-EE*`, `Gv=6I-E^T bar(E)`, `h=chi/g`, and take either root
`z` of `z^2-hz+eta=0`. Let `B,V` be any normalized phase sides with

```
B B*=Gh,       V V*=Gv,
Theta(B)=z,    Theta(V)=bar(z)=h-z.
```

Set `C=V^T`, `K=-E* Gh^{-1}`, and `D=C K B`. Then every entry of `D`
has modulus one. Consequently both matched choices give Hadamard
completions on the entire strict domain. No classification theorem,
product-regular guard, irreducibility argument, density argument, or
continuous choice of side representatives enters this proof.

The theorem uses the supplied strict-domain theorem and side existence.
For an actual side the required product/signature identities are the
elementary Laurent identities in `SIDE_FIBER.md` section 1. The new
seed-dependent computation below is an exact rational-function identity,
not a sampling argument.

## 1. Four weighted equations determine the defect

Write `Delta_ij=|D_ij|^2-1`. The ordinary forced-completion block argument
gives `HH*=6I` for `H=(E,B;C,D)`, hence also `H*H=6I`. Since each entry
of `B` and `C` is a phase, the row and column sums of `Delta` are zero.

Define

```
W = bar(V) Delta bar(B)^T,
W_pq = sum_ij bar(V_pi) bar(B_qj) (|D_ij|^2-1).
```

The first rows of both `V` and `B` are all ones. Therefore `W_0q=0` and
`W_p0=0` by those zero column and row sums. Both side matrices are
invertible because their determinant norms are `g>0`. Thus the four
equations `W_11=W_12=W_21=W_22=0` force `Delta=0`.

This is the reason third moments suffice. An unweighted sum of defects
loses all information, whereas the four remaining matrix coefficients
recover the entire defect matrix.

## 2. Universal third-moment matrices

For a normalized phase side `X=(1;x;y)` put

```
s=sum x_j,  t=sum y_j,  r=sum y_j/x_j,
S=bar(s),  T=bar(t),   Q=bar(r),
u=prod x_j, v=prod y_j, pi=perm(X).
```

For `p=1,2` define

```
Q^(p)_ab = sum_j X_aj bar(X_bj) bar(X_pj).
```

Direct expansion gives

```
Q^(1) = [ S,  S^2-2s bar(u),  ST-bar(pi) ],
        [ 3,  S,              T          ],
        [ r,  Sr-bar(u)pi,    S          ];

Q^(2) = [ T,  ST-bar(pi),  T^2-2t bar(v) ],
        [ Q,  T,           TQ-bar(v)pi  ],
        [ 3,  S,           T           ].
```

For example, `S^2-2s/u=sum_j 1/x_j^2` follows from the elementary
symmetric polynomial identities, and `Sr-pi/u=sum_j y_j/x_j^2` follows
by cancelling the six off-diagonal terms. The analogous formulas with
`x,y` interchanged give the second matrix. The remaining entries are
immediate sums. `verify_universal_third.py` checks all eighteen entries
for each of two independent generic phase sides, in exact Laurent
polynomials, and independently checks the weighted-defect contraction
below.

## 3. The matrices are linear in the sheet coordinate

Use `P0,P1,P2,c0,c1,c2,g,chi,eta` from the side Gram. The actual-side
identities give unit phases `lambda_j` satisfying

```
lambda_j bar(Pj)=g+cj bar(z),
u=lambda0/lambda1, v=lambda0/lambda2, pi=z lambda0.
```

Their unit-modulus property gives `1/lambda_j=(g+cj z)/Pj`. On reducing
`z^2=hz-eta` and using `z bar(z)=eta`, one obtains

```
bar(u) = [g^2+c1 chi+c0 c1 eta+g(c0-c1)z]/[P0 bar(P1)],
bar(v) = [g^2+c2 chi+c0 c2 eta+g(c0-c2)z]/[P0 bar(P2)],
bar(pi)= [chi+c0 eta-gz]/P0,
bar(u)pi = z lambda1 = [gz+c1 eta]/bar(P1),
bar(v)pi = z lambda2 = [gz+c2 eta]/bar(P2).
```

Consequently `Q^(p)(G,z)=Q^(p)_0+z Q^(p)_1`, with explicitly rational
matrix coefficients. Their only denominators are the displayed `P`
factors. The completion map has denominator `g`, and `h=chi/g` has
denominator `g`. The strict-domain theorem makes every one of these
divisors nonzero.

## 4. Exact coefficient targets

For `p,q` in `{1,2}` define

```
Mh_q,j = K Qh_q,j K*,
A_pq,ij = sum_ac (Qv_p,i)_ac (Mh_q,j)_ac,
```

where the sum is entrywise without a further conjugation; the equivalent
trace is `tr((Qv_p,i)^T K Qh_q,j K*)`. Expanding `|C K B|^2` and summing
the side indices gives

```
W_pq = tr(Qv^(p)(Gv,bar(z))^T K Qh^(q)(Gh,z) K*)
        -Gv_0p Gh_0q.
```

Since the vertical sheet is `h-z`, monic quadratic reduction gives

```
W_pq = [A_pq,00+h A_pq,10+eta A_pq,11-Gv_0p Gh_0q]
        +[A_pq,01-A_pq,10] z.
```

The new exact certificate verifies, independently for all four pairs,

```
A_pq,01-A_pq,10=0,
A_pq,00+h A_pq,10+eta A_pq,11-Gv_0p Gh_0q=0.
```

These are eight rational-function identities over `Q(a,b,c,d)`, with
formal conjugation `a->1/a`, etc. `verify_third_moments.py` constructs
every ingredient from those four independent indeterminates. It forms
each rational residual, clears its exact least common denominator,
and accepts only when its multivariate numerator is the zero
polynomial. The first successful run took about one CPU second and
35 MiB peak RSS; replay receipts record the actual current timings.

Thus all four entries of `W` vanish, completing the proof in section 1.
Both roots are covered at once because the identity holds in the entire
quadratic algebra. Specialization needs no further argument: all original
denominators belong to the explicit localization by unit seeds, `g`,
and the side `P` factors. A rational identity whose numerator is zero
specializes at every point of that localization.

## 5. Relation to the proposed fourth-moment identities

Once `Delta=0`, the proposed sum-of-squares identity follows:
`sum(|D_ij|^2-1)^2=0` and hence `sum|D_ij|^4=9`. The new proof avoids
expanding that fourth moment. In particular it avoids the mixed moment
`m_(2,-2)`, whose row-product quotient introduces additional unrelated
denominator factors into the old six-dimensional contraction.

## 6. Certificate and Lean consumption

The rational verifier exports and binds exact denominator cofactors and
coefficient slices in the variable `a`. A cleared residual `N(a,b,c,d)`
is represented as a finite sum `sum_k a^k N_k(b,c,d)`. Each coefficient
identity `N_k=0` has integer coefficients and can be checked separately
with `ring`. The original denominators can be discharged by `field_simp`
using strict-domain nonvanishing; the supplied cofactors express the
common-denominator relation. This is a sequence of finite polynomial
identities with no elimination, sampling, or presumed flatness result.

The folder supplies proof certificates and a Lean-ready proof plan;
it does not claim a newly compiled Lean theorem.

# Independent audit: P1.1, P1.2, and the P1 localisation search

## Verdict

- **P1.1: PASS.** Both coefficient flattenings, including the vertical matrix
  `[L20; sqrt(2)L11; L02]`, give valid upper bounds.
- **P1.2: FAIL as written; PASS after a sign correction.** The code's definitions
  of `q2`, `q3`, and the normal-form remainder bounds implement the corrected
  statement. Do **not** reverse the definitions of `q2` or `q3` in code.
- **P1 normal-form change and box exhaustion: PASS conditional on valid
  H-motion constants.** The change of variables is globally invertible, and the
  upper-corner tests are sound. The proof must use the corrected remainder sign.
- An independently noticed `M_comb` sign issue has been passed to the H-motion
  reviewer/root. This report does not certify that separate part of P1.

## 1. P1.1

The squared norm identity is exactly the binomial theorem:

\[
\|\phi_d(w)\|^2=\sum_{j=0}^d\binom djw_1^{2(d-j)}w_2^{2j}
 =(w_1^2+w_2^2)^d.
\]

Thus `P=M(P) phi_d` gives the claimed operator norm bound. The horizontal
flattening acts on `phi_2(w) tensor s`, whose norm is `||w||^2 ||s||`.
For the vertical flattening, put `v=(w1^2,sqrt(2)w1w2,w2^2)`. The map taking
`(x20,sqrt(2)x11,x02)` to `w1^2*x20+2*w1*w2*x11+w2^2*x02` has norm
`||v||=||w||^2`; composing it with the vertical matrix proves the bound.
The minimum of two independently certified upper bounds remains an upper bound.

The code divides the degree-3 mixed coefficients by `sqrt(3)` and degree-4
coefficients by `2,sqrt(6),2`. These are the correct binomial normalisations.
The `kap_sw2` matrices have precisely the required `sqrt(2)` factors.

## 2. The sign error in P1.2

The stated definitions are

\[
 q_2=-\tfrac12D^2_{ww}G_s[w,w],\qquad
 q_3=-\bigl(D^2_{sw}G_s[q_2,w]+\tfrac16D^3_{www}G_s[w^3]\bigr).
\]

Consequently the cancelling modified remainder is

\[
 \boxed{\widetilde N_s=N_s+q_2+q_3,\qquad \widetilde N_w=N_w.}
\]

The supplied proof instead defines `N_s-q2-q3` and claims the negative-sign
quadratic and cubic differences vanish. Those statements are algebraically
false. A scalar ridge example is `G(s,w)=sin(s)+cos(w)`: then `q2=w^2/2`,
`q3=0`, and at `s=q2` the incorrectly defined remainder is
`-w^2+O(w^4)`, whereas the claimed right side starts at order four.

Required textual corrections in `proposal/PROOFS.md`:

1. The `kap_swq2` bullet (original line 100): use the flat remainder
   `N_s+q2+q3` and the identity
   `D^3_www G_s[w^3]/6 + q3 = -D^2_sw G_s[q2,w]`.
2. The modified nonlinear remainder (original line 117): use `N_s+q2+q3`.
3. Quadratic cancellation (original line 141):
   `D^2_ww G_s[w,w]/2 + q2 = 0`.
4. Cubic cancellation (original line 142):
   `D^2_sw G_s[q2,w]+D^3_www G_s[w^3]/6 + q3 = 0`.
5. P1's subtraction argument (original line 234): subtracting `q2+q3`
   from `z_s=-[...+N_s+...]` gives
   `tilde z_s=-[...+N_s+q2+q3+...]`.

## 3. Complete corrected remainder decomposition

Write `t=tilde zeta_s`, `s'=t+q3`, and `s=s'+q2`. For each output block `g`,
the corrected modified remainder equals the following exact sum (plus its
degree-nine Taylor remainder):

\[
\begin{aligned}
\widetilde N_g={}&\mathbf1_{g=w}
 \bigl(\tfrac12D^2_{ww}G_g[w^2]
       +D^2_{sw}G_g[q_2,w]+\tfrac16D^3_{www}G_g[w^3]\bigr)\\
&+P_{g,4}(w)+D^2_{sw}G_g[t,w]+\tfrac12D^2_{ss}G_g[s',s']\\
&+D^2_{ss}G_g[s',q_2]+\tfrac12D^3_{sww}G_g[s',w,w]\\
&+\tfrac12D^3_{ssw}G_g[s,s,w]+\tfrac16D^3_{sss}G_g[s^3]\\
&+\sum_{n=4}^8\sum_{\substack{0\le k\le n\\(n,k)\ne(4,4)}}
  \frac{D^n_{s^{n-k}w^k}G_g[s^{n-k},w^k]}{(n-k)!k!}
 +R_{g,9}.
\end{aligned}
\]

The identity uses only bilinearity/multilinearity, the two definitions of
`q2,q3`, and Taylor's formula. In particular, no fifth- or higher-degree terms
are omitted when `s'` and `s` are left unexpanded. They are already present in
the displayed terms containing those variables.

Applying the binomial isometry and the supplied partial tensor norm bounds to
this identity gives exactly `P_curved` in the proposal. The code in
`curved_expansion` and `curved_slack` matches this corrected identity.

For one ridge, put `a=a_w.w`, `b2=a_s.q2`, `b3=a_s.q3`. Its pure quartic
contribution is exactly

\[
 -C\bigl(b_3a+\tfrac12b_2^2\bigr)
 -\tfrac12S b_2a^2+\tfrac1{24}Ca^4.
\]

Expanding its five monomial coefficients yields the supplied `q40`,
`q31_4`, `q22_6`, `q13_4`, and `q04` formulas. In particular, the middle
coefficient of `b2^2/2` is `b20*b02+2*b11^2`, and the middle coefficient
of `b2*a^2/2` is
`(b20*aw2^2+4*b11*aw1*aw2+b02*aw1^2)/2`; both match the code.

The combined `s' w^2` coefficient comes from
`-C(a_s.s')*b2 - S(a_s.s')*a^2/2`, giving exactly `L20,L11,L02`.

The corrected flat expansion is also sound: in the strong block its pure
quadratic term cancels, and its pure cubic term is
`D^3_www G_s[w^3]/6+q3=-D^2_sw G_s[q2,w]`, bounded by `kap_swq2 W^3`.
All remaining flat terms retain the original strong coordinate `s`. This is
why taking `min(poly_curved,poly_flat)` in the code is legitimate.

For each scalar ridge `C cos(x)+S sin(x)`, the absolute ninth derivative is
at most `sqrt(C^2+S^2)`. The ridge argument obeys
`|a_l.zeta| <= ||a_l,s|| S_full + ||a_l,w|| W`.
Summing scalar Lagrange bounds in each output component and then taking the
Euclidean output norm gives the stated `T_9`; no common Lagrange point across
components is needed.

## 4. Same zero set and search correctness

The map

\[
 (z_s,w)\longmapsto(z_s-q_2(w)-q_3(w),w)
\]

is a globally invertible polynomial shear, with inverse
`(tilde z_s,w) -> (tilde z_s+q2(w)+q3(w),w)`. Its invertibility requires
neither a nonzero weak radius nor a smallness assumption. `Lambda_w=0` is
checked as an exact Arb zero in code. Since only the necessary condition
`F=0 => BF=0` is used, `B` need not be an exact inverse and the proposed
reference need not be a zero. `G(0)` and `DG(0)-I` remain explicitly bounded.

The initial search rectangle contains every possible zero because

\[
 \|\widetilde z_s\|\le
 \min(R,\mathrm{scap})+\|\Lambda_s\|r+kappa_qw_{\rm top}^2
 +\kappa_{q3}w_{\rm top}^3,
 \quad 0\le W\le w_{\rm top}=\min(R,\mathrm{wcap}).
\]

For a box `[sl,su] x [wl,wu]`, the reverse triangle inequality gives

\[
 \|\zeta_s\|\ge
 \max(0,sl-\|\Lambda_s\|r-kappa_qwu^2-kappa_{q3}wu^3).
\]

This justifies the initial-ball/scap exclusion. Every point still in the
box satisfies

\[
 \|\zeta_s\|\le
 \min\bigl(\mathrm{scap},\sqrt{\max(0,R^2-wl^2)}\bigr).
\]

With this cap fixed, each argument and term in `curved_slack` is a
nondecreasing function of `S_tilde,W`: sums/products have nonnegative
coefficients; square roots act on nonnegative quantities; minima of
nondecreasing functions are nondecreasing. Therefore evaluation at `(su,wu)`
is a valid upper bound over the box. This remains true for the combined
flat bounds using `min(R,sqrt(S_full^2+W^2))`, because it bounds the actual
full coordinate norm as well as its coordinatewise estimate.

The residual discard comparisons and final localisation comparison are
strict Arb inequalities. The choice of which coordinate to bisect may use a
non-strict comparison without affecting exhaustiveness; both resulting
closed halves are retained. Hitting the budget/depth limit raises an open
case, so it cannot silently certify an unprocessed region.

## 5. Exact regression evidence

`audit/normal_form_regression.py` is dependency-free and uses only Python
`Fraction`. It independently checks:

- the binomial squared-norm identity for degrees one through eight;
- the corrected quadratic/cubic cancellations and failure of the original
  negative-sign versions;
- the entire grouped Taylor decomposition through degree four, with two
  strong variables, two weak variables, three nontrivial ridges, two strong
  output coordinates, and one weak output coordinate;
- the flat strong pure-cubic identity.

All four tests pass. Degrees five through eight are unchanged on the two
sides of the grouped identity and need no additional symbolic expansion.

## 6. Separate H-motion warning sent to root

The ridge angle in the code is
`phi=-q_s+y_s+q_t-y_t`, so with `du=U_t-U_s`, the mixed derivative is
`-cos(phi)*du/3`, which is exactly `Cj` in the code. Under the stated
`zeta=z+Lambda*u` convention, its quadratic contribution is therefore
`+sum u_j Cj Lambda u`. The code's `M_comb` subtracts this term.
This separate issue requires an H-motion correction before P1 as a whole
can be certified; the normal-form corrections above do not resolve it.

# Small polynomial proof of the Fourier constructor

This module replaces the rational-identity transfer step downstream of five
explicit Gram identities. It does not use an existing phase side,
irreducibility, algebraic independence, or Zariski density. The root Gram
certificate module supplies the five inputs. The present module supplies
integer polynomial cofactors for every subsequent step.

## 1. Dictionary and hypotheses

The certificate variables have the following meaning. Uppercase letters mean
actual complex conjugates after specialization; they are independent variables
in all polynomial identities.

| Variable | Meaning |
|---|---|
| `mu, Mu`, `nu, Nu` | `s/3`, its conjugate; `t/3`, its conjugate |
| `n, m` | `1-mu*Mu`, `1-nu*Nu` |
| `k, K` | `r/3-nu*Mu`, its conjugate |
| `h` | `g/27 = n*m-k*K` |
| `u` | `lambda0*conj(lambda1)` |
| `a, A` | `alpha=mu^2-u*Mu`, its conjugate |
| `b, B` | `beta=nu^2-v*Nu`, its conjugate; `v=lambda0*conj(lambda2)` |
| `c, C` | `gamma=2mu*nu-z*lambda0/3`, its conjugate |
| `e` | `(g/27)*lambda0*conj(lambda1)*conj(lambda2)` |
| `delta, Delta` | the chosen square root of `e`, its conjugate |
| `d, db` | the specified `dF`, its conjugate |
| `rho` | `(n+d)/2` after `d` is proved real |
| `q, Q` | `a/rho`, its conjugate |
| `cp, CP`, `cm, CM` | `cplus`, `cminus`, and their conjugates |
| `sig, Sig` | `sigma`, its conjugate |

The root Gram certificates prove

\[
\begin{aligned}
I&:=c^2-4ab-e=0,\\
II&:=eA-nck+ak^2+n^2b=0,\\
III&:=eC-c(nm+kK)+2akm+2bnK=0.
\end{aligned}
\]

They also prove the two polynomials `y_gram_0` and `y_gram_1` recorded in
`y_gram_conditions.json`. That JSON has both readable expressions and their
full integer coefficient arrays. Their sizes are 21 and 19 monomials.
Section 4 gives a short, unambiguous definition of both polynomials which is
independent of the saved coefficient arrays.

Strictness and the phase norms of the lambda quantities give `h>0`, `n>0`,
`abs(e)=h`, and therefore `delta*Delta=h`, `delta != 0`, `e != 0`.
The following proof establishes `d` real before it ever divides by `rho`.
The sign of `delta` can then be selected so `d>=0`, giving `rho>=n/2>0`.
No other strictness guard is needed.

## 2. Reality and the discriminant

Put

\[
D=nc-2ak,\qquad \bar D=nC-2AK,\qquad H=h-nm+kK.
\]

The two decisive identities have exceptionally small cofactors:

\[
hD-e\bar D=D H-n III+2K II,
\]

\[
D^2-(n^2-4aA)e=n^2 I+4a II.
\]

The specification is `h*d=D*Delta`. Multiplying by `delta` and using
`delta*Delta=h` proves `delta*d=D`. Conjugating proves
`Delta*db=bar D`. Consequently

\[
\begin{aligned}
h\delta(d-db)={}&h(\delta d-D)-e(\Delta db-\bar D)
 +(hD-e\bar D)\\
 &+\delta db(\delta\Delta-h)-\Delta db(\delta^2-e).
\end{aligned}
\]

Since `h*delta` is nonzero, `d=db`. Moreover,

\[
\begin{aligned}
\delta^2(d^2-n^2+4aA)={}&(\delta d-D)(\delta d+D)
 +D^2-(n^2-4aA)e\\
 &-(n^2-4aA)(\delta^2-e).
\end{aligned}
\]

This proves `d^2=n^2-4aA`. Choosing the sign as described above and setting
`rho=(n+d)/2` now gives

\[
\rho^2-n\rho+aA=0.
\]

The JSON identities explicitly include each multiplication and each
cancellation. Nonzero cancellation factors are stated as data, and the checker
verifies that the multiplied target is exactly that factor times the claimed
consequence.

## 3. The entire Hermitian Gram calculation

Write `q=a/rho`, `Q=A/rho`. The quadratic implies

\[
\rho(1+qQ)=n.
\]

Define

\[
 n\,cp=k-\delta Q,\qquad n\,cm=kq+\delta,
\]

and their conjugates. Direct polynomial identities give

\[
\begin{aligned}
\rho(cp+cm\,Q)&=k,\\
\rho(cp\,CP+cm\,CM)&=m,\\
\rho(cm-q\,cp)&=\delta,\\
\rho(cm+q\,cp)&=c,\\
\rho\,cp\,cm&=b.
\end{aligned}
\]

All five statements are certified without dividing by `a`, `cp`, `cm`, or
`d`. In particular they remain valid when any of those quantities vanishes.
For example, if `Qn=rho(1+qQ)-n`, the first and third identities follow from

\[
\begin{aligned}
n[\rho(cp+cmQ)-k]
 &=\rho(ncp-k+\delta Q)+\rho Q(ncm-kq-\delta)+kQ_n,\\
n[\rho(cm-qcp)-\delta]
 &=\rho(ncm-kq-\delta)-\rho q(ncp-k+\delta Q)+\delta Q_n.
\end{aligned}
\]

The row lemma in the assembly module establishes `sig*Sig=rho` from
`sig=u+mu*q`, `abs(u)=1`, `a=mu^2-u*Mu`, and the rho quadratic. With this
already proved input, the polynomial Gram equations are

\[
M\bar M^{\mathsf T}=
\begin{pmatrix}
1&\bar\mu&\bar\nu\\
\mu&1&\bar\nu\mu+K\\
\nu&\nu\bar\mu+k&1
\end{pmatrix}=G/3,
\qquad \det M=\delta.
\]

Here `M` is exactly the specified matrix, with rows
`(1,0,0)`, `(mu,sig,q*Sig)`, `(nu,cp*sig,cm*Sig)`.
The displayed off-diagonal entry is `r/3` because `k=r/3-nu*Mu`.

There is no circular dependence: certificates through `beta_product` use no
sigma hypothesis, so they first establish the rho quadratic. The elementary
row lemma then supplies the sigma norm, and only then are the final matrix
norm certificates invoked.

## 4. Reducing y-row flatness to two Gram-only identities

The remaining scalar flatness equation is

\[
F_y=\nu CP+cm\,\bar\nu+\sigma cp\,CM=0.
\]

Let

\[
\begin{aligned}
P&=\rho k-\delta A,&\bar P&=\rho K-\Delta a,\\
C_0&=ka+\delta\rho,&\bar C_0&=KA+\Delta\rho,\\
S_0&=u\rho+\mu a.
\end{aligned}
\]

Clearing only `n` and `rho` gives

\[
N:=n\rho^2(\nu\bar P+\bar\nu C_0)+S_0P\bar C_0
 =n^2\rho^3F_y.
\]

Define the following degree-three polynomials in a placeholder `r0`:

\[
\begin{aligned}
R_0(r_0)&=n\nu K r_0^3+n\bar\nu ka r_0^2
 +A r_0(kK-h)(ur_0+\mu a),\\
R_d(r_0)&=n\bar\nu r_0^3-KA^2(ur_0+\mu a),\\
R_b(r_0)&=-n\nu a r_0^2+kr_0^2(ur_0+\mu a),\\
R(r_0)&=\delta R_0(r_0)+eR_d(r_0)+hR_b(r_0).
\end{aligned}
\]

Modulo `delta^2-e` and `delta*Delta-h`, `delta*N=R(rho)`.
Divide `R(r0)` by the *monic* polynomial `r0^2-n*r0+a*A`, obtaining

\[
R(r_0)=Q(r_0)(r_0^2-nr_0+aA)+L_0+r_0(L_{10}+\delta L_{11}).
\]

The coefficient `L0` may depend linearly on `delta`, while `L10` and `L11`
are independent of it. This degree-three-to-degree-one monic division is a
polynomial identity, and its quotient is saved among the explicit cofactors.

Now use

\[
2\delta\rho-n\delta-D=0,
\qquad
2e\rho-en-\delta D=0.
\]

These follow from `delta*d=D`, `2rho-n-d=0`, and `delta^2=e` by the two- and
three-term cofactor identities in `y_certificates.json`. Form

\[
\mathcal N=2eL_0+L_{10}(en+\delta D)+eL_{11}(n\delta+D).
\]

It has the form

\[
\mathcal N=eF_0+\delta F_1,
\]

where `F0=y_gram_0` and `F1=y_gram_1` are the specified 21- and 19-term
polynomials. This is the precise defining recipe used to produce their
coefficient arrays. No division in Gram data occurs; the constant coefficient
of `mathcal N` is visibly a polynomial multiple of the formal variable `e`.

The final cofactor chain proves

\[
2e\delta n^2\rho^3F_y=eF_0+\delta F_1
\]

modulo the already proved polynomial relations. The root Gram certificates
set `F0=F1=0`, and the prefactor is nonzero. Thus `F_y=0` at every strict
specialization, including all auxiliary zero cases not forbidden above.

For the third row `(a0,b0,c0)=(nu,cp*sig,cm*Sig)`, the flatness expression
from SIDE_FIBER (2) is

\[
\sigma^2(a_0\bar b_0+c_0\bar a_0)+\rho b_0\bar c_0
 =\rho\sigma F_y=0.
\]

Together with the analogous x-row equation and `3MM*=G`, the standard finite
Fourier expansion proves unimodularity of all entries of the constructed
side. The assembly module completes the Fourier and signature steps.

## 5. Files, replay, and exact scope

- `core_model.py`: fixed mathematical statements for the 19 core identities.
- `core_certificates.json`: complete integer target and cofactor arrays.
- `verify_core.py`: independent dictionary-convolution replay of those arrays.
- `y_model.py`: fixed mathematical definitions and the 12 y-flatness steps.
- `y_gram_conditions.json`: the two precise Gram-only target polynomials.
- `y_certificates.json`: integer target and cofactor arrays for the reduction.
- `verify_y.py`: validates the core first, then every y-reduction certificate.
- `build_core.py`, `build_y.py`: reproducible generators, not used by replay.

Run `python3 output/algebra/verify_y.py` from the handoff directory. In this
workspace the two exact replays take approximately 0.05 and 0.10 seconds
respectively, excluding Python/SymPy import time. The largest core cofactor
has 3 monomials; the largest y-reduction cofactor has 11 monomials. Every
failure raises an exception and exits nonzero.

The root Gram certificate package is responsible for deriving `I`, `II`,
`III`, `F0`, and `F1` from the independent Gram coordinates and the quadratic
sheet relation. The elementary row/assembly package is responsible for the
sigma norm, x-row flatness, finite Fourier calculation, and signature
identification. This module proves precisely the intervening polynomial
implications. No numerical evidence is used.

### Optional Lean transcription

`SmallPolynomialLemmas.lean` contains 31 pure-ring support lemmas generated by
`build_lean.py` from the same verified cofactor expressions. Each lemma closes
with `linear_combination`; there are no axioms or placeholders. The file has
not been compiled in this environment and does not itself formalize the full
side-existence theorem. Its statements are precisely the multiplied polynomial
targets; nonzero cancellation and specialization remain the separate elementary
steps described above. This source is provided to reduce transcription work
when integrating the proof into the upstream Lean project.

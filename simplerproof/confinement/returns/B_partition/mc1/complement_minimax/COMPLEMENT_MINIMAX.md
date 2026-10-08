# Complementary-corner minimax: an exact barrier above 26

## Result

Write the handoff's polynomial invariant as `R(X,Y,Z,J)`, and define

\[
F(X,Y,Z,J)=\max\{R(X,Y,Z,J),R(X,Y,Z,-J)\}.
\]

Consider a point where the four Gram invariants are valid local coordinates,
`X,Y,Z>0`, `p=X+Y+Z<9`, and both displayed branches are active with common
positive value. These are the regular, interior conditions relevant to a
physical Hadamard completion. A first-order stationary point means that

\[
0=\lambda\nabla R(X,Y,Z,J)+(1-\lambda)\nabla R(X,Y,Z,-J)
\quad\text{for some }0\le\lambda\le1. \tag{1}
\]

### Theorem 1: first-order barrier

Every such point satisfies

\[
\boxed{F\ge K_*=\frac{233472\sqrt6-488448}{3125}>26.} \tag{2}
\]

The exact value is approximately `26.7005661526637`; the decimal is descriptive
only and is not used in the proof. The lower bound is attained among formal
Gram data satisfying all the strict elementary physical inequalities.

The only candidate below 36, up to permutations of `X,Y,Z` and the sign of `J`,
is

\[
\begin{aligned}
u_*&=\frac{26-4\sqrt6}{5},\qquad X=Y=1,\qquad Z=7-u_*,\\
J^2&=\frac{432\sqrt6-588}{125},\qquad F=K_*.
\end{aligned} \tag{3}
\]

### Theorem 2: no positive minimum on the regular tie locus

None of the positive first-order stationary candidates in Theorem 1 is a local
minimum of `F`: each has an explicit smooth tie-preserving curve on which the
common value has a strict local maximum. Therefore a positive local minimum of
the complementary-pair maximum cannot occur at a regular interior point with
both branches active.

The application to the full 400-corner maximum is limited and precise. If the
only active values at a regular point are those of a `3+3` split's four blocks
`A,B,C,D`, then F2 identifies them with these two functions. The theorem excludes
such a point as a local minimum of the full maximum. In particular, below 26 a
strict first-order descent direction exists for the two active values. Other
active corners, or failure of the Gram coordinate map to be locally invertible,
remain outside this argument.

## 1. Even and odd parts

Set

\[
u=9-p,\quad W=XY+XZ+YZ-XYZ,\quad A=W-u^2-9u,
\quad B=-u^2+16u-36.
\]

Direct expansion gives

\[
R_\pm=E\pm2JT,\tag{4}
\]

where

\[
\begin{aligned}
E&=36u^3-A^2+BJ^2,\\
T&=2J^2+(u+6)W-u(u-6)(u-9).
\end{aligned} \tag{5}
\]

Thus a tie is equivalent to `JT=0`. For a physical positive tie both
`eta_+=u+J` and `eta_-=u-J` are positive, so `u>|J|`; in particular `0<u<9`.
Only the weaker condition `0<=u<=9` is needed in most of the algebra below.

Put `tau=2lambda-1`. Equation (1) becomes

\[
\nabla E+\tau\nabla(2JT)=0,\qquad |\tau|\le1. \tag{6}
\]

## 2. The tie branch J=0

At `J=0`, derivatives of the two branches with respect to `X,Y,Z` agree.
Their common value is

\[
F_0=36u^3-A^2.
\]

Writing `w_X=Y+Z-YZ` and cyclically, the three stationary equations are

\[
-108u^2-2A(w_X+2u+9)=0. \tag{7}
\]

At a positive stationary value, `A` cannot vanish: (7) would imply `u=0`
and hence `F_0=0`. Subtracting pairs of (7) therefore gives

\[
(Y-X)(1-Z)=(Z-X)(1-Y)=(Z-Y)(1-X)=0. \tag{8}
\]

The solutions of (8) are either `X=Y=Z`, or a permutation of `(1,1,z)`.
This elementary alternative follows by selecting a pair of unequal variables:
the remaining variable must equal one, and comparison with either unequal
variable forces a second variable to equal one.

### 2.1 All three variables equal

Let `X=Y=Z=x`. Then

\[
F_0(x)=-x^2(x-3)^2(x^2+18x-27),\tag{9}
\]

and

\[
F_0'(x)=-6x(x-3)P(x),\qquad
P(x)=x^3+13x^2-45x+27. \tag{10}
\]

Positive `F_0` requires `0<x<-9+6sqrt(3)<7/5`. On `[0,7/5]` the derivative
`P'(x)=3x^2+26x-45` is strictly negative, because it increases on this interval
and `P'(7/5)=-68/25`. Also

\[
P(79/100)>0,\qquad P(4/5)<0.
\]

Thus the sole positive-value stationary root lies strictly between `79/100`
and `4/5`. Equation (9) then gives the entirely rational lower bound

\[
F_0>
\left(\frac{79}{100}\right)^2
\left(\frac{11}{5}\right)^2\frac{299}{25}
=\frac{225793139}{6250000}>36. \tag{11}
\]

Moreover, at this root, (10) gives

\[
F_0''=-6x(x-3)P'(x)<0. \tag{12}
\]

Hence the curve `X=Y=Z=x,J=0` supplies a strict decrease in the common value
on either side of the stationary point.

### 2.2 Two variables equal one

Let `X=Y=1,Z=z`. Then `u=7-z,W=1+z` and

\[
F_0(z)=-(z-3)^2(z^2-6z-3),\qquad
F_0'(z)=-4(z-3)(z^2-6z+3). \tag{13}
\]

The root `z=3` has value zero. The other roots are `z=3+-sqrt(6)`; both have
value exactly 36 and second derivative exactly `-48`. This proves both the
barrier and the local-minimum exclusion on the entire `J=0` branch.

## 3. The tie branch J!=0, T=0

On this branch put `mu=2tau J`. Equation (6) reduces to

\[
\nabla E+\mu\nabla T=0,\qquad |\mu|\le2|J|. \tag{14}
\]

Its `J` component is

\[
2J(B+2\mu)=0,
\]

so necessarily

\[
\mu=-B/2. \tag{15}
\]

Define

\[
F_u=E_u+\mu T_u,\qquad F_W=E_W+\mu T_W.
\]

The three remaining equations are

\[
-F_u+w_XF_W=0
\]

and their cyclic counterparts. Direct algebra gives

\[
F_W=\frac{-4W+u^3-6u^2-24u+216}{2}. \tag{16}
\]

### 3.1 The vanishing-coefficient branch cannot be discarded without checking it

Suppose `F_W=0`. Then all three stationary equations also give `F_u=0`.
From (16) and `T=0`, one obtains

\[
\begin{aligned}
W&=\frac{u^3-6u^2-24u+216}{4},\\
J^2&=-\frac{u^4-4u^3-144u+1296}{8}.
\end{aligned} \tag{17}
\]

Substitution into `F_u=0` gives exactly

\[
\frac{(u-6)(u^2-4u+36)(3u^2-20u+60)}8=0. \tag{18}
\]

The second and third factors are respectively
`(u-2)^2+32` and `3(u-10/3)^2+80/3`, so the only real possibility is `u=6`.
Equation (17) would then give `J^2=-108`, impossible. This closes the branch
where taking differences of stationary equations would otherwise lose information.

Therefore `F_W!=0`. The differences of the stationary equations again give
(8), leaving the same two alternatives.

### 3.2 All variables equal gives nonpositive common value

For `X=Y=Z=(9-u)/3`, the tie equation yields

\[
W=\frac{u(u-9)^2}{27},\qquad
J^2=-\frac{u(u-9)(u^2-30u+108)}{54}. \tag{19}
\]

Substituting in the common value gives the exact factorization

\[
E=\frac{u(u-18)^2(u-9)(5u-18)^2}{1458}. \tag{20}
\]

It is nonpositive for `0<=u<=9`; hence it contributes no positive tie candidate.

### 3.3 Two variables equal one gives the barrier K_*

Set `X=Y=1,Z=7-u`. Then

\[
\begin{aligned}
W&=8-u,\\
J^2&=\frac{(u-4)(u^2-10u+12)}2,\\
E&=-\frac{(u-10)^2(u-4)(u-2)^2}{2}. 
\end{aligned} \tag{21}
\]

The remaining stationary equation factors as

\[
-F_u+F_W=
\frac{(u-10)(u-2)(5u^2-52u+116)}2=0. \tag{22}
\]

Here `0<u<7`. Positive `E` in (21) further requires `u<4` and `u!=2`.
The roots `u=10`, `u=2`, and `(26+4sqrt(6))/5` are therefore excluded.
The only remaining root is

\[
u_*=(26-4\sqrt6)/5.
\]

Substitution into (21) gives exactly (3) and (2). To certify the strict
inequality `K_*>26` without decimal evaluation, both quantities in

\[
233472\sqrt6>488448+26\cdot3125=569698
\]

are positive, and their squared difference is

\[
6\cdot233472^2-569698^2=2499237500>0. \tag{23}
\]

Also `K_*<36` follows immediately from `sqrt(6)<5/2`, or from the exact field
comparison in the verifier.

For completeness, the candidate is compatible with the convex weight in (14).
At `u_*` one has

\[
16J^2-B^2=\frac{125952\sqrt6-288768}{625}>0.
\]

Thus `|tau|=|B|/(4|J|)<1`. The exact inequalities `J^2>0`, `u_*^2>J^2`,
and `4XYZ>J^2` also hold and are independently checked in the verifier.
Consequently the lower bound is attained as a stationary point of the formal
Gram minimax within its elementary physical inequality domain. This statement
does not assert that it minimizes the full 400-corner maximum.

### 3.4 An exact unit-modulus seed realizing the barrier

The candidate can also be realized by an explicit unit-modulus corner. Put

\[
z=7-u_*,\quad j=\sqrt{(432\sqrt6-588)/125},\quad D=z-j+1,
\]

and define

\[
\alpha=\frac{z-1}{2\sqrt D},\qquad
\beta=\frac{j-2}{2\sqrt D},\qquad
b=e^{\mathrm i(\arccos\alpha+\arccos\beta)},\quad
c=e^{\mathrm i(\arccos\alpha-\arccos\beta)}.
\]

The exact bounds `3<z<4` and `0<j<2` are checked by the verifier. They imply
`D>0` and `|alpha|,|beta|<1`: the inequality for beta follows from `j^2<4z`,
and that for alpha follows from `z^2-6z+4j-3<0`. For the latter, on `3<z<4`
one has `z^2-6z-3<=-11`, while `4j<8`.

Set

\[
E_*=
\begin{pmatrix}
1&1&1\\
1&-1&b\\
1&c&-1
\end{pmatrix}.
\]

Direct multiplication gives `X=Y=1` and

\[
Z=1+4\alpha^2-4\alpha\beta=z,\qquad
J=2+4\alpha\beta-4\beta^2=j.
\]

Consequently `R(E_*)=R_poly(X,Y,Z,-J)=K_*`. Using the supplied completion fact
F7, the positive value of R embeds this corner in physical Hadamards on both
sheets. This uses F7 only for the sharpness example, not for the exclusion
proof. It does not assert that the other 396 corners of those completions have
R at most `K_*`.

## 4. The remaining stationary candidate is not a local minimum

On the smooth tie curve

\[
X=Y=1,\quad Z=7-u,\quad
J(u)=\pm\sqrt{(u-4)(u^2-10u+12)/2},
\]

with the sign fixed near `u_*`, the common value is the last line of (21).
Differentiating it gives the negative of the polynomial in (22). At `u_*`,
its second derivative is

\[
E''(u_*)=4\sqrt6\,(u_*-10)(u_*-2)<0, \tag{24}
\]

because `3<u_*<4`. All elementary physical inequalities are strict at this
point, so this curve stays in the same open inequality domain for sufficiently
small changes of `u`. Its common value decreases strictly on either side.
Together with (12) and (13), this proves Theorem 2.

## 5. Verification and exact status

Run

```
python3 verify_complement_minimax.py
```

The script uses only standard-library rational arithmetic and an explicit
ordered representation of `Q(sqrt(6))`. It verifies every polynomial
factorization used above, the excluded vanishing-coefficient branch, the
rational root bracket on `J=0`, the exact candidate value, its weight and strict
Gram inequalities, and the second-derivative signs. It exits nonzero if any
identity or inequality fails. No floating-point arithmetic decides a claim.

The new result excludes a complete global class of possible local minima. It
does not exclude points at which additional independent corners are active,
nor the locus where the invariant coordinate map has rank below four. Those
are the explicit remaining obligations for applying the critical-point route
to the full confinement theorem.

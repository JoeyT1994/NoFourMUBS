# A Möbius–cubic four-parameter normal form for order-six Hadamards

## Scope

The results of Mateo Cárdenes Wuttig and Joseph Tindall, *A Complete Classification of Complex Hadamard Matrices of Order Six*, supplied as `HadamardClassification(4).pdf`, are accepted as true. The global inputs are Theorem 22 (product-regular coverage) and Supplemental Proposition S.11 (the matched lower-block norm identity). This note further simplifies the preceding `Hadamard6_Barycentric_Four_Parameter_Form.md`.

The new ingredients are an intrinsic complex invariant of a 3-by-3 phase block, a conjugate-pair sheet coordinate, Möbius companions, and a branch-free polynomial implementation. They remove the imbalance divisions, the per-coordinate cubic-derivative denominators, and the matrix inverse. The algebraic root count remains one common square root and two cubics. This is not a claim that this root count is minimal under every possible change of parameters.

Matrices are unnormalized: their entries have modulus one and HH† = 6I.

## 1. Four phases and one intrinsic sheet scalar

Choose (a,b,c,d) in the unit four-torus and set

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

Its determinant, permanent, and entry product are

\[
\delta=ad-bc-d+b+c-a,
\qquad \pi=ad+bc+a+b+c+d,
\qquad M=abcd.
\]

Put

\[
A_0=|\delta|^2,\qquad B_0=|\pi|^2,
\]
\[
\boxed{g=2A_0-3B_0,\qquad \eta=A_0-2B_0,}
\]
\[
\boxed{\chi=-2\operatorname{Re}\frac{\pi\delta^2}{M}
-\frac{(A_0-B_0+12)(A_0-3B_0)}2.}
\]

For g>0 and

\[
\mathcal R=4g^2\eta-\chi^2\geq0,
\]

choose the discrete sheet sign epsilon=+1 or -1 and define

\[
\boxed{\zeta=\frac{\chi+i\varepsilon\sqrt{\mathcal R}}{2g}.}
\]

Then

\[
\zeta+\bar\zeta=\chi/g,\qquad |\zeta|^2=\eta,
\qquad \zeta^2-(\chi/g)\zeta+\eta=0.
\]

Use zeta horizontally and its complex conjugate vertically. Thus the two directions do not require independently chosen quadratic roots.

The quantity g is exactly det(6I-EE†). Since EE† is positive semidefinite with trace 9, at most one of its eigenvalues can exceed 6. Hence g>0 implies 6I-EE† is positive definite. The formula g=2A_0-3B_0 also implies det(E) is nonzero on this domain. No separate matrix-positivity or corner-determinant test is needed.

A necessary scalar consequence of physical admissibility is

\[
|\det E|^2\geq2|\operatorname{perm}E|^2.
\]

It is not, by itself, the complete admissibility condition.

## 2. One universal side routine

The horizontal and vertical trace triples are

\[
(s_h,t_h,r_h)=(-(1+a+b),-(1+c+d),-(1+c/a+d/b)),
\]
\[
(s_v,t_v,r_v)=(-(1+a+c),-(1+b+d),-(1+b/a+d/c)).
\]

For either triple (s,t,r), use z=zeta horizontally or z=conjugate(zeta) vertically. Define

\[
P=rs^2+\bar r t^2+(3-|r|^2)st,
\qquad Q=t\bar s^{\,2}+r^2\bar t+(3-|t|^2)r\bar s,
\]
\[
\boxed{
\lambda=\frac{P}{g+(9-|r|^2)z},
\qquad
\mu=\frac{Q}{g+(9-|t|^2)z},
\qquad u=\lambda/\mu,
}
\]
\[
\boxed{
\beta=\frac{3t-rs+\lambda(r\bar t-3\bar s)}{9-|r|^2}.
}
\]

Both lambda and mu have unit modulus. Their denominator nonvanishing follows from P Q != 0 and the identities in Section 6. The denominator 9-|r|² is positive because it is a principal 2-by-2 minor of the positive Gram matrix.

Let x_1,x_2,x_3 be the roots of

\[
\boxed{q(x)=x^3-sx^2+u\bar s x-u.}
\]

The paired coordinates have the Möbius formula

\[
\boxed{y_j=\frac{\lambda+\beta x_j}{x_j+\lambda\bar\beta}.}
\]

At a phase x where its denominator does not vanish, unit modulus is immediate:

\[
\lambda+\beta x=\lambda x\,\overline{x+\lambda\bar\beta}.
\]

### Exact removable-point rule

If x_j+lambda conjugate(beta)=0, use

\[
\boxed{y_j=t-2\beta.}
\]

With distinct cubic roots, at most one coordinate needs this rule. A zero denominator forces |beta|=1; the fraction then equals beta at the other two roots. The prescribed trace sum(y)=t fixes the exceptional value exactly. This is not an arbitrary limiting convention.

Set

\[
\mathcal X(s,t,r;z)=
\begin{pmatrix}1&1&1\\x_1&x_2&x_3\\y_1&y_2&y_3\end{pmatrix}.
\]

The two side blocks are

\[
B=\mathcal X(s_h,t_h,r_h;\zeta),
\qquad C=\mathcal X(s_v,t_v,r_v;\bar\zeta)^T.
\]

## 3. A branch-free polynomial companion

The following equivalent formula is used by the implementation. It removes the per-root fractions and implements the removable-point rule automatically.

For the side data of Section 2 set

\[
L=\lambda\bar\beta,\quad v=\lambda(1-|\beta|^2),
\quad q_0=q(-L),\quad q_1=q'(-L),
\]
\[
T_0=|q_0|^2+|q_1|^2,
\qquad
\boxed{\alpha=\frac{-v\bar q_0+(t-3\beta)\bar q_1}{T_0}.}
\]

Define the quadratic polynomial

\[
R(x)=x^2-(s+L)x+L^2+sL+u\bar s.
\]

Then all three companions are obtained from the same polynomial:

\[
\boxed{y_j=\beta+\alpha R(x_j).}
\]

Only one common denominator T_0 is used per side. The construction requires T_0>0. If q has distinct roots, this condition is automatic, because q and q' cannot both vanish at -L.

To check the formula, polynomial division gives

\[
q(x)-q(-L)=(x+L)R(x).
\]

The trace condition for the Möbius expression gives

\[
(t-3\beta)q_0+v q_1=0.
\]

Where q_0 != 0, these identities imply alpha=-v/q_0 and recover the Möbius formula at every cubic root. If q_0=0, the admissible case has q_1 != 0 and v=0. Then alpha=(t-3 beta)/q_1. At the pole root x=-L one has R(x)=q_1, giving y=t-2 beta; R vanishes at the other two roots, giving y=beta.

This formula does evaluate a cubic derivative once, at the fixed point -L. It does not divide by q'(x_j), or differentiate at the three coordinate roots.

## 4. The full matrix without an inverse

Use horizontal trace data s=s_h,t=t_h,r=r_h and put

\[
\Gamma=\begin{pmatrix}
9-|r|^2&r\bar t-3\bar s&\bar s\bar r-3\bar t\\
\bar r t-3s&9-|t|^2&s\bar t-3\bar r\\
sr-3t&\bar s t-3r&9-|s|^2
\end{pmatrix}.
\]

This is adj(G), where

\[
G=6I-EE^\dagger=
\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix},
\qquad \det G=g.
\]

The normal form is

\[
\boxed{
H_\varepsilon(a,b,c,d)=
\begin{pmatrix}
E&B\\
C&-C E^\dagger\Gamma B/g
\end{pmatrix}.
}
\]

No matrix inverse, final root-pairing search, or entrywise-flatness acceptance test is part of the mathematical definition.

### Admissibility theorem

An explicit domain for the branch-free polynomial version is

\[
(a,b,c,d)\in\mathbb T^4,\quad g>0,\quad \mathcal R\geq0,
\quad P_hQ_hP_vQ_v\ne0,\quad T_{0,h}T_{0,v}>0.
\]

On this domain the coordinate cubics actually have distinct phase roots, the side entries are phases, and H is a complex Hadamard matrix.

Equivalently, a slightly redundant and easier-to-state domain for the Möbius version replaces T_{0,h}T_{0,v}>0 by the condition that both selected coordinate cubics have distinct roots. The latter implies both T_0 conditions. The reverse implication on the displayed physical domain follows from the fixed-Gram identities and invertibility, as explained in Section 7.

In particular, this domain has no imbalance condition |r|²-|t|² != 0. The domain is still an atlas domain, not the entire four-torus and not a one-to-one fundamental domain for equivalence classes.

## 5. Why Möbius maps appear

Let X have rows (1,1,1), (x_1,x_2,x_3), (y_1,y_2,y_3), be invertible, and have phase entries. The three row functions 1,x,y form a basis of functions on the three columns. Hence there are unique coefficients lambda,beta,gamma such that

\[
xy=\lambda+\beta x+\gamma y
\]

at all three columns. Conjugating and multiplying by xy gives

\[
1=\bar\lambda xy+\bar\beta y+\bar\gamma x.
\]

Uniqueness in the basis 1,x,y shows

\[
|\lambda|=1,\qquad \gamma=-\lambda\bar\beta.
\]

Here lambda cannot vanish: otherwise the second identity before comparison would express 1 as a linear combination of x and y, contradicting invertibility. Rearranging the bilinear relation yields the Möbius expression in Section 2.

Taking the sum after division by x gives

\[
3\beta-\lambda r\bar\beta=t-\lambda\bar s.
\]

Solving it with its conjugate has positive determinant 9-|r|² and gives exactly the displayed beta formula.

### The intrinsic scalar

The permanent of X is

\[
\operatorname{perm}X=st-\sum_j x_jy_j.
\]

The preceding barycentric coefficient was k=sum(xy)-st, so

\[
k=-\operatorname{perm}X.
\]

The constant coefficient in the bilinear relation is

\[
\lambda=\frac{P+(9-|r|^2)k}{g}.
\]

It follows that

\[
P=g\lambda+(9-|r|^2)\operatorname{perm}X.
\]

Define zeta=perm(X)/lambda. Then

\[
P=\lambda\big(g+(9-|r|^2)\zeta\big),
\qquad k=-\lambda\zeta.
\]

Thus the new shared scalar has a direct interpretation rather than being an arbitrary rescaling of a quadratic root.

For a general invertible 3-by-3 phase matrix X, define

\[
\boxed{
\Theta(X)=-\frac{\operatorname{perm}(X)(\det X)^2}
{|\det X|^2\prod_{i,j}X_{ij}}.
}
\]

Then zeta=Theta(X). To see this in the normalized form, let u=product(x_j) and v_y=product(y_j). The determinant expression for the constant coefficient gives

\[
\lambda=\frac{\det(xy;x;y)}{\det(1;x;y)}
=-uv_y\frac{\overline{\det X}}{\det X}.
\]

Substitution proves the formula for Theta.

Theta is invariant under row and column phase multiplication, row and column permutations, and transposition. Indeed, the phase factors in its numerator and denominator have identical third powers, while permutation signs disappear in (det X)^2. Also

\[
|\Theta(X)|^2=|\operatorname{perm}X|^2.
\]

The generic flat matching now has the intrinsic form

\[
\boxed{\Theta(C)=\overline{\Theta(B)}.}
\]

It is this matching which the construction continues through vanishing imbalance factors. At such points, other pairings can exist; in particular, the formula is not claimed to enumerate every completion of every single fixed corner.

## 6. Exact scalar identities and connection to the earlier formula

For a trace triple set

\[
X_0=|s|^2,\quad Y_0=|t|^2,\quad Z_0=|r|^2,
\quad p=X_0+Y_0+Z_0,\quad J=2\operatorname{Re}(sr\bar t),
\]
\[
W=X_0Y_0+X_0Z_0+Y_0Z_0-X_0Y_0Z_0.
\]

Direct polynomial identities give

\[
g=27-3p+J,\qquad \eta=9-p+J,
\]
\[
\chi=W-(p-9)(p-18)+(p-15)J,
\]
\[
\boxed{|P|^2=g^2+(9-Z_0)\chi+(9-Z_0)^2\eta,}
\]
\[
\boxed{|Q|^2=g^2+(9-Y_0)\chi+(9-Y_0)^2\eta.}
\]

Consequently, for |zeta|²=eta and 2g Re(zeta)=chi,

\[
|P|^2=|g+(9-Z_0)\zeta|^2,
\qquad |Q|^2=|g+(9-Y_0)\zeta|^2.
\]

These establish the unit modulus and denominator guards for lambda and mu.

Substituting the seed traces gives exactly the determinant/permanent formulas of Section 1. Those formulas are manifestly unchanged by transposing E. In particular, the same g,eta,chi and conjugate pair zeta work in both directions. The shared discriminant is

\[
\mathcal R=4g^2\eta-\chi^2,
\]

which equals the earlier note's real discriminant D and the negative of the paper's Omega.

To compare with the previous product coordinates, temporarily let

\[
\Delta=|r|^2-|t|^2,\quad f=\bar P Q,
\quad \rho=|P|^2+|Q|^2-\Delta^2\eta.
\]

The new formulas obey, without dividing by Delta,

\[
\boxed{P-Qu=\Delta k,\qquad k=-\lambda\zeta,}
\]
\[
\boxed{2fu-\rho=\Delta(2g\zeta-\chi).}
\]

Therefore on Delta != 0 they give precisely

\[
u=\frac{\rho+i\varepsilon\Delta\sqrt{\mathcal R}}{2f}
\]

horizontally, with the opposite sign vertically. Thus this is the same matched sheet as the preceding barycentric construction, not a new unverified sheet selection.

At Delta=0 the coordinate product may be the same for two distinct side blocks. The intrinsic variable zeta still distinguishes their companions. This is the actual extension obtained by the new coordinates.

## 7. Why the extended construction is sound

### Algebraic extension

On the common dense regular locus, the formulas in this note equal the previous barycentric construction and hence the paper's reconstruction. The branch-free side coordinates are polynomial in the coordinate root, with coefficients having denominators only among

- g;
- 9-|r|²;
- P,Q and the corresponding nonvanishing phase-factor denominators;
- the common companion denominator T_0.

There is no Delta denominator and no coordinate-discriminant denominator in the branch-free formula. The seed scalar satisfies a monic quadratic after localizing at g; the coordinate variables satisfy monic cubics with nonzero constant terms. The corresponding quotient algebras are free over their coefficient rings. Thus identities with these rewritten denominators inject into the generic algebra and specialize throughout their nonvanishing domain.

In particular, the parent side norm and trace identities continue to hold formally, giving

\[
BB^\star=G,\qquad (C^T)(C^T)^\star=G_v,
\]

where star conjugates coefficient data and inverts the formal phase-coordinate roots. This is an identity argument, not an assumption that numerical continuity establishes flatness.

The absence of coordinate-discriminant denominators also shows that the selected cubics must be simple on the stated branch-free domain. If two roots coincided, the polynomial companion would assign the same y to them. Two columns of B would coincide, contradicting the invertibility forced by BB^star=G and g>0. The vertical argument is identical.

### Physical side roots

The product u has modulus one. Its odd-degree self-inversive cubic has at least one phase root x. The formally continued companion norm identity makes its y a phase. For this phase column v=(1,x,y)^T, the fixed-Gram identity implies

\[
v^\dagger G^{-1}v=1.
\]

Because G is positive definite, G-vv† is positive semidefinite of rank two. Its leading principal 2-by-2 block gives |s-x|<=2. The other two roots have phase product u/x, and their sum is real after rotation by a square root of u/x. The preceding bound forces both remaining roots to be phases. The continued companion norm relation then makes every y a phase. Thus BB†=G in the ordinary Hermitian sense. Transposition proves the corresponding assertion for C.

### The fourth block

The fixed-Gram identities and the forced-block formula give H†H=6I, but that alone is not the flatness proof.

Use the accepted paper's Supplemental Proposition S.11, rewriting its lower-block cubic-norm identity with the new side polynomials and D=-CE†adj(G)B/g. The rewritten norm involves only the denominators listed above. Its generic vanishing therefore extends to this localization, including Delta=0 and a repeated scalar-sheet root.

At a physical specialization the norm identity gives product_j |D_ij|²=1. Block orthogonality gives sum_j |D_ij|²=3. Equality in the arithmetic-geometric mean inequality forces all three |D_ij|²=1. This proves entrywise flatness.

## 8. Exact examples

### H_cross remains inside

For (a,b,c,d)=(-1,-1,-1,i),

\[
g=4,\quad\eta=\chi=\zeta=0,
\quad(s,t,r)=(1,-i,-2+i),
\]
\[
P=Q=4i,\quad\lambda=\mu=i,\quad u=1,\quad\beta=1-2i.
\]

Using x=(1,i,-i), the companions are (-1,-i,1), reproducing the earlier exact representative of the paper's H_cross class.

### Both old imbalance guards can vanish

Take

\[
(a,b,c,d)=(i,-i,-i,i).
\]

Both trace triples are (-1,-1,1), so Delta_h=Delta_v=0. Nevertheless

\[
g=20,\quad\eta=8,\quad\chi=-112,\quad\mathcal R=256,
\quad\zeta=(-14+2i)/5.
\]

Horizontally,

\[
P=4,\quad Q=-4,\quad
\lambda=(-3-4i)/5,\quad \beta=(-2-i)/5,\quad u=-1.
\]

Both cubics are

\[
q(x)=x^3+x^2+x+1=(x+1)(x^2+1).
\]

Choose x=(-1,i,-i) in each direction. Then

\[
B=\begin{pmatrix}1&1&1\\-1&i&-i\\i&-1&-i\end{pmatrix},
\qquad
C=\begin{pmatrix}1&-1&-i\\1&i&i\\1&-i&-1\end{pmatrix},
\]
\[
D=\begin{pmatrix}i&-i&i\\-i&-i&-1\\-i&i&i\end{pmatrix}.
\]

The resulting matrix is

\[
\begin{pmatrix}
1&1&1&1&1&1\\
1&i&-i&-1&i&-i\\
1&-i&i&i&-1&-i\\
1&-1&-i&i&-i&i\\
1&i&i&-i&-i&-1\\
1&-i&-1&-i&i&i
\end{pmatrix},
\]

and its Hadamard identity is checked exactly. This is an extension of the seed chart, not a claim that a previously unknown equivalence class has been found.

### A Möbius 0/0 handled without a limit

For (a,b,c,d)=(-1,-i,1,i), the selected horizontal data have

\[
\zeta=0,\quad s=i,\quad t=-2-i,\quad r=1,
\quad\lambda=1,\quad\beta=-1,
\]
\[
q(x)=(x-i)(x^2-1).
\]

The Möbius expression is (1-x)/(x-1): it equals -1 at x=-1,i and is 0/0 at x=1. The trace rule assigns y(1)=-i. The branch-free polynomial gives all three values at once:

\[
\boxed{y(x)=-1+\tfrac12(x+1)(x-i).}
\]

Both sides and the full matrix are checked exactly by the verifier.

## 9. Global coverage and the separate Tao class

Every original product-regular chart point is covered by the new formula: the scalar formulas agree, and simple cubics make the common companion denominators positive. The preceding exact H_cross example supplies the paper's other non-Tao exception. Thus Theorem 22 of the accepted paper gives coverage of every non-Tao class.

Tao is still separate. The included verifier supplies a new exact check based on Theta, performed over Z[omega]/(omega²+omega+1) on only the 400 positional corners. The 400 positional 3-by-3 blocks have invariant census

\[
\Theta=\omega-1:\ 180,\qquad
\Theta=\omega^2-1:\ 180,\qquad
\Theta=-3:\ 40.
\]

For every positional corner the two side blocks have equal Theta. In 360 corners this value is nonreal, so they fail the required conjugate-invariant matching. In the other 40 corners both sides are order-three Hadamard blocks: their off-diagonal Gram entries vanish, and P=Q=0. Because Theta is invariant under phasing, permutations, and transposition, this positional check covers every ordered/dephased frame.

Consequently the exact global class statement is

\[
\boxed{
\mathcal H_6=
\{[H_\varepsilon(a,b,c,d)]:\text{the stated admissibility conditions hold}\}
\ \dot\cup\ \{[S_6^{(0)}]\}.
}
\]

The construction need not return all possible completions of an exceptional fixed corner; global coverage means that each non-Tao equivalence class has at least one covered presentation.

## 10. Verification and implementation

Files:

- `hadamard6_mobius.py`: standalone high-precision constructor using the branch-free quadratic companion and explicit Gram cofactors.
- `verify_hadamard6_mobius.py`: exact scalar identities, exact boundary examples, the exact 400-corner Tao obstruction, and optional regression against the previous constructor.
- `hadamard6_mobius_verification.txt`: the observed verification output.

The exact checks establish both P/Q norm identities, the determinant/permanent reduction, transpose symmetry, the polynomial companion identity, and the bridge to the previous signed product matching. All three displayed boundary examples pass exact flatness and orthogonality checks.

A reproducible 80-decimal-digit comparison used both sheets at 100 admissible random seeds (200 matrices). Observed maxima were:

- entry-modulus residual: 2.45856706674e-76;
- entrywise orthogonality residual: 1.27187822994e-75;
- entrywise difference from the prior constructor: 6.80800897985e-76.

These are high-precision floating-point checks, not interval certificates. The global soundness argument remains the exact identity extension described above, with the paper's norm theorem as an accepted input.

Run:

```sh
python verify_hadamard6_mobius.py --numerical --count 100
python hadamard6_mobius.py --example hcross
python hadamard6_mobius.py --example zero-imbalance
python hadamard6_mobius.py --example removable
```

The numerical regression option additionally needs the preceding `hadamard6_barycentric.py` in the same directory. The new constructor itself does not depend on that file. Arbitrary four-phase inputs are not automatically admissible. Increasing precision does not turn an inadmissible seed into a valid one; it only helps resolve numerical uncertainty near the chart boundary.

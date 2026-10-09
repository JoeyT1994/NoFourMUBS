# Exact defect identification and conditional analytic smoothness

This note is an independent audit supplement to the conditioning handoff. It
supplies the lower-kernel bound and the analytic continuation needed at the
Fourier point. The root calculation supplies the strict-side determinant
identity and the resulting upper-kernel bound.

The global statements below are **conditional on the reconstruction inputs
MC1–MC4**. The attached `ASSUMPTIONS.md` reports their completion on 1 October,
but the referenced `Proofs/` directory, classification certificates, and atlas
records are absent from this small archive. None of those missing certificates
has been independently replayed in this audit. No atlas computation is used
below.

## 1. The horizontal kernel is exactly the usual dephased defect

Put

\[
\mathcal G=\{g:g_{ij}=r_i+c_j,\ r,c\in\mathbb R^6\},
\qquad
\mathcal D=\{u:u_{0j}=u_{i0}=0\}.
\]

The gauge space has dimension 11, and the horizontal space in the handoff is
\(\mathfrak h=\mathcal G^\perp\), of dimension 25. Write \(L_H\) for the
Jacobian on all 36 real phase coordinates. For a Hadamard matrix,

\[
(L_Hg)_{ab}
=i(r_a-r_b)\sum_c H_{ac}\overline H_{bc}=0.
\]

Consequently \(\mathcal G\subseteq\ker L_H\), and

\[
\ker L_H
=\mathcal G\oplus(\ker L_H\cap\mathfrak h).
\tag{1}
\]

There is also a direct sum with \(\mathcal D\). Its explicit dephasing map is

\[
(Du)_{ij}=u_{ij}-u_{i0}-u_{0j}+u_{00}.
\tag{2}
\]

This map kills exactly \(\mathcal G\), maps onto \(\mathcal D\), and changes
every vector by a gauge vector. Thus it identifies the dephased and horizontal
kernels. The horizontal projection is

\[
(Pu)_{ij}=u_{ij}-\frac16\sum_k u_{ik}
-\frac16\sum_k u_{kj}+\frac1{36}\sum_{k,l}u_{kl}.
\tag{3}
\]

The restrictions \(D:\mathfrak h\to\mathcal D\) and
\(P:\mathcal D\to\mathfrak h\) are inverse linear maps.

For completeness, the original unitary definition leads to exactly the same
number. Let \(U=H/\sqrt6\), let \(f(U)_{ij}=|U_{ij}|^2\), and differentiate
on the 36-dimensional real manifold \(U(6)\). Because every entry of \(U\)
is nonzero, a tangent vector annihilated by \(Df\) has a unique expression
\(V=iU\circ u\) with \(u\) real. The unitary tangent equation
\(VU^*+UV^*=0\) is precisely \(L_Hu=0\), after a harmless scalar factor.
Tadej–Życzkowski's definition therefore gives

\[
\begin{aligned}
d(U)
&=25-\operatorname{rank}Df|_{T_UU(6)}\\
&=\dim\ker Df|_{T_UU(6)}-11\\
&=\dim\ker L_H-11
=\dim\ker J_H.
\end{aligned}
\tag{4}
\]

There are **no extra infinitesimal directions** between the standard dephased
defect and the handoff's horizontal kernel. What may differ is the dimension
of actual nonlinear deformations: a first-order solution need not integrate
without a separate argument. Sections 2–4 provide that argument under the
reconstruction hypotheses.

Primary source for the terminology: W. Tadej and K. Życzkowski, *Defect of a
unitary matrix*, arXiv:math/0702510, Definition 2.1 and the linear system in
Eq. (28), https://arxiv.org/html/math/0702510v2. The projection argument above
is explicit and does not require an additional result from that paper.

## 2. What is imported from the reconstruction

Only the following precise inputs are needed.

1. **Strict-corner coverage, MC1.** Every non-Fourier class has a positional
   corner with \(R>0\).
2. **Side reconstruction and exhaustion, MC2–MC3.** On the open strict seed
   domain, the displayed side formulas are defined, their denominators and
   complex root arguments are nonzero, and they give the two normalized side
   orbits. Cube-root choices give side permutations. At \(d_F=0\), either
   square-root sign gives the same side orbit up to permutation.
3. **Matched flatness and nonmatched converse, MC4.** Both matched pairings
   are flat for every strict seed. Every strict non-Tao completion is one of
   those pairings, up to permutations of the last three rows and columns.

No positive-sheet surjection or opposite-corner transport is needed. Both
matched sheets can be retained at their original seeds. Nor is a global
density or connectedness theorem used.

## 3. Local analytic four-parameter branch at every strict non-Tao point

### Proposition 1

Under the reconstruction inputs in Section 2, let \(H_0\) be a non-Tao
Hadamard matrix with a strict dephased corner \(E(\theta_0)\). There is a
neighborhood \(U\subset\mathbb R^4\) of \(\theta_0\) and a real analytic
map

\[
\theta\longmapsto H(\theta)
\]

of dephased Hadamard matrices such that

\[
H(\theta_0)=H_0,
\qquad
H(\theta)_{\{0,1,2\}\times\{0,1,2\}}=E(\theta).
\tag{5}
\]

In particular, the map is an immersion and
\(\dim\ker J_{H_0}\ge4\).

### Proof

By MC4 choose the matched sheet recovering \(H_0\); keep that sheet throughout
a small neighborhood. The functions

\[
z_\pm=(\chi\pm i\sqrt R)/(2g)
\]

are real analytic there because \(R>0\) and \(g>0\). All subsequent rational
expressions are real analytic wherever their displayed denominators are
nonzero.

The only apparent issue is the global square-root convention
\(d_F\ge0\). At a zero of \(d_F\), that convention may switch signs and
therefore need not define one analytic displayed matrix. This is a
presentation issue; it can be resolved using an analytic identity argument
without assuming an unproved extension of the side identities.

For each side choose a local analytic square root of its nonzero complex
radicand. Denote the resulting real analytic sign-selection function by
\(f_h=d_{F,h}\) or \(f_v=d_{F,v}\). It is real-valued: replacing the
canonical square root by its negative changes \(d_F\) by a sign and does
not affect reality. If its value at \(\theta_0\) is nonzero, choose the
canonical sign and shrink the neighborhood so this sign does not change.
If its value is zero, both signs are permitted at the center and

\[
\rho=(n+d_F)/2=n/2>0
\]

there. For both possible continued signs, \(\rho>0\) persists on a
sufficiently small neighborhood. The remaining divisors and \(\xi\) are
also nonzero at the center, so after shrinking they remain nonzero for the
finitely many candidate sign choices. Each \(\xi\) has a local analytic
cube root.

Take the neighborhood \(U\) to be connected and small enough for all these
conclusions. A nonzero real analytic function has a zero set with empty
interior. Therefore there is a nonempty open subset \(O\subset U\) on
which both non-identically-zero functions \(f_h,f_v\) have fixed signs.
Choose the square-root signs at the center-zero sides so both sign
conventions agree with the canonical constructor on \(O\). Functions that
vanish identically impose no sign condition. These changes are permitted
at the center because their \(d_F\) values there are zero.

Now use these fixed analytic square-root branches and any local analytic
cube roots to form \(B(\theta),C(\theta),D(\theta)\) by the displayed
matched formulas. This gives one real analytic matrix \(H(\theta)\) on
all of \(U\). On \(O\) it agrees, up to allowed side permutations, with
the canonical matched constructor. Hence every entry-modulus equation and
every Hadamard equation vanishes on \(O\).

The quantities

\[
|H_{ij}(\theta)|^2-1,
\qquad
\Re(HH^*-6I)_{ij},
\qquad
\Im(HH^*-6I)_{ij}
\]

are real analytic on connected \(U\). The real analytic identity theorem
therefore makes them vanish throughout \(U\). Thus the continued matrix
is Hadamard everywhere, including across \(d_F=0\).

At the center all selected root choices are allowed ones. MC2–MC3 give
fixed permutations of the last three rows and columns turning the center
matrix into exactly \(H_0\). Apply those fixed permutations to the whole
local family. They preserve its leading corner \(E(\theta)\), proving
(5). Finally, the four corner phases themselves are the four input
coordinates. Their differential is the identity on \(\mathbb R^4\), so
the derivative of the complete phase matrix has rank four. Differentiating
the Hadamard equations places its image in the dephased kernel, which is
isomorphic to the horizontal kernel by (2)–(3). QED.

### An alternative formulation

Once the strict-side determinant identity is established, the analytic
implicit-function theorem directly continues the actual ordered side
blocks as functions of the corner. The argument above has the advantage
that it proves existence of the physical matched branch using only the
canonical reconstruction statements and handles simultaneous sign changes
on the horizontal and vertical sides explicitly.

The supplied `reference/fourier_family_audit/FOLD_LIFT.md`, Sections 2–3,
also explains that the localized side identities allow a fixed square-root
branch whenever \(\rho>0\). The present proof does not require importing
those stronger localized identities from its missing cited file.

## 4. From exact rank to a local manifold, including F6

### Proposition 2: strict points

Combine Proposition 1 with the strict-side upper-bound argument
\(\dim\ker J\le4\). Every strict non-Tao point is a smooth real analytic
point of the **dephased** Hadamard set, of local dimension four.

Here is a proof that avoids treating constant rank on the zero set as a
constant-rank theorem on a whole ambient neighborhood. Use 25 local
dephased phase coordinates and let \(F:\mathbb R^{25}\to\mathbb R^{30}\)
be all row-orthogonality equations. Select 21 component equations whose
differentials are independent at the point. Their common zero set is,
locally, a connected real analytic four-manifold \(M\). Every nearby
physical point belongs to \(M\).

The analytic family in Proposition 1 lies in \(M\) and has the same
dimension. Its inclusion into \(M\) has invertible derivative, so its image
contains an open subset of \(M\). Each of the remaining equations is real
analytic on connected \(M\), and vanishes on that open subset; hence it
vanishes on all of \(M\). Thus \(M\) is exactly the local physical zero
set. In fact the family through the center already shows openness around
that center, but the identity-theorem form is useful at F6.

### Proposition 3: the Fourier point

Assume strict-corner coverage and Proposition 1, and use the exact result
\(\operatorname{rank}J_{F_6}=21\). The dephased Hadamard set is a real
analytic four-manifold in a neighborhood of every dephased Fourier
representative.

**Proof.** Work first at the dephased representative

\[
F_0=\begin{pmatrix}F_3&F_3\\F_3&-F_3\end{pmatrix}\simeq F_6.
\]

Select 21 independent component equations at \(F_0\) and obtain a connected
real analytic four-manifold \(M\) containing all physical points in a small
ambient neighborhood, exactly as in Proposition 2. Consider the explicit
Hadamard curve

\[
F(t)=\begin{pmatrix}F_3&F_3\\F_3D(t)&-F_3D(t)\end{pmatrix},
\qquad D(t)=\operatorname{diag}(1,e^{it},1).
\tag{6}
\]

For \(0<t<\pi/3\), this matrix is equivalent to neither Fourier nor Tao:
the cross ratio from rows 0,3 and columns 0,1 equals \(e^{it}\), whereas
all cross ratios of Fourier are sixth roots of unity and all cross ratios
of Tao are third roots. Cross-ratio multisets are invariant under the
allowed equivalence operations.

For sufficiently small positive \(t\), \(F(t)\) lies in the chosen ambient
neighborhood. MC1 gives it a strict corner. Proposition 1 produces an
embedded real analytic four-dimensional family of physical matrices near
\(F(t)\). Transport its corner frame back to the fixed ordering and
dephasing at \(F_0\). Such fixed permutations followed by dephasing are
real analytic local diffeomorphisms, so the transported family still has
dimension four. Shrink it to remain in the ambient neighborhood.

The transported family lies in \(M\). Its dimension equals that of \(M\),
so its image contains an open subset of \(M\). Every remaining physical
equation therefore vanishes on an open subset of connected \(M\), and the
real analytic identity theorem makes it vanish everywhere on \(M\).
Consequently \(M\) is exactly the physical set near \(F_0\), including at
\(F_0\). Finally transport by equivalence to any other Fourier
representative. QED.

This proves Fourier smoothness from a nearby strict family and the exact
Fourier rank. It does not assume that every infinitesimal Fourier tangent
already integrates, and does not use a formal perturbation series.

### Which space is a four-manifold?

The statements concern the dephased solution set, or a local horizontal
gauge slice. Restoring the 11-dimensional row/column phase orbit gives a
15-dimensional raw Hadamard manifold at every non-Tao point.

The quotient by **all** Hadamard equivalences additionally divides by a
finite permutation action. Stabilizers can be nontrivial. Consequently the
conclusions above supply a finite quotient of a manifold (naturally an
orbifold description), and do not by themselves prove that the full class
space is a smooth manifold. A separate isotropy analysis would be needed
for that stronger wording.

## 5. Density, connectedness, and what the public literature supplies

The semicontinuity argument in the handoff is logically correct if an
all-non-Tao dense family of immersions has been established: all
22-by-22 minors vanish on that dense set and hence on its closure. The
generic existence of one four-dimensional family is insufficient to supply
that density. A global surjective parametrization with nonsingular local
branches does suffice. Proposition 1 proves the necessary local branch
statement directly from the strict reconstruction, so the density premise
can be removed from the rank proof.

The 2026 classification paper proves finite-corner exhaustiveness and
product-regular reach, with the stated exceptions. It is not itself a
proof of the later all-strict-corner MC1 statement. Its local product-cover
geometry should not be used as an implicit global smoothness or
connectedness theorem. Source: M. Cárdenes Wuttig and J. Tindall,
*A Complete Classification of Complex Hadamard Matrices of Order Six*,
arXiv:2608.18053v1, Theorem 6 and Section IV,
https://arxiv.org/html/2608.18053v1.

Historically, Barros e Sá and Bengtsson explicitly distinguished the
first-order Fourier defect four from a proof of Fourier smoothness. Their
Section 7 checked the perturbative consistency conditions numerically
through order 100. That is evidence, not an analytic convergence or
smoothness theorem. Source: *Families of complex Hadamard matrices*,
arXiv:1202.1181v2, Sections 1 and 7,
https://arxiv.org/html/1202.1181v2.

No independent published all-order-six defect theorem or higher-defect
counterexample was located in the primary sources reviewed here. This is a
report of the reviewed sources, not a proof that no such result exists.

Connectedness is unnecessary for every result in this note. The
connectedness sketch in the supplied `MINIMAL_PROOF.md` additionally uses
the all-maxima theorem for the seed invariant and sheet symmetries. Those
proof packets and the finite atlas records are not included here. Their
claims remain independent imported claims in this audit.

## 6. Independent exact support check

Run

```text
python verify_gauge_and_fourier.py
```

The script checks the rational horizontal/dephased projection identities,
the exact Fourier phase-kernel rank 21, and the explicit CRT equivalence
between \(F_0\) and \(F_6\). It exits nonzero on failure. It uses no
floating-point acceptance decision. It does not claim to verify MC1–MC4
or replace the analytic arguments above.

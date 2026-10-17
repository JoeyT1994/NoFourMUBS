# An atlas-free spectral obstruction, and the maximum-principle gap

## Status and result

**PROVED.** Every hypothetical quartet of mutually unbiased bases in dimension six satisfies the following strengthened necessary conditions. Use the unnormalized rank-15 operator-complement projector \(Q\), the symmetric-square frame operator \(S\), and the four triangle invariants \(\tau_{abc}\) defined below. Then

\[
\boxed{\lambda_{\min}(Q^\Gamma)
\le -\frac{\sqrt{10}-3}{6}<-\frac1{37}},                 \tag{1}
\]

\[
\boxed{17\le \operatorname{rank}S\le21},                 \tag{2}
\]

and

\[
\boxed{\mathcal E(\mathcal W)>\frac1{420},\qquad
\sum_{a<b<c}\Re\tau_{abc}>-1+\frac1{5040}.}              \tag{3}
\]

The stronger radical expression behind (3) is

\[
\mathcal E(\mathcal W)
\ge \frac{216-68\sqrt{10}}{414-3\sqrt{10}}
>\frac1{420}.                                          \tag{4}
\]

For the density operator \(Q/15\), (1) becomes
\(\lambda_{\min}((Q/15)^\Gamma)\le-(\sqrt{10}-3)/90<-1/555\).

These statements improve return L-progress's bounds
\(\lambda_{\min}(Q^\Gamma)<-1/120\) and
\(\mathcal E(\mathcal W)>181/864000\). They require only the audited **single-Hadamard dichotomy** and elementary matrix identities. They do not use the atlas, E, exclusion of Tao as an edge, a classification of triples, or an assumption that an edge is Fourier-free.

**CERTIFIED.** `verify.py` checks the finite polynomial identities, all radical/rational comparisons, spectral normalizations, and the four-triangle coefficient count exactly, using the Python standard library. It writes `RECEIPT.json`. The general variational and linear-algebra arguments are proved in this report; the finite verifier is not represented as their formalization in Lean.

**NOT ESTABLISHED.** These inequalities do not prove C, F, F′, or the nonexistence of a quartet. Sections 6–7 identify precisely why the proposed maximum-principle argument has not supplied that missing implication. No rank theorem for unknown triple components is claimed.

## 1. Objects and permitted dependencies

Write \(U_a=(u_{a0},\ldots,u_{a5})\), \(a=0,1,2,3\), for normalized unitary bases. Put

\[
C_{ab}=(U_a^\dagger U_b)^{\circ2},\qquad
\tau_{abc}=\operatorname{tr}(C_{ab}C_{bc}C_{ca}),
\]

where \(\circ2\) means entrywise square. Reversing a triangle orientation conjugates its invariant. Each raw edge
\(H_{ab}=\sqrt6\,U_a^\dagger U_b\) is Hadamard, and
\(C_{ab}=H_{ab}^{\circ2}/6\).

Let \(\Pi_a\) be the Hilbert–Schmidt projection onto the six-dimensional diagonal algebra of basis \(a\), and let \(\Omega\) project onto \(\operatorname{vec}(I)/\sqrt6\). Then

\[
Q=I_{36}-\sum_a\Pi_a+3\Omega
\]

is the orthogonal projection onto their common complement. Its rank is 15. If \(F\) swaps the two tensor factors, define

\[
S=\sum_{a,j}|u_{aj}\otimes u_{aj}\rangle
                 \langle u_{aj}\otimes u_{aj}|.
\]

The return L-progress identities give

\[
Q^\Gamma=I+\tfrac12F-S,\qquad
\operatorname{tr}S=24,\quad\operatorname{tr}S^2=36.       \tag{5}
\]

The support of \(S\) lies in the 21-dimensional symmetric subspace. The Gram matrix \(G\) of its 24 defining vectors has blocks

\[
G_{aa}=I_6,\qquad G_{ab}=C_{ab},\qquad
\|C_{ab}\|_F^2=1.                                      \tag{6}
\]

The nonzero spectra of \(G\) and \(S\) agree. Set \(L=\lambda_{\max}(S)\). Equation (5) gives

\[
\lambda_{\min}(Q^\Gamma)=\tfrac32-L.                   \tag{7}
\]

The single-Hadamard dichotomy is the precisely scoped, independently replayed input in `L_global_F_progress/triple_algebra/SINGLE_H_AUDIT.md`. For every raw order-six Hadamard \(H\), either

\[
\gamma(H)=0,
\qquad\text{or}\qquad H^{\circ2}\text{ is Hadamard}.    \tag{8}
\]

Here \(\gamma\) is the nonnegative balanced-character energy in that input. Its elementary Schur-power identity is

\[
\gamma(H)=144+\frac{T_3(H)}9-\frac{T_2(H)}2,
\qquad
T_m(H)=\operatorname{tr}
 \big[((H^{\circ m})^\dagger H^{\circ m})^2\big].        \tag{9}
\]

Every \(H^{\circ3}\) has six columns of squared norm six, so \(T_3\ge216\). Thus

\[
\gamma(H)=0\quad\Longrightarrow\quad T_2(H)\ge336.      \tag{10}
\]

Equations (5)–(10), and the commutator identity in §5, are the only mathematical inputs imported from L-progress. Their source files and hashes are recorded in `SOURCE_DEPENDENCIES.json`. Hashing identifies the imported statements; it is not a replay of their original certificates.

## 2. A sharp capped-moment lemma — PROVED

**Lemma.** If \(x_1,\ldots,x_6\ge0\), \(\sum_i x_i=1\), and
\(\sum_i x_i^2\ge7/27\), then

\[
\max_i x_i\ge\frac5{18}.                               \tag{11}
\]

If equality holds in (11), the multiset is exactly

\[
\left\{\frac5{18},\frac5{18},\frac5{18},\frac16,0,0\right\},
\qquad \sum_i x_i^2=\frac7{27}.                         \tag{12}
\]

**Proof.** Set \(m=\max_i x_i\). If \(m\le1/4\), then
\(\sum x_i^2\le m\sum x_i\le1/4<7/27\), a contradiction.

For \(1/4<m<1/3\), the largest possible square sum under
\(0\le x_i\le m\), \(\sum x_i=1\), is

\[
3m^2+(1-3m)^2=12m^2-6m+1.                              \tag{13}
\]

To prove this extremum, take two coordinates strictly between 0 and \(m\), order them \(x\ge y\), and transfer
\(d=\min(m-x,y)>0\) from \(y\) to \(x\). The square sum increases by
\(2d(x-y)+2d^2>0\), and at least one coordinate reaches 0 or \(m\). Repetition leaves at most one coordinate between the endpoints. The sum-one constraint then forces three coordinates equal to \(m\), one equal to \(1-3m\), and the rest zero. This proves (13), including its equality condition. The endpoint \(m=1/4\) agrees with the same formula.

The right side of (13) is strictly increasing for \(m>1/4\), and its value at \(m=5/18\) is \(7/27\). Therefore \(m<5/18\) is impossible. At \(m=5/18\), both inequalities must be equalities, yielding (12). ∎

The scalar lemma is sharp. Its equality vector is not asserted to be the singular-value data of an actual Hadamard or of a quartet edge.

For comparison, using only \(\sum x_i^2\le m\sum x_i\) gives the weaker \(m\ge7/27\) used in return L-progress. The improvement uses the number of entries that can attain a prescribed cap.

## 3. Both dichotomy branches force a larger symmetric-square eigenvalue — PROVED

Fix any one quartet edge and put \(C=H^{\circ2}/6\). Write \(t=\|C\|_{\rm op}\). The 12-by-12 two-basis principal Gram matrix is

\[
M=\begin{pmatrix}I_6&C\\C^\dagger&I_6\end{pmatrix},
\]

whose eigenvalues are \(1\pm\sigma_i(C)\). Consequently

\[
L\ge1+t.                                               \tag{14}
\]

### Balanced-character branch

Let \(x_i=\sigma_i(C)^2\). Equations (6) and (10) give

\[
\sum_i x_i=1,\qquad
\sum_i x_i^2=\frac{T_2(H)}{6^4}\ge\frac7{27}.
\]

The capped-moment lemma yields

\[
t\ge\sqrt{\frac5{18}}=\frac{\sqrt{10}}6,
\qquad L\ge1+\frac{\sqrt{10}}6.                        \tag{15}
\]

Equality in the first bound can occur only if (12) is the squared-singular-value spectrum, \(T_2=336\), and \(H^{\circ3}\) is Hadamard. This is a necessary equality condition; existence or exclusion of such an edge is not claimed.

### Entrywise-square-Hadamard branch

Here every singular value of \(C\) is \(1/\sqrt6\). Put
\(a=1+1/\sqrt6\). Every eigenvalue of \(M\) is at most \(a\). If the 24 eigenvalues of \(G\) are decreasingly ordered, interlacing gives
\(\lambda_{13}(G)\le a\). They are nonnegative, have sum 24 and square sum 36, and are all at most \(L\). Therefore

\[
36\le L\sum_{i\le12}\lambda_i+a\sum_{i>12}\lambda_i
\le24a+12L(L-a).
\]

The final step uses \(L\ge a\) and \(\sum_{i\le12}\lambda_i\le12L\). Hence

\[
f(L):=L^2-aL+2a-3
     =L^2-L-1+\frac{2-L}{\sqrt6}\ge0.                  \tag{16}
\]

This polynomial is strictly increasing for \(L\ge a\). At the rational value \(55/36\),

\[
f(55/36)=-\frac{251}{1296}+\frac{17}{36\sqrt6}<0,
\]

because \(612^2<6\cdot251^2\). Consequently

\[
L>\frac{55}{36}>1+\frac{\sqrt{10}}6;                   \tag{17}
\]

the second strict inequality is equivalent to \(19>6\sqrt{10}\), or \(361>360\).

Both branches establish (15). Combining with (7) proves the first inequality in (1). The rational comparison with \(-1/37\) follows from
\(37\sqrt{10}>117\), whose square comparison is \(13690>13689\).

This argument deliberately retains both branches of (8). It needs no classification of the second branch and no theorem saying that Tao cannot extend to a triple.

## 4. A rank obstruction — PROVED

Cauchy–Schwarz on the nonzero eigenvalues of \(S\) gives

\[
24^2\le(\operatorname{rank}S)\,36,
\]

so \(\operatorname{rank}S\ge16\). If the rank were 16, equality in Cauchy–Schwarz would force all 16 positive eigenvalues to equal \(24/16=3/2\). This contradicts (15), since \(1+\sqrt{10}/6>3/2\). Therefore the rank is at least 17. Symmetric support gives the upper bound 21, proving (2).

Equivalently, the 24 squared basis vectors span at least 17 dimensions and have at most seven independent linear relations. The common kernel of their four symmetric-square diagonal subspaces has dimension at most four inside \(\operatorname{Sym}^2\mathbb C^6\).

## 5. Weighted variance gives the stronger four-face constraint — PROVED

Let \(\mathcal W\) be the real Hermitian operator complement, of dimension 15, and let \(E_1,\ldots,E_{15}\) be any Hilbert–Schmidt orthonormal basis of it. Define

\[
\mathcal E(\mathcal W)=
\sum_{\alpha,\beta,\delta}
\left|\operatorname{tr}(i[E_\alpha,E_\beta]E_\delta)\right|^2.
\]

Return L-progress proves

\[
\mathcal E(\mathcal W)
=12\left(1+\sum_{a<b<c}\Re\tau_{abc}\right)
=2\operatorname{tr}\left[S\left(S-\tfrac32I\right)^2\right]. \tag{18}
\]

The coefficient 12 is consistent with the direct cubic expansion
\(\operatorname{tr}S^3=60+6\sum\Re\tau_{abc}\): the all-equal basis labels contribute 24, exactly two equal labels contribute 36, and each triangle contributes three cyclic terms in each orientation.

Choose one largest eigenvalue \(L\) and write \(\lambda_i\) for all the others, including zeros. From (5),

\[
\sum_i\lambda_i=24-L,
\qquad
\sum_i\lambda_i(\lambda_i-\tfrac32)
   =-L(L-\tfrac32).
\]

Weighted Cauchy–Schwarz therefore gives

\[
\sum_i\lambda_i(\lambda_i-\tfrac32)^2
\ge\frac{L^2(L-\tfrac32)^2}{24-L}.
\]

Adding the contribution from \(L\) and applying (18),

\[
\mathcal E(\mathcal W)
\ge\frac{48L(L-\tfrac32)^2}{24-L}.                    \tag{19}
\]

The denominator is positive; indeed \(S\) is a sum of four orthogonal projections, so \(L\le4\). The right side is strictly increasing for \(3/2<L<24\): its three positive factors \(L\), \((L-3/2)^2\), and \(1/(24-L)\) are increasing there.

Insert \(L_0=1+\sqrt{10}/6\) from (15). Exact simplification gives

\[
\frac{48L_0(L_0-\tfrac32)^2}{24-L_0}
=\frac{216-68\sqrt{10}}{414-3\sqrt{10}}.
\]

This exceeds \(1/420\). After clearing the positive denominator, the assertion reduces to
\(10034>3173\sqrt{10}\), and

\[
10034^2-10\cdot3173^2=1866>0.
\]

Equations (18)–(19) prove (3)–(4). The improvement over keeping only the largest eigenvalue is essential: the trace identity forces the other eigenvalues to compensate its positive signed deviation from \(3/2\), and weighted Cauchy–Schwarz charges for that compensation.

These scalar constraints are still consistent. For example the abstract spectrum \((4,1,\ldots,1)\), with twenty copies of 1, satisfies \(\operatorname{tr}S=24\), \(\operatorname{tr}S^2=36\), rank 21, and \(2\operatorname{tr}[S(S-3I/2)^2]=60\). It is not asserted to arise from a quartet. Thus (1)–(4) cannot by themselves be presented as a no-quartet proof.

## 6. Audit of the proposed maximum principle

### Compactness is usable; the missing differential implication is not automatic

Suppose \(U\) is a compact connected component of the full triple variety containing no Fourier edge. Every corner minor is nonzero on \(U\), and their finite product has a strictly positive minimum. Any continuous corner functional, including the largest corner \(R\), attains a maximum on \(U\).

This gives a **constrained** maximum. The Step-1 census in `PROOF_v2.md` classifies positive local maxima of \(R\) on the full four-dimensional seed torus. To invoke that census for a triple component, one must show that enough seed directions lift to actual deformations of the triple. Neither a positive dimension bound nor finite fibres of the triple-to-edge projection supplies this implication.

An exact elementary model shows the issue even on a smooth two-dimensional component. On \(\mathbb T^4\), set

\[
r(\theta)=5+\cos\theta_1+\cos\theta_2
                 +\cos\theta_3+\cos\theta_4,
\]

and restrict to the compact torus
\(U_0=\{\theta_3=\theta_4=\pi/2\}\). The point
\((0,0,\pi/2,\pi/2)\) maximizes \(r|_{U_0}\), but its ambient phase gradient is
\((0,0,-1,-1)\), not zero. Thus dimension two is insufficient even with complete smoothness and compactness.

In the actual problem, a maximum could satisfy only
\(dR\circ d\pi=0\), where \(\pi\) is the projection of its local triple branch to the chosen four seed coordinates. This says that \(\nabla R\) annihilates the image of \(d\pi\); it does not say \(\nabla R=0\).

### A Jacobian kernel is not an integrable deformation space at a singular point

The real algebraic equation \(x^2+y^2=0\) has only one real solution, but its Jacobian at that point is zero, with two-dimensional kernel. Thus a lower bound on the kernel dimension of the 96-by-55 residual Jacobian does not by itself establish a lower bound on the dimension of actual nearby triples. Conversely, finite fibres do not imply injectivity of the derivative: \(t\mapsto t^2\) is finite and ramifies at zero.

The completed component's rank-53/51 analysis overcomes these issues there by exhibiting full local solution branches, including higher-order control. Those conclusions do not transfer to a disjoint unknown component without further work.

### A naive Fritz–John system is vacuous for these 96 residuals

Write the residuals as \(F=(F_1,\ldots,F_{96})\) in 55 local phase coordinates and \(J=DF\). A tempting singularity-tolerant replacement for Lagrange multipliers is

\[
\lambda_0\nabla p=J^{\mathsf T}\lambda,
\qquad \lambda_0^2+\|\lambda\|^2=1,
\]

where \(p\) is the minor product. If the abnormal case \(\lambda_0=0\) is admitted, this system has a multiplier at **every** triple: the linear map \(J^{\mathsf T}:\mathbb R^{96}\to\mathbb R^{55}\) has kernel dimension at least 41. Take a nonzero kernel vector and normalize it.

Consequently an elimination that simply adds these Fritz–John equations to all 96 residuals has not reduced the feasible set at all. A useful critical-point certificate must remove the redundancy and treat singular strata, or use a separately justified generic perturbation method. Merely requiring a nonzero multiplier does not fix the problem.

### What a sufficient local calculation would have to show

On a branch where the raw residual Jacobian has rank equal to its actual codimension, the tangent space is \(\ker J\). A constrained stationary point of \(p\) then satisfies

\[
\nabla p\in\operatorname{rowspan}J,
\qquad
\operatorname{rank}\begin{pmatrix}J\\\nabla p^{\mathsf T}\end{pmatrix}
=\operatorname{rank}J.                                 \tag{20}
\]

An exact exclusion of all positive-minor solutions of (20), together with a separate complete treatment of branches where this regularity fails, would prove F directly: a positive global maximum of \(p\) on the compact full triple space would have to lie in one of those cases. No such exclusion is supplied here. In particular, adding rank minors without accounting for lower-rank strata is not a completed certificate.

The signed corner identities from return K remain valid on orthogonal strips. Away from all-criticality they have nonzero right sides of uncontrolled sign. At a constrained maximum no established identity makes those right sides vanish. They therefore cannot currently replace the missing implication in (20).

## 7. Indexing and scope corrections

A six-by-six matrix has \(\binom63^2=400\) three-by-three submatrices. A product over only twenty column triples for one fixed row triple does not, without a further proved reduction, detect every singular minor. One may use all 400 minors per edge or the separately certified Fourier predicate supplied by return L-progress.

For a triple, an unambiguous nonnegative saturation polynomial is

\[
p(H,K)=\prod_{T\in\{H,K,H^\dagger K/\sqrt6\}}
          \prod_{\substack{A,B\subset\{0,\ldots,5\}\\|A|=|B|=3}}
                     |\det T[A,B]|^2.                  \tag{21}
\]

On the triple variety, \(p>0\) means that all three edges are Fourier-free, by the supplied Fourier-minor routing theorem. It is not necessary to distinguish Cases B and C to say that a counterexample to F would give a positive global maximum of (21); compactness of the whole triple space already gives that maximum. The distinction becomes relevant when using a functional such as \(R\) that does not vanish on the Fourier boundary.

**Remaining mathematical target.** The strengthened conditions (1)–(4) can be imposed in any direct quartet elimination. To prove F′ they still need an incompatible inequality or an exact realizability obstruction for the four diagonal algebras. To prove C by a maximum principle, an ascent or stationarity-exclusion theorem for the actual unknown triple branches is still needed. Neither target is established in this return.

## Reproduction

Run `python3 verify.py` in this directory. No third-party Python packages are required. Optimized Python execution is rejected. The exact finite receipt is reproducible; its source hash identifies the verifier that generated it.

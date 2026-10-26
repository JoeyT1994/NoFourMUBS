# Independent audit: finite isotropy, coordinate extraction and path coverage

## 1. Scope and dependency audit

**PROVED conditional on the supplied local-germ theorem.** The proof in `U_REPORT.md` §4.3 is logically sufficient: the constructed full Hadamard chart has rank four, lies in the analytic four-manifold cut out by 21 independent orthogonality equations, and therefore fills an open neighbourhood of that manifold. No defect-only integrability inference is made there. The substantive input remains the matched-flatness theorem used to construct the full Hadamard chart. Its referenced certificates are not included in W and have not been independently replayed here.

**PROVED.** The graph estimate in `SEED_ATLAS_SPEC.md` §10.2 proves uniqueness of a normal lift. It does not alone prove that a lift exists over every tangent coordinate. A projected-equation contraction plus analytic continuation of U's germ supplies existence; these are distinct assertions.

**NOT ESTABLISHED by the supplied reports alone.** The 72-fold isotropy description in U is a germ statement. Applying it on a fixed radius requires excluding nonstabilizing permutation pairs. Section 2 provides that missing finite-radius argument.

## 2. Only the 72 Fourier stabilizers act inside radius 13/50

Let `F_ij=exp(pi*i*i*j/3)` with row/column indices 0,...,5. Let

`H=F o exp(i x)` and `K=F o exp(i z)`,

where x and z are horizontal real phase matrices and both Frobenius norms are at most R. Here the first `i` in the exponential denotes the imaginary unit; equivalently F_ij=q^(ij), q=exp(pi i/3).

Suppose H and K are equivalent by row/column phases and row/column permutations r,c. Every cross ratio then gives

`exp(pi i [ij-(r_i-r_0)(c_j-c_0)]/3)=exp(i e_ij)`

where e_ij is the difference of one four-entry rectangle functional of x and one rectangle functional of z (after permutation). Each rectangle functional has Euclidean norm 2. Consequently

`|e_ij| <= 2||x||+2||z|| <=4R`.

If `4R<pi/3`, the only sixth root of unity whose argument has this bound is 1. Thus

`(r_i-r_0)(c_j-c_0)=ij mod 6`

for every i,j. Setting i=j=1 makes both first differences units. The only units mod 6 are 1 and -1. Setting respectively i=1 and j=1 then yields

`r_i=u i+b, c_j=u j+d mod 6`,

with u=±1 and b,d mod 6. Exactly 72 permutation pairs result.

Conversely all those pairs stabilize F after dephasing. On horizontal perturbations their induced action is simply the corresponding row/column permutation, an orthogonal linear map. Since each rectangle error has absolute value below pi/3, its equality modulo 2pi is an equality over the reals. Therefore the horizontal perturbations are related by that action, with no extra winding ambiguity.

**PROVED, with the rational radius comparison CERTIFIED.** For `R=13/50`, `4R=26/25<pi/3`. Thus every equivalence between two representatives in this entire radius ball is one of the 72 stabilizer equivalences. This statement does not assert that a chosen parameter domain is invariant under all 72 actions. It says that all identifications within that domain, provided its image lies in the radius ball, arise from those actions.

## 3. Extraction map and useful derivative constants

Let x be any horizontal phase matrix with `||x||_F <=13/50`; it need not be Hadamard. The three seed phases are extracted by the rectangle functionals

`u1=x11-x10-x01+x00`,

`u2=x12-x10-x02+x00`,

`u3=x21-x20-x01+x00`.

Let B be the 3x3 side with rows 0,1,2 and columns 3,4,5 of `F o exp(i x)`. Set

`tau(x)=-Im Psi(B)/12`, `y(x)=24 tau(x)`.

Gauge invariance of Psi makes this exactly U's signed-root extraction in either the horizontal or the dephased representative. Define

`E_sc(x)=(u1,u2,u3,tau)`, `E_raw(x)=(u1,u2,u3,y)`.

### Certified constants

**CERTIFIED**, replayed by `python -I verify_extraction_bounds.py`:

- `||DE_sc||_2 < 11/4`;
- `||DE_raw||_2 < 59`;
- `||D^2 E_sc||_(2,2->2) < 8`;
- `||D^2 E_raw||_(2,2->2) < 192`.

Hence any framed analytic U chart Phi taking values inside this phase ball satisfies

`E_sc o Phi_sc=id`, hence `sigma_min(D Phi_sc)>=4/11`,

and

`E_raw o Phi_raw=id`, hence `sigma_min(D Phi_raw)>=1/59`.

The output metric here is the horizontal Frobenius norm of phase derivatives. These are conditioning bounds for the smooth framed chart. An ordinary derivative of the map into the singular metric quotient at isotropy points is not being asserted.

### Global bounds without any phase-radius assumption

**PROVED, with rational comparisons CERTIFIED.** Cauchy-Schwarz and the same coefficient covariance give `||D Im Psi||^2 <=108*162=17496` on the entire phase torus. Thus `||Dy||<265` and `||D tau||<12`. Together with the disjoint-support seed gradients this gives global framed-chart bounds `sigma_min(D Phi_raw)>=1/265` and `sigma_min(D Phi_sc)>=1/12`, without requiring that the whole chart image lie in radius 13/50. The sharper localized bounds above remain useful when the radius has been certified.

### Derivation behind the replay

Expand Psi as the universal 55-term Laurent polynomial

`Psi(z)=sum_alpha c_alpha z^alpha`.

The script regenerates it from permanent times determinant squared, and verifies exactly

`sum |c|=108`, `max ||alpha||^2=18`,

`sum |c| alpha alpha^T=162(P3 tensor P3)`.

Each exponent has zero row and column sums. By Cauchy-Schwarz in two factors and the maximum exponent norm in the remaining factors, this gives the uniform scalar multilinear bound

`||D^m tau|| <= (27/2) 18^((m-2)/2)` for m>=2.

In particular `||D^5 tau|| <=729 sqrt(2)`.

At the Fourier base, exact rational Gram-matrix and positive-definiteness checks give

`||D tau(0)||=3/2`,

`||D^2 tau(0)||<13/12`,

`||D^3 tau(0)||<12`,

`||D^4 tau(0)||<17`.

The third- and fourth-derivative bounds use the operator norms of the tensors flattened as 9x81 and 9x729 matrices; these bound their multilinear norms. Taylor expansion with `sqrt(2)<10/7` gives, for `r=||x||`,

`||D tau(x)|| <= 3/2+(13/12)r+6r^2+(17/6)r^3+44r^4`,

`||D^2 tau(x)|| <=13/12+12r+(17/2)r^2+174r^3`.

At `r=13/50`, the right sides are respectively

`45715027/18750000 <59/24` and `2938559/375000 <8`.

The three seed rectangle gradients have Gram matrix

`[[4,2,2],[2,4,1],[2,1,4]]`,

whose largest eigenvalue is below `(11/4)^2`. They are supported in the leading 3x3 corner, while D tau is supported in the complementary side. These supports are disjoint, and all the gradients are already horizontal. Their Gram matrix is therefore block diagonal. It follows that the full scaled extraction norm is the maximum of the seed bound and the tau-gradient bound. This proves the stated bounds without an unnecessary square-sum loss.

## 4. Analytic path lemma for coverage in the fixed U coordinates

**PROVED.** Suppose the following have been established:

1. An analytic Hadamard graph `K(eta)` exists on an open connected tangent ball B and agrees with U's germ at eta=0.
2. The fixed U chart `H_U(p)` is analytic on an open neighbourhood of a certified parameter region D.
3. For every target tangent vector eta in the desired range and every `0<=t<=1`, the extracted parameter `p(t)=E_raw(K(t eta))` belongs to D.

Then `H_U(p(t))` and `K(t eta)` are two analytic matrix-valued functions of t. They agree on a nonempty interval near zero by U's local-germ theorem and coordinate extraction. The one-variable real-analytic identity theorem gives their equality throughout the connected interval containing [0,1]. In particular `H_U(E_raw(K(eta)))=K(eta)`.

Thus coverage follows from a uniform enclosure of the entire radial path in parameter space. It does not require a separate quantitative inverse-function bound for the extraction map on the entire tangent ball. Framed injectivity of U itself is automatic from exact parameter extraction. The finite-radius isotropy result in §2 controls equivalence-class identifications.

The strict margins in a contraction certificate ensure analyticity on an open neighbourhood even at boundary parameter values, as needed for this argument. If the entire path is enclosed with strict interior margins, this qualification is immediate.

## 5. A diagnostic for attempted seed-box monotonicity

**NUMERICAL; not used in any theorem or certificate.** A naive independent seed box with half-widths `(0.399,0.315,0.315,0.11)` is too large for a uniform positive R_theta4 certificate: the corner `(0.399,-0.315,-0.315,0.11)` gives approximately `R_theta4=-38.4066`. The phase seed constraints strongly correlate these four coordinates; that corner alone requires horizontal norm at least approximately 0.582. This only warns against discarding the correlations. It is not an obstruction to the desired radius-0.13 or radius-0.2 chart.

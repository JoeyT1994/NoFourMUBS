# Explicit gluing between the crossing cores and regular family tubes

All bounds in this note are **PROVED** consequences of the explicit complementary-circulant construction in the supplied checkpoint. No uploaded Python file was executed. Applying a crossing classification radius remains conditional on the corresponding crossing lemma and certified constants.

## 1. The result and the metric convention

Put g=|gamma|. Let C0 be the set of 36 canonical lifts with a0=b0=1 and gamma=0. The pairs (a,b) in C0 are the six zero-correlation normalized triples for a, independently paired with the six for b.

For 0≤g≤1/2, a constructed family point has a corresponding crossing point p* in C0 with the following bounds:

| Metric/alignment | Bound on distance to the corresponding crossing |
|---|---:|
| Horizontal quotient norm in the 72 phase entries | at most sqrt(261) g / 4, hence at most 4.04 g |
| Natural canonical labeling, shared 55-coordinate dephasing | at most sqrt(387/2) g, hence at most 14 g |
| Arbitrary common row and independent column monomial relabelings, including H↔K, followed by shared dephasing | at most sqrt(2349/2) g, hence at most 35 g |
| A change of identity anchor, followed by the horizontal quotient | at most sqrt(1566) g / 4, hence at most 10 g |
| Additionally allowing a change of the identity anchor before the preceding dephasing | at most sqrt(7047) g, hence at most 84 g |

The horizontal quotient is by common ambient row phases and independent column phases, with norm inherited from R72. Its dimension is 55, but its Euclidean norm is not the same as the coordinate norm obtained by deleting the constrained entries after dephasing. The first bound is invariant under common row and independent column permutations. The last bound is needed only if a comparison insists on returning to a different original anchor.

Consequently, if crossing neighborhoods of radius Rc cover every appropriate labeled crossing in the chosen metric, then every family point outside their union satisfies

    g ≥ min(1/2, Rc / C),

where C is the corresponding constant from the table. For the small radii under discussion Rc/C<1/2, so the lower bound is simply Rc/C. The generic regular tube radius g/540 is therefore bounded below by Rc/(540 C) on the remaining family.

The union qualification is essential. Distance from one arbitrarily labeled crossing does not bound g below: another labeled copy can have g=0. Either cover all 36 canonical endpoints and their relevant discrete images, or supply the exact equivalence taking the selected endpoint to a crossing whose neighborhood has been certified. The old checkpoint states that all 36 are equivalent by shared row monomials, independent column monomials, and sometimes H↔K; those particular equivalence certificates were not included in the new archive.

## 2. A linear distance bound from the correlation cubic

The case g=0 is immediate: the point is itself a crossing. For the derivation
below assume 0<g≤1/2, so the strict scalar comparisons proportional to g apply.
The weak distance bounds in the table include both cases.

For a=(1,a1,a2), its ratios

    d0=a1, d1=a2/a1, d2=1/a2

have product 1, sum gamma, and solve

    d^3 - gamma d^2 + conjugate(gamma) d - 1 = 0.

For each ratio choose its nearest cube root zeta_j and write d_j=zeta_j exp(i delta_j), with |delta_j|≤pi/3. Since |d_j|=1,

    |d_j^3-1|≤2g,
    |delta_j|≤(2/3) arcsin(g)≤(2pi/9)g<3g/4,  for g≤1/2.

The middle inequality follows by bounding the convex function arcsin on [0,1/2] by its endpoint secant.

The selected roots must be distinct. Otherwise their sum has modulus at least sqrt(3), whereas

    |sum zeta_j|≤g+sum |d_j-zeta_j|≤13g/4≤13/8<sqrt(3).

Thus their product is 1. The product condition on d gives sum delta_j in 2pi Z, and the bound |sum delta_j|≤9/8 forces sum delta_j=0. Set

    a*=(1,zeta_0,zeta_0 zeta_1).

This is a normalized zero-correlation triple. The phase displacements of a1,a2 from a* are delta_0 and −delta_2, both bounded by 3g/4. Repeat the argument for b, whose correlation is −gamma. This constructively selects one of the 36 endpoints.

## 3. Propagation through the canonical lift

Let alpha,beta be the checkpoint's Fourier coefficients, with normalization 1/sqrt(6), and let alpha*,beta* be their endpoint values. At the endpoint all six amplitudes equal 1/sqrt(2). Parseval and the preceding phase bounds give

    ||alpha-alpha*||₂≤3g/4,  ||beta-beta*||₂≤3g/4.

Componentwise,

    |alpha_t-alpha*_t|, |beta_t-beta*_t|≤sqrt(6)g/4.

The relative perturbation to an endpoint coefficient is therefore at most sqrt(3)g/2≤sqrt(3)/4<1/2. Choose the continuous argument differences A_t=arg(alpha_t/alpha*_t) and B_t=arg(beta_t/beta*_t). The elementary disk-angle estimate and the secant bound for arcsin give

    |A_t|≤arcsin(sqrt(2)|alpha_t-alpha*_t|)
          ≤(pi sqrt(2)/3)|alpha_t-alpha*_t|
          <(3/2)|alpha_t-alpha*_t|,

and similarly for B. Therefore

    ||A||₂²+||B||₂²≤81g²/32.

Write psi_t=atan(|beta_t|/|alpha_t|)−pi/4. Because

    |alpha_t|²=1/2+Re(gamma omega^t)/3,

and the derivative of arccos(sqrt(1/2+s)) has modulus 1/sqrt(1−4s²), the condition g≤1/2 gives

    |psi_t|≤|Re(gamma omega^t)|/(2sqrt(2)),
    ||psi||₂²≤3g²/16,
    psi_0²≤g²/8.

The phase displacements in the canonical unit-entry H,K lift are particularly simple:

    X_(ta,s0)=0,
    X_(ta,s1)=A_t+B_t,
    Y_(ta,s0)=A_t+(-1)^a psi_t,
    Y_(ta,s1)=B_t+(-1)^a psi_t.

This uses exactly the checkpoint lift x=i phase(alpha) phase(beta), y=−i conjugate(phase(alpha)) phase(beta), u=phase(alpha) exp(i atan(|beta|/|alpha|)), v=phase(alpha) exp(−i atan(|beta|/|alpha|)).

Subtract the common row phase (A_t+B_t+(-1)^a psi_t)/2 from both matrices. The squared norm of the resulting 72-entry displacement is

    6 (||A||₂²+||B||₂²+||psi||₂²)≤261g²/16.

Orthogonal projection to the horizontal quotient can only reduce this norm. This proves the first table entry.

## 4. Dephasing constants and discrete relabelings

Combine X,Y into a 6-by-12 phase array. Shared dephasing is exactly subtraction of the reference row and reference column, followed by restoration of the reference intersection:

    Z'_(r,c)=Z_(r,c)−Z_(r,0)−Z_(0,c)+Z_(0,0),

where the reference column is H's first column and the remaining 11 columns comprise five H columns and six K columns. Its 55-by-72 linear matrix D obeys, after ordering output entries by rows,

    D D* = (I5+J5) tensor (I11+J11).

Hence ||D||₂=sqrt(72)=6sqrt(2) exactly. A common row permutation and independent column permutations act orthogonally on the 72 phase entries and preserve the gauge subspace. The same holds for H↔K. Therefore the first bound multiplied by sqrt(72) gives

    ||dephased displacement||₂²≤2349g²/2<35²g².

In the natural canonical labeling one can do better. The shared dephased phase arrays are

    X'_(ta,s1)=(A_t+B_t)−(A_0+B_0),
    Y'_(ta,s0)=(A_t−A_0)+(-1)^a psi_t−psi_0,
    Y'_(ta,s1)=(B_t−B_0)+(-1)^a psi_t−psi_0.

With T=I3−1 e0*, ||T||₂=sqrt(3), their squared norm equals

    6 [ ||T(A+B)||² + ||TA−psi_0 1||²
        + ||TB−psi_0 1||² + 2||psi||² ].

Using ||u+v||²≤2||u||²+2||v||² bounds this by

    72(||A||²+||B||²)+72 psi_0²+12||psi||²
    ≤(387/2)g²<14²g².

This smaller constant is specific to the canonical row/column arrangement and should not be transported through dephasing as though dephasing were an isometry.

## 5. Optional anchor change

For two exact triples with full phase displacements X,Y, let a=||X||F and b=||Y||F. Reanchoring at H replaces the two unit-entry non-anchor matrices by H* and S=H*K/sqrt(6). Exact Hadamard unitarity gives

    ||S'-S||F≤||H'-H||F+||K'-K||F≤a+b.

For unit complex entries, the principal angular difference is at most pi/2 times the chord difference. Thus a full phase displacement after reanchoring has squared norm at most

    a²+(pi²/4)(a+b)²
    ≤(1+pi²/2)(a²+b²)<6(a²+b²).

Any permutation of the three anchors needs at most one such reanchoring and one non-anchor swap. In the horizontal metric this gives sqrt(1566)g/4<10g. Combining also ||D||=sqrt(72) yields sqrt(7047)g<84g after dephasing. This argument applies to exact triples; an arbitrary off-solution interval enclosure requires direct interval propagation or an independent nonunitary matrix norm bound.

## 6. The supplied crossing product domain provides a larger zero-set ball than its inscribed ball

The crossing lemma's domain is ||k||≤rho, ||y||≤eta, not the full ambient R-ball. However a physical zero x=k+y with ||x||≤r<R automatically satisfies

    ||y||≤h r²/[2(1−d)],

because H(x)=AF(x)=0, DH(0)k=0, and ||AJ y||≥(1−d)||y||. This is just Taylor's theorem for H at zero. Therefore every physical zero in the ball of radius

    Rc = min(rho, sqrt(2(1−d) eta/h))

is in the product domain, provided Rc<R. Strict inequalities may be used at boundaries.

For the supplied parameters, h=h2+h3 R≈2.518 and

    h rho²/[2(1−d)]≈8.3e−6 < eta=3/8192.

Thus the usable zero-set crossing radius is Rc=rho=21/8192≈0.00256348, rather than only the inscribed radius eta. The larger ambient derivative radius R=3/1024 must not automatically be called a classified ball.

In the horizontal metric, the explicit gluing lower bound is consequently

    g ≥ 4 rho/sqrt(261) = 21/(2048 sqrt(261)) ≈ 0.0006347

on canonical family points outside all crossing cores aligned by same-anchor monomials and non-anchor swaps. If alignment additionally requires reanchoring, use the weaker bound g≥4rho/sqrt(1566)>rho/10. These conclusions depend on validating the crossing lemma's inequalities and covering each relevant crossing center. They do not prove global completeness of the known family.

## 7. Practical use for a finite tube cover

The independently audited enlarged crossing theorem in `larger_crossing.md` raises the full horizontal classification radius to Rc=1/50. With that theorem's stated receipt dependencies, the same gluing formulas immediately give

    same-anchor horizontal matching: g_min = 2/(25 sqrt(261)) > 0.00495,
    horizontal matching including reanchoring: g_min = 2/(25 sqrt(1566)) > 0.002.

The simpler dephased-coordinate bounds give g_min≥1/700 in the natural canonical chart, g_min≥1/1750 after arbitrary same-anchor monomial alignment, and g_min≥1/4200 if additionally returning to another original anchor. These are deliberately conservative floors; direct endpoint distances can be substantially better.

1. For g≤1/2, assign each of the six ratio roots to its nearest cube root; the proof above guarantees an unambiguous distinct assignment and a corresponding endpoint pair.
2. Retain the endpoint's exact row/column correspondence and the common phase gauge. If using a single standard crossing certificate, apply its exact endpoint equivalence to the whole enclosure.
3. Test the actual projected kernel and normal enclosures against rho,eta. The distance bound here is a universal fallback; correlated cell enclosures can be much tighter.
4. On the uncovered portion of the known parameter family, impose the resulting positive g_min and certify moving singular values on parameter boxes. The union of their regular tubes and the crossing cores gives a concrete neighborhood of the entire known continuous locus.

This gluing theorem supplies a rigorous positive floor for regular radii. It does not by itself make the floor large or show that the current seed/X-ball shell cells fit into those tubes.

For concrete endpoint-to-current-pattern alignment, note that the new archive does not contain `results/exact_centres.json`, although its hash is in the receipt. The structure receipt contains exact planes and actions but not the two center matrices' exponent tables. The theorem can be stated for all canonical endpoint neighborhoods, but concrete transfer into those two particular certified frames requires their center data or equivalent explicit matching certificates.

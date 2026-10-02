# Fourier-family seed atlas and direct perturbation bounds

**Status.** Proved: an exact description of every Fourier-family corner
seed, exact seed-distance formulas, and direct bounds for a carrier tube.
This completes the parametrisation subtarget of T2. No explicit exclusion
radius for the whole family, and no explicit T1′ threshold m, is claimed.
The atlas and perturbation bounds require no reconstruction assumptions.

## 1. Two corner prototypes suffice

Put ξ = exp(iπ/3), ω = ξ², F = (ωⁱʲ) for 0 ≤ i,j ≤ 2, and

    N(z,w) = [[F,F],[F Z,−F Z]],   Z = diag(1,z,w),   |z|=|w|=1.

This describes one orientation of the Fourier family; including Nᵀ
removes the naming convention. Block multiplication proves NN† = 6I.
Index rows by (s,i) and columns by (t,j), with s,t ∈ {0,1} and i,j ∈ {0,1,2}.
The raw entry is

    N_(s,i),(t,j) = ξ^(3st+2ij) z^(s[j=1]) w^(s[j=2]).       (1)

For an ordered row triple r₀,r₁,r₂ and column triple c₀,c₁,c₂, dephase by

    E_ij = N_(r_i,c_j) N_(r_0,c_0) /
                         (N_(r_i,c_0) N_(r_0,c_j)).        (2)

Its four seed entries (E₁₁,E₁₂,E₂₁,E₂₂) are monomials in ξ,z,w.
Diagonal row/column phases cancel from (2). All row/column equivalences
are covered by ordered triples; transposition swaps the second and third
seed entries. Conjugation is already covered, since conjugating F reverses
its Fourier indices and conjugates z,w.

Let G be the 72 transformations consisting of arbitrary permutations of
the three rows and three columns, re-dephasing by (2), and optional
transposition. Define

    E₂(z,w) = [[1,1,1],[1,ω,ω²],[1,z,w]],
    E₁(z)   = [[1,1,1],[1,ω,1 ],[1,z,−1]].                  (3)

These are literal corners of N: rows (0,1,3), with columns (0,1,2) and
(0,1,3), respectively, in zero-based block indexing.

**Atlas theorem.** The full set S_Four of dephased ordered corner seeds
of N and Nᵀ, including all equivalences, is

    S_Four = ⋃_(g∈G) seeds(gE₂(T²)) ∪ ⋃_(g∈G) seeds(gE₁(T)). (4)

After removing duplicate images, the first union has 12 two-dimensional
tori and the second has 36 circles. None of these 48 pieces is contained
in another. In particular, S_Four is not a union solely of the 12 surface
pieces: the additional boundary curves are needed.

**Exact finite proof of coverage.** Apply (2) to all
`2 · (6·5·4)² = 28,800` ordered corners and orientations. The resulting
3,038 distinct monomial maps are checked against (4) as identities,
not at sampled parameters. Each map has the form

    θ = (π/3)h + A(x,y)  modulo 2π,                         (5)

with h integral and A an integral 4-by-2 matrix. A saturated integer
basis L of ker(Aᵀ) describes its image exactly:

    Lθ = (π/3)b modulo 2π,   b = Lh modulo 6.               (6)

The replay verifies LA = 0, the correct rank, and gcd 1 of the maximal
minors of L. Thus L is primitive: its torus kernel is connected and has
real tangent space im(A). The connected image in (5), with that same
tangent space and dimension, is precisely the coset in (6). This step
prevents spurious disconnected components from unsaturated equations.

The replay independently generates (3)'s 144 transformed maps. For every
map from the full enumeration it exhibits a retained piece satisfying
`LA=0` and `Lh=b mod 6`. Conversely every retained piece has the explicit
prototype corner witness above, so the inclusion is equality. Canonical
integer equations yield 12 surfaces, 36 circles and 14 singleton images
in the full enumeration; all 14 singletons lie in the retained pieces.
Pairwise noncontainment of the 48 retained images is also checked exactly.

The replay uses integers, rational arithmetic and symbolic algebra.
[atlas.json](data/atlas.json) records the 48 equations, parametrisations
and prototype witnesses; [verify.py](verify.py) reconstructs and checks them.

## 2. The twelve surfaces and the strict part

The twelve surfaces have a particularly short description. For each of
these six ordered pairs of phase expressions,

| Pair |
|---|
| (a,b) |
| (a,c) |
| (c,d) |
| (b,d) |
| (c/a,d/b) |
| (b/a,d/c) |

set the pair equal to either `(ω,ω²)` or `(ω²,ω)`. The remaining two
phase degrees of freedom are arbitrary. The full 36-circle part is the
G-orbit of `(a,b,c,d)=(ω,1,z,−1)`, with duplicates removed as in (4).

**Boundary theorem.** R vanishes identically on all 36 circles. On the
surface prototype it is

    R(E₂(z,w)) = −9 (z²−w)² (w²−z)² (zw−1)²/(z⁴w⁴).       (7)

For z = exp(ix), w = exp(iy), this becomes

    R(E₂) = 576 sin²((2x−y)/2) sin²((2y−x)/2)
                                              sin²((x+y)/2). (8)

**Proof.** Substitution into the defining p,J,W polynomial gives
`R(E₁)=0` and (7), as exact Laurent identities. Writing each factor as
`2i exp(i·midpoint) sin(half-difference)` gives (8). R is unchanged by
row/column reordering, re-dephasing or transpose, as proved in the
[campaign's invariant check](../../../NumericalCampaign/Domain/verify_reduction.py).
This extends the two identities to the full atlas. ∎

It follows that every Fourier corner seed with R > 0 is on one of the
12 surfaces. Conversely, on each surface R is positive on a dense open
set: (8) has only the three indicated families of zero lines in its
parameter torus. Therefore

    closure(S_Four ∩ {R>0}) = union of the 12 surfaces.      (9)

The closure in (9) is smaller than S_Four. For example the curve seed
`(θ₁,θ₂,θ₃,θ₄)/(2π)=(1/3,0,1/7,1/2)` belongs to S_Four, but its squared
turn-distance from the surface union is exactly 1/3528. Use the full
atlas when the requested set includes all boundary corner seeds.

## 3. Exact distances without reconstructing H₊

Use turns `x=θ/(2π)` and the Euclidean geodesic metric on `(R/Z)⁴`.
A retained component is `C={y: Ly=b/6 mod Z}`. Set

    u=Lx−b/6,   Q=(LLᵀ)⁻¹.

Then its exact squared distance is

    dist(x,C)² = min_(n∈Z^k) (u−n)ᵀ Q(u−n),   k=rows(L).  (10)

For a fixed n, orthogonal projection onto the affine plane gives the
closest lift

    y=x−LᵀQ(u−n),                                         (11)

and squared displacement (10). Taking all n covers every lift of C.
A finite search suffices: some nearest torus displacement has each
coordinate in [−1/2,1/2]. Consequently it suffices to enumerate

    ceil(u_j−||L_j||₁/2) ≤ n_j ≤ floor(u_j+||L_j||₁/2).     (12)

Every candidate (11) is feasible modulo Z; and (12) retains a globally
nearest one. These facts prove equality, not just a lower bound. Every
row of this atlas has norm ||L_j||₁ ≤ 2, so (12) uses at most 3^k ≤ 27
integer choices per component. Distances to S_Four are the minimum over
48 components. Distances to (9) use just the twelve surface components.
For rational turns, every squared distance and closest lift is rational.

For the surfaces, the two rows of L are orthogonal. Thus no enumeration
is needed:

    dist(x,C)² = Σ_(j=1)^2 wrap(u_j)² / ||L_j||₂²,          (13)

where wrap takes values in [−1/2,1/2]. In the table above the first four
pairs have denominators 1,1 and the last two have denominators 2,2.
Multiply squared turn-distances by `(2π)²` for squared distances in
radians. The replay compares (10) against the independent formula (13).

**Whole-cell bounds.** Distance to any fixed set is 1-Lipschitz. Let a
seed box have center x, half-widths h_i in turns, `q=dist(x,S)²` and
`s=Σh_i²`. Every point of the box therefore has distance between
`max(0,sqrt(q)−sqrt(s))` and `sqrt(q)+sqrt(s)`. For a rational tube radius
ε > 0, an entirely rational sufficient inside test is

    ε²−q−s > 0,    (ε²−q−s)² > 4qs;                       (14)

an outside test is

    q−ε²−s > 0,    (q−ε²−s)² > 4ε²s.                      (15)

Otherwise the test is inconclusive. These strict tests handle closed
box boundaries and phase seams. Campaign grid centers expressed as
rational multiples of π are exactly rational in turns.

These tests certify **proximity only**. They cannot exclude a quartet
until a theorem supplies an excluded tube of the same radius and scope.

## 4. Direct carrier bounds for a Fourier-family tube

The family itself can be enclosed without evaluating the seed
reconstruction. Write V(x,y)=N(exp(ix),exp(iy))/sqrt(6), and let Δx,Δy be
chosen lifts of parameter changes. For the projector metric
`D(u,v)=sqrt(1−|u†v|²)`, a direct column calculation gives

    max_j D(V_j(x,y),V_j(x+Δx,y+Δy))
                     = max(|sin(Δx/2)|,|sin(Δy/2)|).       (16)

Indeed the columns of Fourier label j have normalized inner product
`(1+exp(iΔ_j))/2`, with Δ₀=0. For Vᵀ, the first three columns do not
change; each remaining column has inner product
`(1+exp(iΔx)+exp(iΔy))/3`. Hence its maximum column distance squared is

    (4/9)[sin²(Δx/2)+sin²(Δy/2)+sin²((Δx−Δy)/2)].          (17)

A parameter rectangle of half-widths h_x,h_y in radians is therefore
within column-projector distance

    t = max(h_x,h_y)/2                         for V,
    t = sqrt(h_x²+h_y²+(h_x+h_y)²)/3            for Vᵀ      (18)

of its center. These are sufficient upper bounds; (16)–(17) are exact.
No inverse radical or side denominator appears.

There is also a sharper probability-transfer bound than the general
projector Lipschitz inequality. Let a ray k satisfy `|U_j†k|²=1/6`, and
suppose `D(U_j,V_j)≤d≤1/sqrt(6)`. Then

    ||V_j†k|²−1/6| ≤ β(d),
    β(d) = (2/3)d² + (sqrt(5)/3)d sqrt(1−d²).              (19)

**Proof.** For the actual separation t≤d, choose phases so
`V_j=sqrt(1−t²)U_j+t e`, with e a unit vector orthogonal to U_j.
The component of k orthogonal to U_j has norm sqrt(5/6), so

    sqrt(1−t²)/sqrt(6) − sqrt(5/6)t
       ≤ |V_j†k| ≤ sqrt(1−t²)/sqrt(6) + sqrt(5/6)t.

The lower bound is nonnegative for t≤1/sqrt(6). Squaring proves (19)
with t: the upper deviation is β(t), and the lower deviation is no
larger. The upper amplitude, hence β(t), is increasing over this range,
so replacing t by d is safe. ∎

**Tube transfer criterion.** Suppose a cluster cover at a reference V₀
covers every standard-flat ray obeying
`||V₀_j†k|²−1/6|≤τ` for all six j, and its label graph excludes a quartet.
Then every physical Hadamard U with matched column distance at most d
from V₀ is excluded whenever `d≤1/sqrt(6)` and `β(d)≤τ`.
This is the cluster theorem applied after (19).

More generally take a Fourier parameter rectangle with center V₀ and
bound t from (18). Every physical carrier within distance d of a family
member in that rectangle is within d+t of V₀, by the projector triangle
inequality. Thus `d+t≤1/sqrt(6)` and `β(d+t)≤τ` suffice. Row monomial
matches and column permutations preserve the argument and standard
flatness. A finite parameter cover with such certificates would prove
a uniform T2 tube without reconstructing H₊. This statement supplies the
transfer step; such a full family cover has not been computed here.

## 5. What seed proximity does not yet prove

The forward map from physical Hadamards to corner seeds forgets most
entries and can forget which completion is chosen. The atlas describes
corners with **at least one** Fourier completion. It does not prove that
all their completions are Fourier matrices, or that H₊ near them is
quantitatively close to the family.

There is an exact illustration even at a strict seed. The surface seed
`(a,b,c,d)=(ω,ω²,ω,ω)` has R=243 by (7). Besides its explicit Fourier
completion, it is the dephased Tao corner with rows (0,1,2) and columns
(1,3,4) of the representative in
[quartet_corollary.py](../../EdgeRigidity/quartet_corollary.py).
Tao has no zero 3-by-3 minor, whereas every Fourier-family matrix has
one; thus these completions are inequivalent. The replay checks the
shared corner. Tao is separately excluded from quartets, so this is
**not a counterexample to T2**, nor an assertion about which completion
H₊ selects. It demonstrates why a universal inverse-distance inference
from the corner alone is invalid without additional hypotheses.

A matching seed-to-carrier estimate for the relevant H₊ branch, possibly
restricted to D₀ and small R, remains part of the campaign's quantitative
target. Distance along the Fourier family from F6 (such as the earlier
0.26-radian obstruction) is also different from distance **to** the
whole Fourier family, which is zero there. The old number therefore
places no positive lower bound on the new transverse tube radius.

Finally, the existence of some positive matrix tube follows qualitatively
from the published Fourier-family exclusion and compactness: the physical
quartet locus is a closed subset of a product of compact unitary groups;
its carrier projection is compact. The Fourier-family equivalence orbit
is compact and disjoint from that projection, so the minimum matched
projector distance is positive (or the quartet locus is empty). This
uses [Jaming et al., Theorem 1.4](https://arxiv.org/html/0902.0882v2#S3),
with transpose handled by changing the reference basis and conjugating.
It yields no explicit radius and does not resolve the seed-lifting issue.

**Subsequent result.** [UniformTube](../UniformTube/PROOF.md) makes the
matrix radius explicit as 2^(−2^590), using an effective algebraic minimum
theorem. This is impractically small. The companion
[certificate](../UniformTube/SEED_OBSTRUCTION.md) evaluates H₊ at an exact
atlas seed and proves d_Four>1/40, refuting unrestricted seed lifting.
The certified seed is outside D₀; lifting on D₀, possibly with a small-R
restriction, remains open.

## Scope and provenance

The atlas, identities and distance formulas are new derivations here from
(1); the finite coverage proof is checked by the accompanying exact
replay. The elementary R invariance and general cluster-label argument
are existing library results. The direct carrier formulas are elementary
column calculations, and the probability transfer is the two-dimensional
projector geometry in (19). Only the final qualitative compactness
statement invokes the published Fourier exclusion. No accepted global
reconstruction input or numerical ray count is used.

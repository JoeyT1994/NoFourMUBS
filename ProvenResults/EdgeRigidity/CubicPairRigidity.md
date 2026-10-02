# A three-valued quotient forces Tao or an antipodal pair

**Statement.** If two rows (or two columns) of an order-six complex Hadamard have a quotient taking exactly three distinct values, the matrix is equivalent to Tao or has an antipodal row or column pair. Equivalently |sum_j r_j^3|=6 for r_j=H_ij conj(H_kj) forces Tao or antipodal.

**Status.** Analytic proof with an exhaustive exact finite check (sign cube, both Tao tetrahedra). Unconditional for single matrices. Quartet consequence (the inequality |sum r_j^3|<6 is strict on every quartet edge) uses the quartet corollary and the Tao exclusion.

**Dependencies.** None for the theorem. Quartet use: [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md); [Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md) or [Brierley-Weigert](https://arxiv.org/abs/0901.4051).

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/CUBIC_PAIR_RIGIDITY.md`, `verify_cubic_pair.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# A three-valued Hadamard quotient forces Tao or an antipodal pair

**Theorem.** If two rows or two columns of an order-six complex Hadamard
have a quotient taking exactly three distinct values, then the matrix is
equivalent to Tao or has an antipodal row or column pair.

Consequently a physical MUB triangle with such a quotient on any actual
edge has an antipodal edge: Tao has no full mate ([Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md)).
This is about rows/columns of an ACTUAL transition, not matching vectors.
It does not force such a quotient to exist on a general triangle.

## 1. A complete four-column residual

Work with phase Hadamards and transpose if needed. Orthogonality of the
selected columns makes their three quotient values a rotated cubic-root
triple, each occurring twice: multiplicities(1,1,4) violate the triangle
inequality and(1,2,3) saturate it, so cannot give three distinct values.
By allowed row phases and permutations, take those two columns to be

    H_(g,eps),0=1, H_(g,eps),1=omega^g,
    g=0,1,2; eps=+1,-1; omega^2+omega+1=0.

For each of the remaining four columns j, orthogonality to the two selected
columns forces its three pair means to be m_j omega^(2g). Therefore

    H_(g,eps),j=omega^(2g)(m_j+eps d_gj),
    |m_j|^2+|d_gj|^2=1, Re(m_j conjugate(d_gj))=0.       (1)

The six-dimensional column space splits orthogonally into the selected
two-dimensional space and its four-dimensional complement. The latter has
coordinates (m_j,d_0j/sqrt(3),d_1j/sqrt(3),d_2j/sqrt(3)). Thus these four
columns form a UNITARY4-by4 matrix. In particular

    sum_j |m_j|^2=1.                                   (2)

No column with m_j=0 is discarded. Let k be the number of nonzero m_j.
By (2), k is1,2,3 or4.

## 2. The nonzero means have finite sign geometry

For a nonzero m_j, remove its phase by a column phase so m_j>0. Equation
(1) then gives

    d_gj=i s_gj sqrt(1-m_j^2),       s_gj in {+1,-1},   (3)

unless m_j=1, the k=1 case handled below. Put
t_j=sqrt((1-m_j^2)/3)>0. Orthogonality of two such columns gives

    m_i m_j+t_i t_j (s_i.s_j)=0.                        (4)

Hence their sign vectors have negative dot product, either -1 or -3.
Opposite sign vectors have dot product -3, but cannot coexist with a third
sign vector having negative dot product with both. For k>=3 all pairwise
dot products are therefore -1. From (4), the positive ratios m_j/t_j have
pairwise product1, so all ratios are1 and m_j^2=1/4. Equation (2) excludes
k=3. At k=4 the sign vectors are one of the two tetrahedra in the sign cube.

**Certified computation:** all sign-cube subsets are checked exactly.
There are eight negative three-cliques and two negative four-cliques; all
their pairwise products are -1, and there is no negative five-clique.

## 3. Every mean-count case has an owner

### k=1: antipodal rows

The nonzero mean has modulus1, so its d_gj vanish and that column is a
phase times omega^(2g). The other three columns have m=0. Within ANY row
pair (g,+),(g,-), the entries of the first two columns and this one column
agree, whereas the other three entries are opposite. This is a full
antipodal row pair, not merely an H2 block.

### k=2: antipodal columns

The two positive means x,y satisfy x^2+y^2=1. Their positive ratios m/t
have product3, so (4) forces their sign vectors to be opposites. After the
already chosen column phases the two entries in row (g,eps) are

    omega^(2g)(x+i eps s_g y),
    omega^(2g)(y-i eps s_g x).

The first is i eps s_g times the second. For each g the two signs eps
are opposite, giving exactly three of each sign in the full column
quotient. Thus the two columns are antipodal. Both columns are nonzero
entrywise by Hadamard flatness, so this ratio loses no endpoint.

### k=4: exactly Tao

Now m_j=1/2 and (3) gives

    H_(g,eps),j=omega^(2g)(1+i sqrt(3) eps s_gj)/2.      (5)

There are only the two sign tetrahedra above, up to the already allowed
remaining-column permutations. The exact matrices (5), together with the
first two columns, are physical and monomially equivalent to Tao.
The verifier checks both tetrahedra over the exact number field and
freezes explicit row/column permutations and dephasing factors. This is
an exhaustive endpoint calculation, not a sample of a continuous locus.

These cases exhaust (2), proving the theorem without assuming a generic
rank, a preferred product frame, or an all-parameter Karlsson exclusion.

## 4. A simpler sufficient geometric target, and its limit

For two distinct rows let r_j=H_ij conjugate(H_kj). Then

    |sum_j r_j^3|=6

if and only if their quotient has exactly three values. Equality in the
triangle inequality makes all r_j^3 equal; row orthogonality forces each
cubic root to occur twice. The column version is identical. Thus on every
quartet edge all these third-moment inequalities are STRICT. Saturation on
an actual triangle edge would suffice for antipodal forcing, since Tao
cannot have a full mate. Universal saturation is **Open**; this theorem
does not establish it or give a uniform gap below6.

*Remark (archive reconstruction coordinates; not used by the theorem and not
re-verified here).* On a guarded product frame, exposing the cubic pair as the first two rows
means the actual quotient list is (1,a,b,x1,x2,x3). Its cubic condition is

    {a,b}={omega,omega^2},       q_h(X)=X^3-1,
    s_h=0, u=1.

Conversely these conditions on the ACTUAL matched reconstruction expose
that pair. The vertical version uses {a,c},s_v=0,m=1. The coordinate roots
are distinct by the retained guard; their order is irrelevant here. An
arbitrary cubic pair need not be in a preferred guarded position. The global
proof above needs no such frame, so failed preferred guards are not exclusions.
No sheet or seed may be chosen to impose this condition without a forcing proof.

Replay: `python3 verify.py` in this folder (sub-check `cubic_pair_rigidity`). The continuous decomposition and
case exhaustion are the written proof; the exact sign and Tao calculations
are its finite checks. This is not the separate three-valued MATCHING theorem.

# Exclusion of a two-valued anchor from a full MUB triple

## Header

**Statement.** Let H,K be order-six phase Hadamards with H*H=K*K=6I and
|(H*K)_ij|²=6, i.e. I,H/√6,K/√6 is an MUB triple. For every column h of H
and k of K, the six ratios k_r/h_r take at least three distinct values.

A secondary result: a single balanced two-valued common ray forces its
carrier into one explicit monomial class H0 (allowing conjugation), and H0
is Karlsson.

**Status.** Analytic reduction (Sections 2–4, 6) plus exact certificates:
the 16-case split and its witnesses, the polynomial identities (10) (data in
`collisions/completion_certificate.json`), and the 72-case incompatibility
test. All are replayed by `collisions/verify.py` in characteristic-zero
arithmetic, with an independent SymPy implementation of the 72-case test.

**Dependencies.** Theorem A of [PhaseCollisions.md](PhaseCollisions.md)
(no value four times). No classification, reconstruction or minor hypothesis.

**Provenance.** Archive
`03_algebraic/core/phase_reduction/two_valued_anchor/{PROOF.md, verify.py,
completion_certificate.json, generate_certificate.py}`. The proof is copied,
with links edited and archive coordinate framing removed. Removed from the
verifier: the stale source-hash/receipt comparison (it failed against edited
documents) and the archive product-frame guard check of H0 (archive
coordinates). All mathematical checks are retained, and their outputs agree
with the archive receipt.

---

## 1. Statement

**Theorem.** Let H,K be order-six phase Hadamards, with H*H=K*K=6I
and |(H*K)_ij|^2=6. For every column pair h of H and k of K, the six
ratios k_r/h_r take at least three distinct values.

Consequently a full triple has no two-valued anchor (a column of K whose
ratios to a column of H take two values).

This does not exclude arbitrary triples, the entire Karlsson family, or
quartets without this phase pattern.

The argument uses full physical matrices, not independent edge gauges or
an assumption K=D H. It forces a finite carrier form BEFORE testing that
form. No initial frame, sheet, ordinary-minor or non-Karlsson hypothesis is
required.

## 2. The balanced anchor and the three-row equations

Use a common row gauge and independent column relabellings to make the
chosen H column h=1 and the chosen K column k=v. The
[mixed-collision theorem](PhaseCollisions.md), Section 2,
excludes a phase occurring four times. If v has exactly two values, both
therefore occur three times. Normalize and group the rows so that

    v=(1,1,1,beta,beta,beta),   beta=(-2±i sqrt5)/3.

Indeed |1* v|^2=|3+3 beta|^2=6 forces Re(beta)=-2/3. Let

    D=diag(v),   S=D* K.

H and S are phase Hadamards with first column 1; equality is allowed, not
assumed. For every other
column of H, its top and bottom three-entry sums are opposite. Unbiasedness
to v and |1-beta|^2=10/3 force the top sum to have squared modulus 9/5.
Exactly the same assertion holds for S: its other columns sum to zero,
and unbiasedness of D S to H's first column gives the top-sum condition.

Independently phase the columns of H and S to normalize their first row;
the first-column phase stays 1. Their top three rows are thus of the form

    X = [1  1 ... 1]
        [1 z1 ... z5],       XX*=6I3,
        [1 w1 ... w5]

with all entries unit and

    |1+z_j+w_j|^2=9/5,           j=1,...,5.                (1)

This extraction used both actual anchor compatibilities. The remaining
full-mate equations are retained for the final test.

## 3. The forced-root identity

**Theorem.** Every three-row X satisfying (1) has exactly one additional
column where each selected row pair agrees. Those three columns are distinct.

Proof. Orthogonality gives

    sum z_j=sum z_j^(-1)=sum w_j=sum w_j/z_j=-1.          (2)

All sums in this section run from 1 to 5. Equation (1) is equivalently

    z+z^(-1)+w+w^(-1)+w/z+z/w=-6/5.                     (3)

The value z=-1 is impossible: then |1+z+w|^2=1, not 9/5.
Treating (3) as a quadratic in w, its two roots have product z. Hence

    w+z/w=-(z^2+(6/5)z+1)/(z+1)
           =-z-1+(4/5)z/(z+1).

By conjugating the last equation of (2), sum z_j/w_j=-1. Summing the
displayed identity therefore yields

    sum z_j/(z_j+1)=5/2.                                (4)

Let p(t)=product_(j=1)^5(t-z_j). Equation (2) fixes its first and last
coefficients, so for some A,B,C it has the exact form

    p(t)=t^5+t^4+A t^3-B t^2-C t-C.

Direct polynomial arithmetic gives

    p(1)=2p'(-1)+5p(-1).                                (5)

Since p(-1)!=0, equation (4) gives p'(-1)/p(-1)=-5/2.
Thus p(1)=0: some z_j=1. No parameter denominator or resultant has been
discarded; z_j+1 was proved nonzero directly.

There cannot be two such j. Otherwise the six unit ratios between the
first two rows include at least three ones. Their zero sum then forces
exactly three ones and three minus ones by equality in the triangle
inequality. The minus ones were just excluded. There is exactly one
additional agreement of this row pair.

Permute the three rows and dephase each column again. This preserves (1),
unit entries and row orthogonality, so the same argument applies to each
of the other two row pairs. Their additional-agreement columns cannot
coincide: an all-equal column would have squared sum 9, contrary to (1).
This proves the assertion, without any no-zero3 assumption.

## 4. Complete finite classification of the three-row block

Put a=(-4-3i)/5 and a_bar=conj(a). Reorder the five non-anchor columns
to put the three forced agreements first. Then

    z=(1,1,b0,c0,z4,z5),
    w=(1,a0,1,c0,w4,w5),

where a0,b0,c0 each belong to {a,a_bar}. This follows from
|2+a0|^2=9/5, and the identical equations for b0,c0.

Orthogonality fixes the remaining sums:

    z4+z5=-2-b0-c0,
    w4+w5=-2-a0-c0,
    w4/z4+w5/z5=-2-a0-conj(b0).                          (6)

For two unit numbers with nonzero sum s, their product is s/conj(s),
so they are exactly the two roots of t^2-s t+s/conj(s). None of the
sums in the first two lines of (6) is zero. Define

    b=(-2-3 sqrt6+i(6-sqrt6))/10,
    c=(-2+3 sqrt6+i(6+sqrt6))/10,
    d_plus=(-1+2i sqrt6)/5,   d_minus=conj(d_plus).

If the two signs in the corresponding sum agree, its root pair is
(b,c) or (conj(b),conj(c)); if they differ it is (d_plus,d_minus).
All are unit. Fix the z ordering by interchanging the last two columns;
retain BOTH w orderings. There are exactly 2^3*2=16 cases.

**Certified computation.** Substitution into (1),(2),(6) leaves the following
six cases. A sign 0 means a and sign 1 means conj(a); order 1 reverses the
stated w root pair. The other ten cases fail an explicit original equation.

    (sign(a0),sign(b0),sign(c0),w-order)
    (0,0,0,1), (0,1,0,0), (0,1,1,1),
    (1,0,0,0), (1,0,1,1), (1,1,1,1).

Each surviving block is a row permutation and a column monomial image of
the top three rows of H0 or conj(H0), where

    H0 = [1  1   1    1    1    1 ]
         [1  a   b    c    1    a ]
         [1  a   c    b    a    1 ]
         [1 -a  -ia  -i    ic   ib]
         [1 -a  -i   -ia   ib   ic]
         [1 -1  -i   -i    i    i ].                       (7)

The exact verifier supplies explicit witnesses for all six. Their column
permutations fix the anchor column and their phase there is 1. Row
permutations act within the three selected rows. These facts are essential
for retaining the actual relative alignment in Section 6.

## 5. Exhaustive full completion of the forced block

**Theorem.** A phase Hadamard whose first column is all ones and whose top
three rows equal those of H0 has, up to ordering, exactly the three lower
rows displayed in (7).

Use the column order (1,5,6,2,3,4), with one-based indices. The seed is
(1,a,a,1). Write the reordered top block as [E B]. Both E and B are
invertible, checked exactly. Any further row, normalized at its first
entry, must be

    ell=(1,p,q | (1,p,q)M),   M=-E* (B*)^(-1).            (8)

This is the row form of the Hadamard lower-block reconstruction,
not a relaxation: ell [E B]*=0 is equivalent to (8). For unit p,q, write

    f_j(p,q)=p q (ell_(j+3)(p,q)
                 conjugate_form(ell_(j+3))(p,q)-1),

where conjugate_form conjugates coefficients and replaces p,q by 1/p,1/q.
These are three explicit cubics over Q(i,sqrt6). No reciprocal of an unknown
is discarded: p,q are physical unit entries.

Define

    Gq=q-2i p^3-(11+7i)p^2/5-(9+8i)p/5-(9+3i)/5,
    Gp=p^4+(6-8i)p^3/5+(3-9i)p^2/5-2i p-(4+3i)/5
      =(p-i)^2 (p-ib)(p-ic).                             (9)

**Certified computation.** [collisions/completion_certificate.json](collisions/completion_certificate.json)
contains explicit polynomial multipliers c_j,d_j of degree at most three
with

    p q Gq=sum_j c_j f_j,    p q Gp=sum_j d_j f_j.        (10)

The verifier constructs E,B,M and all f_j from (7) and verifies both identities
by exact expansion. No Gröbner computation, modular lift or generic-fibre
claim is needed to replay (10). The small generator
(`collisions/generate_certificate.py`) reproduces the multipliers by exact
linear algebra.

Every physical row thus has p in {i,ib,ic}. Gq determines q uniquely;
substitution in (8) gives precisely the three displayed lower rows. They
are all physical and mutually orthogonal. The repeated factor p=i in (9)
is retained; it contributes no additional distinct row or continuous family.
The three rows of any full Hadamard completion must be distinct, so they
use each of these rows once. This proves exhaustivity.

The same result applies after the column monomials and top-row permutations
in Section 4, and to the conjugate block. Consequently every H with the
balanced common ray in Section 2 belongs to the single displayed monomial
class (7), allowing conjugation, with row permutations preserving the two
three-row sets and column monomials fixing the anchor.

**Certified computation.** H0 is a phase Hadamard with all 400 ordinary
3-minors nonzero. It has an H2 block (rows 1,6 and columns 1,2), hence is
Karlsson. This is a FORCED finite carrier form, not specialization to an
arbitrary convenient Karlsson point. No classification theorem for the whole
Karlsson family is assumed. Sections 2–5 worked with actual entries.

## 6. Full-mate incompatibility: all relative placements

Apply Sections 3–5 to BOTH H and S=D* K. A common row permutation within
each half, independent right column monomials, and global conjugation if
needed put the actual MU test in the form

    H=H0,    K=D P H0^(epsilon),
    epsilon in {identity,conjugation},
    P in S3 x S3,   beta=(-2±i sqrt5)/3.                  (11)

Right column monomials on K only permute intensities and may be suppressed.
The row permutation used to normalize H commutes with D. It acts on S
as well, leaving precisely the relative P in (11). H0^(epsilon) describes
the classified possibilities for the OTHER carrier, not permission to
conjugate it independently as a gauge. Both beta signs are retained.

There are 72 choices of (P,epsilon). Let S=P H0^(epsilon) and set

    A=H0_top* S_top,   B=H0_bottom* S_bottom.

For either beta sign, each intensity is

    |A_ij+beta B_ij|^2 = r_ij ± sqrt5 s_ij,
    r=|A|^2+|B|^2-(2/3)(A conj(B)+conj(A) B),
    s=(A conj(B)-conj(A) B)/(3i).                         (12)

r,s belong to the REAL field Q(sqrt6). Since sqrt5 does not belong to
that field, the intensity equals 6 exactly when r=6 AND s=0. This single
exact test handles both signs, without a numerical tolerance.

**Certified computation.** Enumerating all 36 block-preserving permutations
and both conjugation possibilities yields:

| Cases | Number of columns whose six intensities all equal 6 |
|---:|---:|
| 68 | 1 |
| 4 | 2 |

No case has six eligible columns. The verifier records one exact
failed-entry witness for every case, as well as the complete count check.
The construction of r,s and their field membership is verified directly.
A second algebraic-number implementation rebuilds H0 independently and
checks all 144 failed intensities for the two actual beta signs directly,
without using the r,s separation test.
Thus no full mate in (11) exists. By the exhaustive preceding reductions,
no physical full triple has the balanced two-valued anchor.

Together with the mixed-collision exclusion, this proves the theorem for
every two-valued mixed column quotient. One value is already impossible
by mutual unbiasedness.

## 7. Scope

The result covers all 20 anchor candidates of PhaseCollisions.md, Section 2.2,
in every normalization, both beta signs and all row orderings.
The forced-root identity and the unit-pair classification are general
Hadamard consequences. Section 5 is an explicit exhaustive reconstruction
at the FORCED block, with its nonlinear phase conditions verified.

The proof rests on (2)–(5), the complete 16-case split, exact identities (10),
and the exhaustive 72-case incompatibility calculation.

**Open:** this does not show that H0 has no full mate with a different,
nonbinary anchor. It excludes extension of the specified two-valued ray
to a full common-unbiased basis. General quartets are not forced to have a
two-valued anchor.

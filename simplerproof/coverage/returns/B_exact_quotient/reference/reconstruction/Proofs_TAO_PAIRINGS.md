# Exact Tao corner census and its extra pairings

Status: proved for every positional corner of Tao, and hence every
ordered/dephased Tao frame. This proves the forward exceptional assertion
in MC4: Tao has precisely two strict corner classes, each with three
flat pairings and one nonflat pairing. It does not prove the converse
that every nonmatched flat completion is Tao.

Dependencies: SIDE_FIBER.md and elementary matrix algebra below.
Replay: `python3 MinimalConstruction/Proofs/verify_tao_pairings.py`.
Every acceptance in this verifier is an exact identity, exact rational
comparison, or complete finite enumeration over Q(sqrt(-3)).

## A radical-free exact flatness test for all four pairings

For a normalized phase side X=(1;x;y), let s=sum x, t=sum y,
r=sum(y/x), u=prod x, v=prod y, pi=perm X. Form the six rows of
pairwise products in the order

    X2=(1, x, y, x², xy, y²).

Let T=X2 X2†. Its entries are the moments m_ab=sum x_j^a y_j^b,
with differences of exponent pairs in
((0,0),(1,0),(0,1),(2,0),(1,1),(0,2)). They are determined by

    m00=3, m10=s, m01=t, m1,-1=bar(r),
    m20=s²-2u bar(s), m02=t²-2v bar(t), m11=st-pi,
    m2,-1=s bar(r)-u bar(pi),
    m-1,2=tr-v bar(pi),
    m2,-2=bar(r)²-2(u/v)r,
    m-a,-b=bar(mab).

For example the phase cubic gives x_j²=s x_j-u bar(s)+u/x_j;
multiply by 1/y_j and sum, using sum xy=st-pi, to obtain m2,-1.
The verifier checks all 36 entries as Laurent identities in six
independent unit variables. SIDE_FIBER.md gives the data of each
orbit directly: u=lambda0/lambda1, v=lambda0/lambda2, pi=z lambda0.
Thus T is known without choosing any square or cube roots beyond z.

Let K=-E† Gh^(-1). Index unordered pairs (a,b), a<=b, in the same
six-position order, and define

    L_(a,b),(c,d) = sum K_a'c' K_b'd',

where the sum is over the distinct orderings (a',b') of (a,b) and
(c',d') of (c,d). For arbitrary vectors c,b this coefficient rule
gives (c K b)²=c2 L b2. It is checked symbolically in the verifier.

For side pair B,C, write Th for the product-row Gram of B and Tv for
that of C^T. Since D=CKB, entrywise squaring and the Frobenius norm give

    sum_ij |D_ij|^4 = trace(Tv^T L Th L†).

Block unitarity gives sum_ij |D_ij|²=9. Consequently

    F(E;zh,zv)=trace(Tv^T L Th L†)-9
              =sum_ij (|D_ij|²-1)² >= 0.                 (1)

The pairing is flat if and only if F=0. This is a complete test, not
a necessary-only average condition. It applies to all strict seeds
and all four combinations of horizontal and vertical Theta signs.

## Complete finite census

Use the explicit Tao representative in RECONSTRUCTION.md. The verifier
first checks HH†=6I exactly. It then enumerates all 20 row triples and
all 20 column triples. For each positional block, all 36 row/column
orderings are dephased. The lexicographically least exponent tuple
(a,b,c,d) in units of omega is its canonical corner representative.
This canonicalization includes every row/column monomial equivalence
between such dephased blocks: after the permutations are chosen,
dephasing determines the phase factors uniquely up to the irrelevant
common scalar.

The complete result is:

| Canonical exponents | Positional corners | g | R | Theta(B)=Theta(C) |
|---|---:|---:|---:|---|
| (0,1,1,0) | 180 | 9 | 243 | (-3+i sqrt(3))/2 |
| (0,1,1,2) | 180 | 9 | 243 | (-3-i sqrt(3))/2 |
| (1,2,2,1) | 40 | 27 | 0 | -3 |

At every corner the verifier independently evaluates Theta of both
actual side blocks and checks their equality. The last class has
Gh=Gv=3I and is outside the strict domain. The first two classes give
strict corners of Tao, so Tao satisfies the strict-corner-existence
claim; no assumption about other classes is needed for that conclusion.

For the strict classes, let row and column indices denote respectively
the signs of Im Theta(B) and Im Theta(C). Applying (1) gives

    (0,1,1,0): F = [[0,0],[0,8]],
    (0,1,1,2): F = [[8,0],[0,0]].

The off-diagonal entries are the two matched pairings. The additional
zero on the diagonal is exactly the actual Tao pairing identified by
the preceding census. The remaining pairing has the strictly positive
residual 8 and is not flat. SIDE_FIBER.md proves that each side sign
is one orbit; hence these four tests cover every framed completion of
the two seed representatives and, by monomial transport, all their
ordered/dephased frames.

Every strict Tao frame has equal nonreal side Theta values, so it is
nonmatched. The monomial invariance of Theta proves that no matched
strict constructor output can be equivalent to Tao. Tao must therefore
remain a separately supplied class in the positive-sheet reduction.

## Separate global converse

The additional statement is that F(E;z,z)=0 at an arbitrary strict
seed forces the resulting completion to be Tao, and forces its seed
to belong to one of the two corner classes above. Equation (1) gives
an exact finite algebraic formulation of that remaining task. The
400-corner census alone does not establish this global converse.
It is now proved separately in NONMATCHED_EXCEPTIONS.md by algebraic
propagation from the paper's product-regular matching rule and global
reach theorem; no classification by sampling this residual is used.

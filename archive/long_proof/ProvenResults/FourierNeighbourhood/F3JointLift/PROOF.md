# Joint completion lifting at an F3 corner

This is a new sufficient certificate method. A finite parameter cover must
finish and replay before it proves a particular radius. An incomplete cover
does not certify that radius or close any branch-layer parent.

Let H be a globally dephased, raw order-six complex Hadamard matrix. Suppose
its leading block E differs entrywise from F = (omega^(ij)) by at most h,
where 0 <= h <= 1/20, and every physical corner has R <= m, with m >= 0.
The maximal-corner hypothesis supplies this last condition whenever the
leading R has an outward upper bound m. No strict positivity is required.

## A linear error bound for a four-parameter completion

The three-phase argument in [NearF6Closure](../SeedLifting/NEAR_F6_CLOSURE.md),
Section 3, only needs 2h <= 1/10 and 36h < 3 for its side-block and
completion estimates. Both hold here. After permutations of the last
three rows and columns, there exist unit parameters p,q,r,s such that

    B0 = diag(1,p,q) F,     C0 = F diag(1,r,s),
    D0 = -C0 F* B0 / 3,    K = [[F,B0],[C0,D0]],

and

    ||E-F||_F <= 2h,
    ||B-B0||_F <= 16h,     ||C-C0||_F <= 16h,
    ||D-D0||_F <= (18 sqrt(2)+16)h < 42h.

Indeed, each side triple has sum of modulus at most 2h. Anchoring its
first entry and using the three-phase lemma gives entry errors 8h in
each of the four non-anchor positions. The equal orientation of the
two side rows would imply 3 <= 36h, and is impossible. Transposition
gives the other side. Finally subtract the two column orthogonality
identities, using ||(C0*)^-1|| = 1/sqrt(3) and ||B||,||D|| <= sqrt(6).
This gives the stated completion bound without dividing by R.

Crucially, D0 need not be flat. We retain that constraint in the joint
parameter search rather than first rounding K to a Fourier or Tao matrix.
For each row or column the normalized error between H and K is at most

    ||H-K||_F / sqrt(6) <= sqrt(2280/6) h < 20h.       (1)

The first row and column of H and K agree exactly. All other entries are
enclosed by complex rectangles about K with coordinate half-width h
in E, 16h in B and C, and 42h in D. A Frobenius bound implies each of
these entry bounds; rectangles safely enclose the corresponding disks.

## A useful exact side identity

For the three top-row columns with second and third row arguments

    x = (0, 2pi/3, a),      y = (0, 4pi/3, b),

the complementary-corner sine polynomial is exactly

    q_corner = 3/4 [sin(a-2b)+sin(a+b)-sin(2a-b)]
             = 3 sin((a-2b)/2) sin((a+b)/2) sin((2a-b)/2).

Its complementary physical corner has R = 64 q_corner^2. Thus, at an
exact F3 seed in D0, each missing side column lies on one of the three
lines a-2b = 0, a+b = 0, or 2a-b = 0 modulo 2pi. These are continuous
lines, not finitely many side labels. The analogous row condition follows
by transposition. The joint verifier below uses the full polynomial on
perturbed entries, so this identity is explanatory and not an unproved
shortcut in an acceptance.

## Three sufficient tests on a parameter box

The four unit parameters initially range over the full torus. Cycling the
last three columns replaces (p,q) by (p omega,q omega^2), and cycling the
last three rows replaces (r,s) by (r omega,s omega^2). Both preserve E and
all hypotheses. They are independent. Consequently it suffices to cover
the closed turn-coordinate rectangle [0,1/3] x [0,1] x [0,1/3] x [0,1].
Binary splitting preserves its complete cover, including faces. All
functions use outward Arb balls.

Two inexpensive necessary tests precede completion evaluation. Before
cyclic normalization, the first B column and C row are the exact anchors
(1,p,q) and (1,r,s). The cyclic permutations can move those anchors, so
the verifier uses the full 16h side-entry error afterward. For the mixed
corner with the first two F columns, respectively rows, every entry error
is therefore at most 16h. Each of the six terms of q has total entry degree
eight. Telescoping products, with actual entries of modulus one, gives an
error at most 6((1+16h)^8-1) from the exact side identity above.
If its absolute value exceeds sqrt(m)/8 plus this error, exclude the box.

The two exact flatness factor products in NearF6Closure, Section 3, have
modulus at most 27 times the maximum squared-modulus error of D0. Since
that error is at most 42h(2+42h), either larger factor product also excludes
the box. The factor identities are exact Laurent identities independently
verified by the existing near-F6 algebra check.

1. **Nonflat completion.** If an entry of D0 has distance from the unit
   circle greater than 42h throughout the box, no physical H is represented.
2. **Maximality.** For rows (0,i,j), form x_k = H_ik, y_k = H_jk and
   z_k = y_k conjugate(x_k) for a triple of columns. Replace each sine
   difference in the established six-term complementary-corner expression
   by Im(x_b conjugate(x_a)), etc. This real polynomial agrees with that
   expression at every physical unit-entry H. Evaluating it on the entry
   rectangles above would be a rigorous enclosure even though other points
   of those rectangles are nonflat. The implementation instead evaluates
   q(K) by an outward mean-value formula in the four parameter phases.
   First derivatives are propagated by exact sum, product and conjugation
   rules. Each degree-eight term changes by at most (1+42h)^8-1 between
   K and physical H: at a physical point, every K entry has modulus at most
   1+42h. The three imaginary factors have degrees two, two, and four;
   their telescoping bound is the same degree-eight bound. Therefore

       |q(K)| > sqrt(m)/8 + 6((1+42h)^8-1)

   excludes the parameter box. No assumption that K is flat is made.
3. **F6 tube.** Choose one of the explicitly verified F6 reference matrices
   L. Bound every normalized row and column norm of K-L over the box. If
   their maximum plus 20h is less than 1/30, (1), the projector-distance
   bound, and the proved F6 tube imply that every represented H is
   quartet-free. Row bounds also allow use after transposition.

The 63 references used by the implementation have parameters in sixth
roots of unity. At least one pair is a Fourier row (a even, b=2a mod 6)
and the other pair obeys c+d=0 mod 3, or vice versa. Every reference is
independently identified with a row/column permutation of F6 by exact
arithmetic in Z[omega]. Completeness of this reference list is unnecessary:
any one valid F6 reference suffices for a tube acceptance.

Floating midpoint calculations only suggest a reference or which corner
to test first. Each acceptance is recomputed with outward intervals.
Resource limits leave open paths. An acceptance at h=0 is permitted;
no test discards physical R=0 points merely for lying on a branch locus.

## Scope of a finished certificate

A complete replayed torus cover proves the joint lifting theorem for
its recorded h and m. Applying it to a native F3 seed cell additionally
requires outward containment in the h phase cube and an outward leading
R cap at most m on the entire cell, including the campaign enlargement.
Arbitrary corner frames additionally require their full transformed
error widths. A radius theorem alone does not constitute a branch-layer
coverage audit.

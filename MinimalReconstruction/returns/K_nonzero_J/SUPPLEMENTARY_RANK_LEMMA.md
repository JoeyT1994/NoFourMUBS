# A universal lower bound on the rank of the squared Hadamard

**Status: PROVED.** No strict-corner coverage, critical-strip classification,
or assumptions on minors enter this argument.

## Theorem

If `H` is a complex Hadamard matrix of order six, then the entrywise square
`H^[2]` has complex rank at least three.

More generally, if `n > 4` and `n = 2 (mod 4)`, every complex Hadamard of order
`n` has entrywise-square rank at least three.

### Lemma 1: at most two orthogonal sign vectors

There cannot be three pairwise orthogonal vectors in `{−1,1}^n` when
`n = 2 (mod 4)`.

Multiply coordinates by the entries of the first vector, making it all ones.
The other two vectors are balanced. If `a,b,c,d` count their joint patterns
`(++),(+−),(−+),(−−)`, the three orthogonality equations imply

    a+b = a+c = a+d = n/2,

and therefore `a=b=c=d=n/4`, which is impossible when four does not divide
`n`. The same conclusion holds for any family of mutually orthogonal phase
vectors whose entrywise squares are proportional: multiply each vector by a
row phase to make those squares equal, and divide all vectors entrywise by
one fixed phase vector. The results are orthogonal sign vectors.

### Lemma 2: an affine function constant in modulus at three circle points

Suppose `u_1,u_2,u_3` are three distinct unit complex numbers and
`|a+b u_l|=1` for all three. Then `a conjugate(b)=0`.

Expanding the squares gives

    Re(conjugate(a) b u_l) = (1−|a|²−|b|²)/2.

If `conjugate(a)b` were nonzero, these equations would put the three
distinct unit points on one real affine line. A line intersects a circle
in at most two points. Equivalently, multiplying the norm equation by
`u_l` gives a quadratic polynomial in `u_l` with three distinct roots,
forcing every coefficient, including `conjugate(a)b`, to vanish.

### Proof of the theorem

Column phases make the first row of `H` equal to one. This preserves both
Hadamard orthogonality and the rank of `H^[2]`. If that rank is one, all
squared rows are proportional, contradicting Lemma 1 because `n>2`.

Assume the rank is two. Choose a squared row `u` independent of the
all-ones row. Every squared row has the form `a_i+b_i u`.

If `u` assumes at least three distinct values, Lemma 2 says that every
squared row is proportional to either the all-ones row or `u`. Thus the
rows of `H` split into at most two classes with proportional squares.
Each class has at most two rows by Lemma 1, so `n≤4`, a contradiction.

Otherwise the nonconstant row `u` assumes exactly two values. Because
every squared row is affine in `u`, the columns of `H^[2]` assume at most
two values. Consequently the columns of `H` split into at most two
classes with equal squares. Column orthogonality and Lemma 1 again give
`n≤4`, a contradiction. This proves the result.

## Consequence for the attached Fourier criterion

The rank hypothesis in the complementary-invariant criterion of
`H_fourier_vanishing/REPORT.md` §0 is automatic for every order-six
Hadamard. Thus its condition (0.2) alone implies all twenty row Fourier
moments vanish. Apply the same result to the transpose to get the twenty
column moments.

In particular, an all-critical Hadamard satisfies (0.2) by the `R=0`
argument in that report §2.2, which uses actual-side identities and no
strict-corner coverage. **Every all-critical order-six Hadamard therefore
has all forty Fourier moments zero, without using the strip
classification.**

This is a necessary condition on a counterexample to strict-corner
coverage. It does not by itself prove that such a matrix is equivalent
to `F6`; that further implication remains unproved here.

## Verification boundary

`verify_rank.py` independently verifies the finite sign-vector assertion
at length six and the exact algebraic identity in Lemma 2. Its symbolic
polynomial arithmetic is implemented with Python integers, and it needs
only the standard library. The proof for general `n = 2 (mod 4)` is the
counting argument above, not an inference from this finite replay.

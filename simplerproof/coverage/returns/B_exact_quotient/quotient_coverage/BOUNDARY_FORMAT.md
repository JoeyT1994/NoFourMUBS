# A finite, executable boundary certificate for Records

## Purpose and limits

`verify_boundary_records.py` proves that the specified finite union of Records
is open and closed relative to the Hadamard equivalence quotient (with Tao
removed). It does not certify quartet exclusion, nonemptiness, the Fourier or
maximum representative, or the global critical-point enumeration.

No actual nonempty atlas data were supplied in this task. This file gives a
concrete format that such data can use, and the verifier rejects missing data
or inconclusive inequalities. Its `--selftest` sample has an empty Hadamard
locus; the sample is an arithmetic regression only.

## Coordinates and Record geometry

Use coordinates x in R^25, indexed by (i,j), 0<=i,j<5. Let Bx be the
horizontal 6 by 6 matrix whose upper-left 5 by 5 block is x, last column is
minus the corresponding row sums, last row is minus the corresponding column
sums, and bottom-right entry is the sum of all 25 coordinates.

Each Record has exact rational reference phases C_r in Q^(6 by 6), so its
reference phase matrix is exp(i C_r), entrywise. A reference need not itself
be Hadamard. This permits exact rational phase references near numerical
centers; physical points are exactly the zeros of the full Hadamard residual.

Two rational symmetric PSD forms Q_t,Q_n have respective ranks 4 and 21.
Their sum is positive definite. The closed tube is

    D_r = {x : x^T Q_t x <= 1 and x^T Q_n x <= 1}.

Both strict inequalities imply interior. The checker requires a rational
lambda>0 with Q_t+Q_n-lambda I PSD, and a rational b>0 with lambda b^2>=2.
These exact conditions imply D_r is contained in the cube [-b,b]^25.

This rational geometry is a sufficient specialization of the general tube
criterion. It does not require an unproved exact rank-21 Jacobian theorem.
Any normal fixed-point bounds or cellwise exclusion certificates may be
attached in a separate format; this checker uses whole leaves as conservative
enclosures of all possible physical points.

## Top-level JSON

```json
{
  "format": "horizontal-boundary-records-v1",
  "arb_precision_bits": 192,
  "records": [
    {
      "id": "record-name",
      "centre_phases": "a 6-by-6 array of rational values",
      "tangent_form": "a 25-by-25 rational matrix",
      "normal_form": "a 25-by-25 rational matrix",
      "lambda_lower": "1/1000",
      "bound": "50",
      "tree": "one tree object, described below"
    }
  ]
}
```

The quoted placeholders for arrays and tree must be replaced by actual JSON
arrays and objects. Rational values are integers or strings such as "-3/7";
floating-point JSON numbers and decimal strings are rejected. All matrix
symmetry, semidefiniteness, ranks and bounding conditions are checked exactly.

## Tree coverage

The root represents the entire declared cube. An internal node splits one
inherited interval at an exact rational point:

```json
{
  "kind": "split",
  "axis": 7,
  "at": "1/8",
  "left": {"kind": "..."},
  "right": {"kind": "..."}
}
```

The split point must lie strictly inside the inherited interval. The left
child gets the closed lower interval and the right child the closed upper
interval, so there is no gap. The two child boxes share the split face.
Every path ends at one of the four leaf types below.

### Leaf 1: source interior

```json
{"kind": "source_interior"}
```

Arb must prove both source quadratic forms are strictly less than 1 on the
entire leaf. The leaf therefore cannot meet the source tube boundary.

### Leaf 2: source exterior

```json
{"kind": "source_exterior"}
```

Arb must prove at least one source quadratic form is strictly greater than
1 throughout the leaf. This excludes the entire closed tube.

### Leaf 3: no Hadamard

```json
{"kind": "nonhadamard", "row_pair": [0, 3], "part": "real"}
```

The row pair must be distinct and increasing. The `part` is `real` or `imag`.
For X=C_r+Bx, the checker evaluates

    sum_k cos(X_ik-X_jk),  or  sum_k sin(X_ik-X_jk)

as appropriate. Its Arb enclosure must exclude zero. This is a component of
the full row orthogonality residual, so the entire leaf contains no Hadamard.

### Leaf 4: transfer into another interior

```json
{
  "kind": "transfer",
  "target": "another-record-name",
  "rows": [0, 1, 2, 3, 4, 5],
  "columns": [0, 1, 2, 3, 4, 5],
  "winding": [
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0]
  ]
}
```

The row and column arrays are permutations. The winding is an integer 6 by
6 matrix and can be omitted when zero. If P,Q denote these permutations,
the exact target horizontal phase is

    v = P_h(P C_r Q - C_s + 2 pi N) + P(Bx)Q.

Take y to be its upper-left 5 by 5 entries. Arb must prove

    y^T Q_(t,s) y < 1,  y^T Q_(n,s) y < 1

over the full inherited source box. The row-plus-column phases discarded
by P_h establish an exact equivalence between the source and target phase
matrices, for every point of the box. Thus every possible physical boundary
point in the leaf has an interior target representative.

The target may technically be the same Record if another permutation/lift
lands inside it. This remains a valid interior witness. One may forbid that
in a producer if the stronger “another Record” convention is desired.

## Why a PASS proves the criterion

Let a Hadamard phase vector lie on a source tube boundary. It lies in the
declared root cube and therefore in at least one leaf. The exact tree ensures
there are no missing intervals or faces. It cannot lie in a source-interior
or source-exterior leaf, and its residual cannot satisfy a no-Hadamard leaf.
It must therefore lie in a certified transfer leaf and has an interior
representative in a target Record. This is exactly the boundary hypothesis
of the clopen theorem in `QUOTIENT_COVERAGE.md`, Section 6.

The checker uses no numerical tolerance. Arbitrarily high precision may make
an otherwise inconclusive decision conclusive, but a failed interval check
always exits nonzero. The checker also does not treat a separate success
message, unspecified enclosure, or expected result as proof data.

## Remaining ingredients for an actual atlas

To invoke global coverage, supply and verify all of the following in addition
to the boundary certificate:

1. The global positive-local-maximum cover of Claim A.
2. Membership of the Fourier class and the exact maximum representative.
3. Closure of the Record union under conjugation (and transposition if using
   the original stated convention).
4. The local quartet-exclusion certificates on every Record cell.

The existing boundary checker establishes none of these automatically.

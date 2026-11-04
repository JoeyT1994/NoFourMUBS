# Classification on the original radius-0.063 seed ball

**PROVED / CERTIFIED:** every completing third basis over the entire
original seed ball 1879 has Conjecture 1 type: the continuous construction
or the isolated Fourier/product triple. The domain is precisely

\[
\theta=\theta_0+M_\theta w,\qquad \|w\|_2\le r,
\quad r=\texttt{0x1.020c49ba5e354p-4}.
\]

This is the recorded binary64 value of 0.063. The original centre,
four coordinates, matrix `Mth`, orientation and radius are retained.
The atlas SHA-256 is
`33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf`.
This theorem concerns seed 1879. Classification of the other seed balls
and the X-ball remains **NOT ESTABLISHED** by this transfer.

## A reusable whole-ball test

Suppose a certified native chart has a horizontal phase representative

\[
Q(w)=P+Uw+\nu(w),\qquad \|w\|\le r,\quad\|\nu(w)\|\le n.
\]

Suppose an all-third-bases theorem is known for the horizontal phase
ball of radius \(R\) about an exact Hadamard \(H_*\). Choose an exactly
equivalent anchor \(e^{iQ_*}\) in the native row and column order and
gauge. The single sufficient inequality is

\[
\boxed{\ \|P-Q_*\|_F+\|U\|_2r+n<R.\ }
\]

It covers every point of the native ball, including its boundary.
There is no restriction on the third basis beyond the triple equations.
The triangle inequality proves \(\|Q(w)-Q_*\|_F<R\). Row/column
permutations and conjugation preserve this norm and the horizontal
space. Constant phase gauges carry the anchor to \(H_*\) without
changing the phase increment. Apply the same left row operation and
conjugation to the third basis. Independent column phases and
permutations of the two bases are allowed. The transformed triple
therefore satisfies the local theorem, which proves the assertion.

Even if stored `P` and `U` have tiny nonhorizontal rounding errors,
C1 controls an actual horizontal representative. The displayed norm
bound remains valid; exact horizontality of stored floats is unnecessary.
Alternatively project the increment horizontally, which cannot increase
its norm. Entrywise integer windings of the dephased anchor are harmless:
horizontal projection changes their exponentials only by row/column gauges.

The comparison must include the **distance between centres**. The fact
that every atlas enclosure has radius below 0.153 does not alone put
those enclosures into the same theorem ball.

## The exact anchor and this ball's bounds

The supplied theorem's centre has entries \((H_*)_{rc}=i^{C_{rc}}\), with

```
C = 0 0 0 0 0 0
    0 2 3 1 3 1
    0 3 2 3 1 1
    0 1 3 2 1 3
    0 3 1 1 2 3
    0 1 1 3 3 2
```

Use zero-based row order `(0,1,2,4,3,5)`, column order
`(3,5,4,2,1,0)`, and complex conjugation. Dephase the result.
The checker performs these operations with integers modulo four and
compares the starting matrix with the supplied exact algebraic
`exact_fibre.center()`. This gives the same anchor as
`known_family.NATIVE_1879` at zero parameters; that independent equality
is tested using exact fourth roots of unity.

Choose entrywise multiples of \(2\pi\) near the native dephased phase
centre and project horizontally to obtain \(Q_*\). The complete integer
quarter-turn list is stored in the receipt. Floating-point rounding only
proposes these integers; every choice is an equivalent exact anchor and
the ensuing norm inequality is checked in Arb at 192-bit precision.

The certified bounds are

| Quantity | Strict upper bound |
|---|---:|
| \(\|P-Q_*\|_F\) | 0.056472877175 |
| \(\|U\|_2r+n\) | 0.064400860521 |
| Their sum | **0.120873737696** |
| Supplied theorem radius | **0.153** (exact) |

Thus the inclusion has more than 0.032126262304 radians of margin.
`transfer_r0153.py` freshly certifies native C1, including the recorded
remainder, before accepting this bound. The frame norm is an Arb-verified
positive-definite Gram bound; numerical SVD only proposes its value.

## The all-K theorem used here

The input is the user-supplied
`TC_local_completeness_R0153_handoff_2026-10-27.zip`, SHA-256
`40d2bef15e1ece6c73805e9adf0bdf16c6a11ff495f78baf04072c11646026ed`.
Its [proof](results/r0153_supplied_PROOF.txt) is retained verbatim.
The theorem is quantified over **every completing K for every Hadamard**
in the full 25-dimensional horizontal H-phase ball of radius 153/1000.

It first tightens the H-normal component to 0.0088, then exhausts the
five-dimensional torus of possible unbiased rays. Its complete cover,
orthogonality graph and exact clique search localize all third bases.
Correlated contraction bounds and interval-certified orthogonality
filters leave ten known basis patterns. A grid of 793 fixed reference
balls then forces an actual balanced order-three symmetry. Section 8 of
the supplied transverse [CHECKPOINT.md](reference/r0153/CHECKPOINT.md) recognizes that symmetry as
the continuous construction or the isolated Fourier/product case.
The source proof, including this recognition argument, is a mathematical
dependency; a status string alone is not its justification.

The local replay must finish with `LOCAL_H_BALL_COMPLETENESS_PASS`.
The transfer checks all seven intermediate report statuses and their
radius interfaces, the 33 direct theorem source/input hashes, and a
larger pinned set of 114 supplied sources, analytic documents and
proposal inputs, including every Python source in the archive.
The Stage C implementation is the preserved supplied version, SHA-256
starting `e019ec57`; substituting the different upstream version is rejected.

The inherited Stage C cover uses binary64 computations with proved
conservative error allowances in the supplied
[RIGOUR.md](reference/r0153/RIGOUR.md) and [STAGEC.md](reference/r0153/STAGEC.md).
These are error-enclosure decisions, not acceptance of unbounded float
values. Its trigonometric tables are rounded from Arb, with comparison
margins of 1e-7 against the stated error bound below 1e-10. Subsequent
filters, norm bounds, contractions and reference-ball gaps use Arb/exact
arithmetic. The new transfer itself uses only strict Arb acceptance.
The result relies on that supplied error-budget proof; it should not be
described as a replay in which every primitive operation uses Arb.
The four supplied analytic documents retained here are verbatim copies;
their original paths and SHA-256 values are in `r0153_binding.json`.

## Reproduction

Extract the supplied archive into a fresh directory. Install its pinned
requirements in a separate environment (`numpy==2.2.6`, `scipy==1.17.0`,
`python-flint==0.9.0`, `sympy==1.14.0`). Set `HANDOFF` to the extracted
`TC_local_completeness_R0153_handoff_2026-10-27` directory. From this
repository root run, without Python's `-O` option:

```sh
python proof/theorems/TC_triple_classification/seed_method/transfer_r0153.py \
  --handoff-root "$HANDOFF" \
  --output proof/theorems/TC_triple_classification/seed_method/results/seed1879_r0153_transfer.json
python -m unittest discover -s proof/theorems/TC_triple_classification/seed_method -p test_transfer_r0153.py -v
```

The default command reruns the entire supplied local theorem and writes
its log alongside the output receipt. `--check-receipt` instead validates
an already replayed supplied receipt and its sources; it still freshly
checks native C1 and the whole-ball inclusion. Failures write
`NOT ESTABLISHED` and exit nonzero. The archive is an external, pinned
reproduction input; its hundreds of megabytes are not duplicated in Git.

The earlier 512-node generic phase-box attempt remains an incomplete
run. This transfer closes the original ball through the larger certified
H-neighbourhood, so completing that earlier subdivision is unnecessary.
The earlier radius-1/160 result remains valid on its smaller domain.

# Independent review of physical row and side-cap modules

Status: source/statement/receipt review passes within the stated scope.
The four modules below use actual entries of a single matrix `H`, with
`Physical H` meaning all entry norm-squares equal one and the full scalar
identity `HH* = 6I`. `Dephased H` fixes the actual first row and first column.
These definitions were read in the imported `CentiradianPhysical.lean`.

| Module | SHA-256 | Receipt reviewed |
|---|---|---|
| `RowPairDefect.lean` | `d52b847f4ed88bd7fd5b35d5f1008c7759035cfd4dab9959eac96c313f0fd213` | `check-row-pair-02` |
| `HalfRowBalance.lean` | `60a18c9635313d43c1f5890db72bbe5db87fca8d9bccc9a75196abbf78d14dfb` | `check-half-row-02` |
| `SideDeterminantCap.lean` | `a664b89b93260fd3ab5e3a95989c19d0352e64a7cd168d0efeee0391c17d67e8` | `check-side-cap-02` |
| `PhysicalSideCap.lean` | `01a458ee75d8de557b896a1af6e9843aab3d8e2210c1eec30f84755f631f1854` | `check-physical-cap-01` |

The hashes of the current sources match their successful receipt hashes. Each
printed theorem dependency list contains only `propext`, `Classical.choice`,
and `Quot.sound`. All receipts correctly retain `physical_proof_admission:false`.

`RowPairDefect` derives the whole complementary triple's exact squared defect
from full-row orthogonality and the first two seed entries. It does not postulate
a reconstruction or a nearby carrier. Its exact repeated-row consequence keeps
all three nonnegative norm-squares before concluding each entry is minus one.

`HalfRowBalance` uses the actual physical inner product with row one, and the
actual row sum, to prove the displayed identity. The error is the literal
entrywise difference from `(1,1,1,-1,-1,-1)`. Its norm bound has the correct
factor two and all six error entries remain present.

`SideDeterminantCap`'s explicit `sideDet` and `sidePerm` are respectively the
determinant and permanent expressions for the block with rows `(1,1,1)`, x, y.
The determinant row-shift identity is exact. The cofactor norm bound, three-term
Cauchy bound and permanent norm bound give the advertised factor 72. `sideQ`
uses the conjugate phase product; on unit entries this equals division by the
product, but an explicit link to any separately defined q must still be proved.

`PhysicalSideCap` binds x,y to rows one and two in the actual complementary
columns 3,4,5, and discharges the complementary defect premise from the seed
defect theorem. This faithfully proves the stated `sideQ` cap. It does not yet
prove the universal R/q identity or propagate maximality to every block, and
it does not claim to do so.

No local theorem assumes the desired Fourier proximity or the exclusion of a
physical carrier. These are valid bounded formal building blocks, not an
integrated proof of the 36-box exclusion.

## Additional invariant bindings

I also reviewed these two current sources, their successful receipts and the
imported `SignedDeterminantFoundation.lean` definitions.

| Module | SHA-256 | Receipt reviewed |
|---|---|---|
| `QSignedBinding.lean` | `3cde7bd289b2844b982fc62d735aaaeb7e0d5ba8d82d2f5b6e5781abbe1b23f6` | `check-q-binding-04` |
| `SideQNormalization.lean` | `52894f44a39c2e556486b3634d8dd799b8bd84f0c95c1b2511bf41b4a6927071` | `check-side-q-normalization-01` |

`dephasedQ` is the literal permanent times determinant squared divided by the
four-entry monomial for `[[1,1,1],[1,a,b],[1,c,d]]`. The signs of its determinant
match direct expansion. `rawDet_eq_q_difference` assumes all four entries have
unit norm-square, legitimately converts conjugates to inverses, and proves the
full Laurent identity. Its imaginary-part corollary gives the factor two with
the correct sign. I found no confusion between R of a corner and its complement.

`sideQ_eq_dephasedQ` uses the actual row normalization x/x0 and y/y0. All six
unit-entry premises are retained and the nonzero denominator facts are derived,
not assumed separately. `normalized_entry_unit` verifies the four normalized
entries before `sideQ_signed_binding` applies the previous identity. These
theorems close the local sideQ-to-q normalization issue noted above. They leave
the later R-complement/maximality binding to its own theorem, as intended.

Both receipts report success and standard axioms only; linter warnings concern
redundant tactic syntax, not admissions or proof obligations. This remains a
statement/dependency/source review rather than a new full replay of every
imported source module.

## Actual complement and maximal-witness binding

`PhysicalQMaximal.lean`, SHA-256
`7dfc186793b397cf248f28077828ef21917f73696e7ab1ab88dcc923cae8bd32`,
has a successful `check-physical-q-02` receipt with four standard-axiom theorems.
I read the source, receipt, and imported `SignedCornerPhysical.lean` definition
and theorem statements. The complementary columns are literally 3,4,5 and their
finite-set complement is proved to equal the leading columns. The factor-four
identity therefore binds `leadingR H` to the actual complementary `sideQ`.

The witness theorem applies the already checked complementary-corner signed
square identity and non-strict maximality. The four q entries are exactly
`H i 1`, `H i 3`, `H j 1`, `H j 3` after actual dephasing; no arbitrary four
parameters are substituted. Its smallness premise is the physical seed defect,
not the desired q bound or a neighborhood assumption.

One explicit integration detail remains: the witness theorem quantifies over
`0 < i < j`. The later orientation construction must retain this index order,
or invoke a checked invariance under swapping the two noninitial rows. q itself
is invariant under that swap, since the determinant is squared. This is a finite
ordering obligation, not a defect in the current theorem.

## Sharp q Lipschitz bound

The reviewed `WordLipschitz.lean` source has SHA-256
`8c9890123f2dee19e13e94b7d88029e2532afcdca0a9e3662ab8d24c8021aab8`
and passed `check-word-lipschitz-01`. `QLipschitz.lean` has SHA-256
`96b48c4e1297a669063ed34fd9429b46bf7dcaa005142f2655f99372232642d1`
and passed `check-q-lipschitz-01`. All printed dependencies are standard axioms.

The product telescoping estimate requires exactly the two unit factors used in
its proof. The induction supplies these from the two unit input vectors.
Conjugate letters preserve their difference norm, so negative Laurent powers
are handled without a singular denominator estimate. The generated word table
is bound to the actual `rawDet` by a kernel-checked polynomial identity for
arbitrary complex inputs. Its total cost is exactly 48 times the sum of four
coordinate costs, also proved for arbitrary real costs.

The final q theorem uses the imaginary part of `rawDet=q-conj(q)` and divides
the factor two. Thus the coefficient 24 applies to Im(q), as required; it is
not incorrectly applied to q itself. Its metric is coordinate chord distance,
and it has no differential regularity, selected argument, or branch-cut premise.
These statements match the local proof's required four-variable witness bound.

## Fourier witness algebra

`FourierWitnessAlgebra.lean`, SHA-256
`369af4353d0695916e23a6b903f8a10c3d6a3f99e247c5373ba3868abf3379f9`,
passed `check-fourier-witness-03`. Its three printed theorem dependency lists
contain only standard axioms. I independently read the source and receipt.

The row-swap identity is unconditional and closes the ordering issue identified
above once explicitly applied. The mixed q identity keeps actual unit complex
numbers w,x,y and the exact cubic-root condition `w²+w+1=0`. The proof clears
only `w³x²y²`; every factor is proved nonzero from its unit-norm premise. The
polynomial remainder is exhibited as a multiple of the root relation.

The final imaginary-part formula uses the previously checked rawDet/q identity
with all four unit entries, including w², and correctly extracts the factor two.
It yields `3*(Im(x² conj y)+Im(y² conj x)-Im(xy))`. Substituting the four actual
paired signs and exponential phases remains a separate integration step. No
sign census or trigonometric conclusion is silently assumed by this module.

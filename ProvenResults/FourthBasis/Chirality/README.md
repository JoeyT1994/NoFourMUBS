# Four-basis chirality test

Fix a complete physical MUB triple `I`, `H/sqrt(6)`, `K`, and let
`P_α=u_αu_α†` run over its 18 ray projectors.

## Statement

Let `Q` be a rank-two orthogonal projector with `Tr(QP_α)=1/3` for all 18
rays. Put

    c_αβγ(Q) = Im Tr(QP_α QP_β QP_γ),     G_αβ = Tr(QP_αQP_β) − 1/18.

1. **Split criterion.** `Q=P_++P_-`, with `P_±` rank-one projectors onto rays
   unbiased to all three bases, if and only if every `c_αβγ=0`
   ([PROOF.md](PROOF.md) §2).
2. **One scalar.** `e_3(G)=8 det S=2 Σ_(α<β<γ) c_αβγ²`, where `S` is the
   compressed Bloch frame operator. The criterion is therefore the single
   nonnegative degree-six equation `e_3(G(Q))=0` (§3).
3. **Uniqueness and recovery.** `rank G ≥ 2`. At a passing `Q`,
   `rank G = 2`, the split is unique up to exchange, and it is recovered by a
   normalized commutator `J=i[T_α,T_β]/sqrt(κ)` with `P_±=(Q±J)/2` (§4).
4. **Fourth-basis criterion.** A fourth basis exists if and only if there
   are orthogonal rank-two `Q_1,Q_2`, with `Q_3=I−Q_1−Q_2`, such that all
   three planes are balanced and pass the split criterion (§5).
5. **Separation.** An exact order-six product triple has three balanced
   orthogonal planes, and each plane passes every *two-basis* refinement. The
   joint three-basis chirality fails, with `e_3=1/27`. An exact order-twelve
   quartet passes, and its pair is recovered (§6).

## Status

**Proved.** The exact controls check the identities and the two examples. The
test is a reformulation. It follows from the fourth-basis equations and is
not independent of them. No seed region is excluded, and the simultaneous
system in item 4 is open.

## Dependencies

- Items 1, 2, 4 and 5 are unconditional.
- Item 3: PROOF.md §4 proves `rank G≥2` from **no-zero3 of H**. On quartet
  transitions, no-zero3 follows from the published Fourier and Tao
  exclusions ([../../EdgeRigidity/](../../EdgeRigidity/),
  [../../FourierBlocks/](../../FourierBlocks/FourierBlockClassification.md)).
  *Import observation:* the hypothesis is unnecessary. The 12×12 principal
  block of `G` on the rays of `I` and `H` is `G12/18` of
  [Completion](../../Completion/CRITERION.md). Completion's Theorem 1 gives
  `rank G12 ∈ {2,3}` for every mutually unbiased pair with no minor
  hypothesis, so `rank G ≥ rank G12 ≥ 2` unconditionally. This strengthens
  the scope and changes no proof.

## Comparison with the active Completion criterion

[Completion](../../Completion/CRITERION.md) works with four flat rays over the
*pair* `I,U`. It compresses 12 rays to the rank-two complement `Π` and shows
that a flat two-ray completion exists iff `rank G12=2`, uniquely. This is the
same Bloch-plane mechanism. What is new here:

- The known data are a **full triple**, with 18 rays including `K`, and the
  plane `Q` is any balanced plane of a putative fourth basis. It is not the
  complement of four given rays.
- The rank drop is written as the vanishing of **phase-sensitive cubic
  invariants**, `c_αβγ=Im Tr(QP_αQP_βQP_γ)=2 r_α·(r_β×r_γ)`, and summarized by
  `e_3(G)=2Σc²`. Completion states only the rank condition `e_3(G12)=0`.
- The **fourth-basis criterion** is stated through three orthogonal planes,
  each of which must pass.
- The **separation example** shows that pairwise (two-basis) refinements do
  not glue: all pass, the joint test fails.

## Provenance

`04_algebraiccoreV2/fermionic_fock/four_basis_chirality/{PROOF.md, verify.py, certificate.json}`,
dated 19 September 2026. The mathematics is unchanged. The verifier now
requires `certificate.json` and exits nonzero on a mismatch.

## Files and verification

| File | Role |
|---|---|
| [PROOF.md](PROOF.md) | Theorems and proofs |
| `verify.py` | Exact SymPy checks: the Pauli triple identity, the order-six separation control and the order-twelve positive control |
| `certificate.json` | Expected control values |

    python3 verify.py      # about 1 s

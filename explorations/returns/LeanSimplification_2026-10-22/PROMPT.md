# Assignment to the Lean agent

## Goal

Formalize and integrate the simplifications in `BRIEF.md` into the user's existing no-four-MUBs development. Prioritize complete, reusable lemmas with explicit hypotheses and audited dependencies. Preserve the distinction between mathematical reductions, certified computational exclusions, and the still-open task of deriving a uniform analytical obstruction.

Read `DEPENDENCIES_AND_STATUS.md` before changing a theorem statement. It records qualifications that were missing or implicit in the source discussion.

## Inputs and first actions

1. Inspect the actual repository instructions, pinned Lean/mathlib versions, and current manuscript. Use the existing project and build system.
2. Locate the definitions of the strict seed domain `Ω`, the invariants `R` and `Ψ`, the normalized side Gram map, side labels and matching, Hadamard equivalence, and the certification tangent/normal decomposition.
3. Locate the existing connectedness, Gram-identity, flatness, classification, clopen-exclusion, and Fourier/Tao exclusion theorems. Record their precise statements and axiom dependencies.
4. Map the proposed lemmas in `LEAN_TASKS.md` to existing declarations. The suggested names in that file are new names, not claims about APIs already in the repository.
5. If some source material is missing, complete the independent inner-product and projector lemmas first. Report the exact missing integration dependencies without replacing them with axioms.

The manuscript and Lean project are not bundled in this archive. The supplied discussion is the source of the manuscript-specific formulas. Do not silently treat that discussion as a proof object.

## Priority A: replace the side-fiber classification by one fiber count

Prove the elementary normalized side classification over

\[
E_0=\begin{pmatrix}1&1&1\\1&1&-1\\1&-1&1\end{pmatrix},
\qquad
B_0=\begin{pmatrix}1&1&1\\-1&i&-i\\i&-1&-i\end{pmatrix}.
\]

Every side is a column permutation of `B₀` or its complex conjugate. Prove all twelve ordered sides are distinct. Using the actual `Ψ` definition, check the reported value `Ψ(B₀)=56−8i` and invariance under column permutation, so that there are six sides for each sign.

Then prove that the signed incidence projection is proper and locally a real-analytic diffeomorphism over the exact strict domain. Prove surjectivity by a nonempty clopen image argument, or prove local constancy of fiber cardinality directly, including empty fibers. Propagate the count across independently established connectedness of `Ω`.

Conclude existence and uniqueness of each prescribed-label side modulo column permutations, local real-analytic ordered representatives, and continuity of the unordered side. Obtain vertical sides by transposition with the repository's exact normalization conventions.

Do not assume the radical constructor is surjective or unique to establish the new uniqueness theorem. Do not prove connectedness using the very uniqueness theorem being established.

## Priority B: strengthen the certificate estimates

Formalize the direct normal bound, exact orthogonal shell, and two boundary-transfer inequalities in `BRIEF.md` §2. In particular, prove that every transformation used by a transfer is an isometry on the normed gauge space. Preservation of that space alone is insufficient.

Use these lemmas to simplify the checker if its interfaces permit. Preserve old results until the changed checker and affected certificates replay. Check the actual definitions before asserting that the new bound dominates the old bound or that `r_F=ρ`. Remove old small-radius or discriminant hypotheses only from results whose new proofs no longer need them.

Acceptance for a checker change requires a successful replay of the affected stored certificates under the revised checker. If data or replay resources are unavailable, deliver the proved estimate and integration patch, and label replay as pending.

## Priority C: formalize the exact quartet-completion reductions

Prove:

- Two mutually unbiased orthonormal five-frames, unbiased to the two fixed bases, complete automatically to a quartet.
- The eight-ray criterion using two rank-two complement spaces `L_P` and `L_Q`.
- The real dimension split: zero space, two nonorthogonal lines, or a pair admitting a zero pairing.
- The equivalent `16×3` real kernel formulation and the scalar pairing of kernel vectors, if it simplifies integration.
- The trace-witness obstruction.

Both necessity and sufficiency are required for the eight-ray criterion. Keep normalization, Hermitianity, real linearity, support, trace zero, and every unbiasedness constraint explicit. Do not assume the existence of missing rays in the forward construction from `X,Y`.

The global target is to prove the no-completion alternative for **every** admissible pair of four-frames over the required domain. This package does not provide that additional theorem. An equivalence or isolated example must not be reported as a global exclusion.

## Priority D: simplify structural dependencies

Prove the singular-minor-to-Hadamard-subblock lemma and the character reduction of the cube-root enumeration. Verify the finite four-case table in Lean, including explicit equivalences to the repository's Tao representative.

Attempt the global equality of the two matched-completion images only after proving the normalization, invariant transformation, strict-domain membership, label-swap, and conjugation facts listed in `BRIEF.md` §4.

Refactor the main no-four argument to use the weaker classification statements only if the actual repository already supplies, or you prove, all required inputs. In particular, the set `W` must be clopen in the **full Hadamard quotient** and contained in the nonextendible set. Connectedness alone does not establish that.

## Optional, separate branch: analytic continuation for matched flatness

Prefer the existing direct algebraic flatness proof if it is already formalized. The continuation route is an alternative, not a prerequisite for the other work.

Formalize the abstract analytic identity argument conditionally on an actual nonempty four-dimensional open patch. Separate the two sign defects `F₊` and `F₋`; prove the second by its own patch or by a proved conjugation relation. Do not infer two-sheet flatness from one-sheet continuation without that bridge.

Do not insert Bondal–Zhdanovskiy's theorem as a hidden axiom. If no formal proof is available, keep the external local-manifold hypothesis visible and report the theorem as conditional. A four-dimensional tangent space alone is inadequate.

## Required deliverables

1. An implementation patch and all new Lean source files, integrated with the existing project.
2. A concise proof report giving each new declaration, the exact result, hypotheses, dependencies, and status.
3. Build output identifying the repository revision and toolchain used.
4. `#print axioms` results for every exported main theorem, with special attention to newly introduced dependencies.
5. Certificate replay output for any changed checker, or an explicit pending status.
6. A precise list of unresolved statements. Separate missing source definitions, external prerequisites, unformalized proofs, failed checks, and genuinely unproved mathematical claims.

## Proof-quality requirements

Do not report success for declarations containing `sorry`, `admit`, `sorryAx`, new postulates, or an assumed version of their own conclusion. Do not silently weaken the requested quantifiers, omit a sign branch, discard a boundary condition, or substitute finite sampling for a universal statement.

Use the project's established proof policy. Record standard Lean logical axioms as part of the audit rather than confusing them with a new mathematical assumption. Exact Python checks in this archive are auxiliary checks only; they are not kernel certificates.

Stop optional expansion once the requested lemmas are proved and the affected integration gates pass. Do not undertake an unrelated reclassification of order-six Hadamards or a full new atlas computation.

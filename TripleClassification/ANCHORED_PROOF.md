# Anchored-column exclusion: one pattern, the whole sub-ball

This note covers the third rule by which the tree auditor may close a cell the certifier left open. The theorem is
the collaborator's (report of 29 October 2026, "Excluding a phantom pattern using two narrow columns"). Below are its
statement, how the atlas produces its inputs, and what `code/audit_select.py` checks. Labels: **PROVED**,
**INHERITED** (from the certifier's review), **CHECKED** (by the auditor).

## 1. The statement

Fix a sub-ball record S and one pattern of the frozen certifier's complete cover for S (six colours, one per column
of K). The certifier supplies, **INHERITED**:
- H's enclosure Q(w) = Q₀ + U·w + ½H₂[w,w] + X·ξ, with ‖w‖ ≤ r and ‖ξ‖ ≤ τ (C1 ok and normal form CERTIFIED);
- for each column k of the pattern, a centre v0_k and phase radius pr_k: every third basis in the pattern has column
  phases V_k (mean-zero gauge) with ‖V_k − v0_k‖₂ ≤ pr_k. This relies on the complete cover, so it needs the Stage C
  magnitude preconditions.

Choose two **anchor** columns a₁, a₂ and one **wide** column c. Every third basis in the pattern makes the real
ten-vector

  F = (Re a₁*k, Re a₂*k, Im a₁*k, Im a₂*k, (|H_j*k|² − 6)/6 for j = 0..5)

vanish for k = column c.

**Theorem (PROVED, collaborator).** Suppose `anchored_column_certificate.check(snapshot, proposal,
rebuild_model=True)` returns `EXCLUDED_GIVEN_INPUT_ENCLOSURES`. Then F has no zero for any H in S's ball, any anchor
columns in their recomputed tubes, and any wide column in its phase ball. Hence the pattern holds no third basis
anywhere in the sub-ball.

The checker:
- rebuilds H's normal form from the record;
- recomputes both anchor tubes from their phase balls with the frozen `native_columns` contraction;
- proves a global capture of the wide column, in three steps down to radius 0.03, by a monotonicity bound
  sym(P·D_xF) ⪰ mI, uniform over H and the anchors;
- then shows a fixed row combination λ·F is bounded away from zero on the captured ball.

All acceptance inequalities are Arb at 160 bits. Floating point only proposes P, λ and the expansion point. The full
derivation is the collaborator's report, `ANCHORED_REPORT.md`. `code/anchored_column_certificate.py` is their checker; the only change is reading the frozen tree's
location from `TC_ROOT`.

## 2. Producing the inputs: `code/anchored_run.py`

For each listed sub-ball, the runner repeats the certifier's own setup on the record, with the same calls in the same
order as `run.run_ball`:
1. `patches.normal_form(Ball(record), prec=160)`;
2. `native_cover.propose_roots`, then `complete_cover`;
3. `contract_patterns`.

So its pattern list and numbering are the certifier's. For each listed pattern it then:
- writes a `tc-pattern-snapshot-v1` file to a private temporary directory, with H's model and each column's v0, T,
  epsilon and phase radius as Arb strings (`arb.str(radius=True, more=True)`; Arb guarantees the parsed string
  encloses the ball);
- takes the two narrowest columns as anchors, if both have radius below 0.1;
- tries the other columns as the wide column, narrowest first, until one certificate is accepted.

Each receipt carries:
- the checker's own output (record hash, pattern, columns, anchors, the Arb margins, and the SHA-256 of every frozen
  file it used);
- the sub-atlas SHA-256, the pattern's six colours and the pattern count;
- the hashes of the checker and the runner.

**Refinement.** `code/tree_build.py` skips the cells anchored receipts close when it builds the next layer
(`anchored_discharged_parent_cells`), and `code/rusty/chain_v2.sh` runs the anchored check on each layer before
refining it. Only efficiency rests on this: the auditor re-derives every closure and refuses a layer that leaves a
needed cell unrefined.

## 3. What the auditor checks

With `--gamma-rules ...,anchored`, a cell whose certifier row is NOT ESTABLISHED, with C1 ok and normal form CERTIFIED,
is closed only when every pattern the certifier left open is discharged. A pattern is discharged by a score receipt
(`GAMMA_PROOF.md` §5) or by an anchored receipt that meets all of the following (**CHECKED**):
- status `EXCLUDED_GIVEN_INPUT_ENCLOSURES`, schema `tc-anchored-column-receipt-v1`, and H rebuilt from the record;
- the checker and runner SHA-256 equal the pinned values (`--anchored-sha`, `--anchored-runner-sha`);
- the same sub-atlas (SHA-256), sub-ball index and record (SHA-256) as the row;
- a pattern count equal to the row's `patterns_after_column_filter`, with the row listing every pattern;
- the pattern's six colours equal to the row's `colors` for that pattern number, the wide column and anchors distinct,
  and their colours consistent;
- every frozen file the checker names has the SHA-256 of the frozen tree's copy;
- the receipt's Arb inequalities read back as stated (each capture step's lower eigenvalue bound > 0 and capture
  bound < its accepted radius, and transverse margin > 0). This is a consistency check; the checker proved them.

**Stage C.** As for every cell closed by a rule, the cell's record must pass the Stage C preconditions
(`TREE_PROOF.md`), checked by `code/assemble.py` and `code/verify_ball.py` from the auditor's list of discharged
cells.

## 4. Where it applies, and where it does not

It needs two genuinely narrow columns. On the open balls (29 October, NUMERICAL counts from the receipts):
- **It excludes every open pattern seen so far in the deepest layers of 282 (L9), 1010 (L7) and 678 (L6), and most of
  918 (L5).** One sub-ball's setup takes about 5 s, and one check about 0.7 s.
- **In shallow layers (L4) it mostly fails:** H's cell is too wide for the monotonicity bound.
- **In 1217, 641, 815, 1089 and 1016, almost every open pattern has no narrow pair** (every column's radius is
  0.25–0.8). The method does not apply there. That is the remaining obstruction, handed to the collaborator
  (`phantoms/README.md`).

## 5. Points for the reviewer

1. The capture theorem and the monotonicity lower matrix (report, "The global capture theorem" and "Certifying
   monotonicity").
2. The forcing bounds with the shared H motion, and that the anchor errors and normal remainder are all included
   (report, "Keeping the common H motion").
3. That `anchored_run.py` reproduces the certifier's pattern list exactly (the auditor checks count and colours, not
   the phase balls themselves).
4. That `phase_radius` from `native_columns.contract` bounds ‖V_k − v0_k‖₂ for every zero, the same input as
   `GAMMA_PROOF.md` point 2.

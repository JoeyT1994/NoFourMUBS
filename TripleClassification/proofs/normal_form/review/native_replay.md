# Review: E1′, E2′, E3, P2, proposal status, and replay integrity

Reviewed sources: `proposal/PROOFS.md`, the three files in
`code/TripleClassification/hardballs_antigravity/`, the frozen native code,
`refs/NATIVE_PROOF.md`, and `refs/REVIEW_of_P1_P2_round2.md` in the uploaded
`TC_antigravity_review_20261102` package. This review is of represented cell
branches. It does not supply dyadic-cell containment, original-ball branch
identity, or Stage C's input guard.

## Verdicts

| Item | Verdict |
|---|---|
| E1′ weak-ray strong cap | Pass |
| E2′ per-colour split tube | Pass |
| E3 recursive core/outer peel | Pass |
| P2 affine native preconditioner | Pass; matches the previously reviewed argument |
| Joint Gauss–Newton and strong polishing | Proposal only; no exact-root assumption enters acceptance |
| Original advertised zero-floating-decision replay | False as a literal description; qualified and hardened in the repair |
| Original certificate completeness/identity protocol | Insufficient; runner must reject mismatched or incomplete certificates |
| Outward `fmax` in the new witness | Correct for nonempty finite inputs; defensive guards added |
| Positive-part upper cap in `curved_search` | Generic interval defect repaired by maximizing outward endpoints |

The independent P1 audit found a separate proof-critical sign error in the
combined quadratic matrix. At the root reviewer's request, this agent also
applied that repair to the owned source files; the derivation and coefficient
regression are supplied by the motion/Gram review.

## E1′: weak-ray centering encloses the same colour product

For any proposed weak vector `w0`, set `zeta0=(0,w0)` and `x0=T*zeta0`. For
every point in the colour product,

\[
\|(T^{-1}x)_s\|
\leq\|T^{-1}(x-x_0)\|+\|T^{-1}x_0-\zeta_0\|
\leq\|T^{-1}\|\sqrt{\sum_c r_c(w_0)^2}+\varepsilon_{w_0}.
\]

Each radius is a maximum over **all** retained bin centres of that colour,
plus the original closed-bin radius. Thus the choice of `w0` need not be
accurate, optimal, or a solution. It only changes the quality of an enclosing
bound. The code takes the minimum of two valid upper caps: the original full
radius and this translated cap.

In exact arithmetic `T^{-1}T*zeta0-zeta0=0`; retaining its computed interval
norm is conservative. The inverse is certified by Arb's matrix inverse. A
binary64 proposal for `T` is treated as an exact dyadic matrix, with the
Helmert factors evaluated by enclosing ball arithmetic.

The independently reviewed 64-direction support cap for the weak norm is
unchanged. Integer windings merely select lifts of entire closed phase bins.
Any integer choice preserves the represented physical columns.

## E2′: the tube passed to native contraction is valid

For colour `c`, the phase error relative to the affine moving reference is

\[
e_c=W_6(Tz)_c=W_6(T_{s,c}z_s+T_{w,c}z_w).
\]

The Helmert isometry gives

\[
\|e_c\|\leq\|T_{s,c}\|\|z_s\|+\|T_{w,c}\|\|z_w\|.
\]

Since `z_s=ztilde_s+q2(w)+q3(w)`, the cubic coordinate bounds imply the
advertised bound with `s_u+kap_q*w_u^2+kap_q3*w_u^3`. Taking separate maxima
of the two operator norms over all six colours is valid, although these
maxima can occur at different colours. `curved_search` tests this quantity
strictly against the selected tube radius, and `force` passes that radius as
every column's `epsilon`. Its carrier extraction uses the correct row-major
indices `6*r+c` from `E*T*Lam`.

This conclusion is conditional on the corrected P1 localization inequality.
It does not independently repair an error in that preceding inequality.

## E3: coverage and graph consistency

The core branch contains tuples whose colours from `scol` onward all belong
to the chosen core. Otherwise, a tuple belongs to the branch indexed by its
first outer colour. This is a disjoint exhaustive partition regardless of
how the core set was chosen. In particular, the predicate `not (reach>tau)`
can place interval-uncertain bins in the core without any soundness problem.
No assertion that every core bin satisfies `reach<=tau` is used.

Arc consistency removes a vertex only if it has no neighbour in another
colour. The six vertices of any actual clique always supply one another's
required neighbours. Induction over the pruning rounds therefore preserves
every actual completion. The threshold and starting-colour recursion is
finite: within a threshold the next starting colour strictly increases, and
after colour six the threshold index increases.

The implementation's indexing is consistent. `valid_labels` is applied to
the fine-bin graph in original colour-major order. `fine_patterns.refine`
stores each colour's surviving bin indices in that same original order.
Thus the recomputed per-colour offsets index the restricted graph correctly.
The `order` permutation affects reference-column placement; `r_flat` maps
its reaches back to original colour-major positions before partitioning.

Replay reconstructs every branch. The repair additionally rejects a stored
leaf set that differs from the leaves actually discharged; extra archived
leaf names cannot silently conceal a changed partition.

## P2: exact correspondence with the reviewed native contraction

Normalize only the two proposal substitutions in `moving.parts`: the stored
winding and the stored pseudoinverse. Its first 43 arithmetic AST statements
then match the frozen native `moving_symmetry.prove` exactly. In particular,
the Hessian, signed endpoint average, and integrated Taylor remainder
calculations are unchanged.

Let `V(u)=sum_k u_k V_k` and let `D` collect the inverse defect, constant
variation, Hessian error, and remainder. The exact right factor in each
`V_k` gives `V_k E=V_k`. Native covariance at the canonical average gives
`A0 F(xbar)=0`. Hence for `Pi=I-V(u)` and `A(u)=Pi*A0`,

\[
E-A(u)ME=V(u)^2-\Pi D.
\]

All 16 **ordered** products `V_j V_k` occur in the implemented 72-by-1152
concatenation. The coefficient vector is `u tensor u`, of norm `||u||^2`.
The resulting bound is therefore

\[
q_{P2}=\mu r^2+(1+\nu r)(\eta+\|\Delta_c\|+h+R).
\]

The preconditioner depends on the selected solution's fixed `u`, not on the
integration variable along the segment, so no derivative of it is missing.
The implemented acceptance uses the valid strict disjunction
`q_native<1 or q_p2<1`. It does not assume either rounded bound is always
smaller than the other.

## Numerical completion proposals

`propose` may use an out-of-domain Gauss–Newton iterate, may fail to find a
zero, and may return inaccurate singular vectors. These possibilities only
affect certificate strength. `prepare` computes the residual floor, inverse
defect, affine-motion mismatch and all remaining bounds independently in
Arb. Neither the proposal's residual diagnostics nor its singular values
are used as premises of acceptance. An arbitrary nonsingular proposed `T`
and arbitrary `B` are allowed once their defects are bounded.

Reference matching merely proposes a reordering of all six colour columns.
No equality between independently found numerical roots is assumed. The
runner should still validate permutation metadata for certificate integrity.

## Original replay gaps and repairs

1. **Coverage and identity:** `run_cell` originally stored but did not check
   `record_sha256`. It silently intersected requested indices with stored
   pattern indices and did not fail if rows were missing or OPEN. This can
   make an incomplete check look successful. The root review owns the
   runner repair and the full-cell/partial-selection distinction.
2. **Native winding integrality:** `moving.parts` originally accepted any
   stored values in the expression `2*pi*j`. Gauge equivalence requires
   integers. The repair requires exactly 72 integer windings.
3. **Legal native action:** the repaired reader requires an anchor in
   `{0,1,2}`, integral balanced labels, and six-entry permutations. The
   existing native routine still verifies two 3-cycles, the fixed anchor,
   exact group/gauge identities, projector rank, and exact equation action.
4. **Missing native records:** `force` originally invoked a fresh floating
   action/pseudoinverse search if a certificate omitted a tube proposal. A
   replay now rejects that omission instead of searching for a replacement.
5. **Finite data and shapes:** packed completion and inverse proposals are
   checked for finiteness and required shapes. The affine slope's weak rows
   were already required to vanish exactly. All flattening choices must be
   present; a missing choice cannot trigger a new floating optimization.
6. **Plans:** the replay reader validates mode, positive finite tube radius,
   finite weak centre, and nonempty valid peel thresholds. Branch discharge
   itself is still recomputed; stored verdicts are not mathematical inputs.
7. **Windings chosen inside the witness:** `colour_product` and `peel_search`
   originally recomputed windings with binary64 `round`. They now round the
   exact rational Arb midpoint to an integer. Nearest-lift correctness is
   unnecessary, but the choice no longer uses a binary64 decision.
8. **Reference centre:** new certificates save the exact dyadic `q` proposal
   as well as `y,T,B,Lam`. Older records remain readable by reconstructing
   the arbitrary reference proposal; its displacement from the true model
   is rigorously included in the floor.

There is no honest basis for calling the entire runner “zero floating-point
decision”: native cover construction and Stage C retain their reviewed
binary64 error enclosures, and initial proposal generation still uses
floating-point methods. The appropriate claim is that the **new witness's
mathematical acceptance predicates are strict Arb inequalities or exact
combinatorial comparisons**, conditional on the native cover theorem and
its input hypotheses. The repaired witness header states this qualification.

## Endpoint maxima

The original new `fmax` first converts every candidate to its outward upper
endpoint, then compares those exact endpoints. This avoids the binary64-key
bug found in the earlier round. Defensive nonempty/finite checks were added.

The separate expression `max(arb(0), R*R-wl*wl)` was not a certified upper
positive part for general Arb inputs: an interval straddling zero can be
replaced by zero by Python's strict comparison. The repair uses
`fmax([arb(0), R*R-wl*wl])` before the square root. The lower bound used for
geometric exclusion now explicitly takes a lower endpoint before clipping
against zero. These changes give the two roles their correct rounding
directions.

## Verification

`audit/tests/test_replay.py` contains nine focused regressions. All pass at
160-bit precision with the supplied python-flint dependency. They cover the
sub-binary64 endpoint counterexample, the uncertain-sign positive part,
large exact integer winding selection, nonintegral stored windings, invalid
actions/inverses, missing-proposal fail-closed behavior, plan validation,
nonfinite/incomplete arrays, and preservation of every actual clique of a
small nontrivial six-partite graph under arc consistency.

The source changes compile and import successfully. Full-cell replay and
the derivative coefficient regression are managed by the root review and
the motion/Gram reviewer respectively.

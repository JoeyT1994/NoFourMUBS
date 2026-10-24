# Handoff V2: the far-region inequality S(H) ≥ c · L_tot(H)

**Goal.** Prove, for every complex Hadamard matrix H of order 6,

  **S(H) ≥ c · L_tot(H)**

with an explicit constant c > 0. The minimum needed is c = 3/5, but numerics suggest c ≈ 200 (§3). Together with the
results of return V (§2), this proves an explicit, practical lower bound on the best corner discriminant of every
Hadamard class away from F6, which is the missing piece of handoff V.

This is research mathematics. Partial results are valuable (§5). Label every claim **PROVED** (written proof),
**CERTIFIED** (exact finite computation, replayable), **NUMERICAL** (evidence only) or **NOT ESTABLISHED**.

Context files referenced below are in `context/` in this zip.

---

## 1. The two quantities

Let H be an order-6 complex Hadamard matrix: |H_ij| = 1 and HH* = 6I.

**S(H), the corner discriminant sum.** For each of the 400 positional 3×3 corners C = (I, J) define the corner
invariants and R_C = 4g²η − χ² (`context/V_REPORT.md` §1, `context/PROOF.md` §1). Then
- S(H) = Σ_C R_C(H) = 4 Σ_C (Im Ψ(H[I, Jᶜ]))², where Ψ(X) = perm(X) det(X)² / ∏ X_ab;
- this is a nonnegative polynomial in the entries, and the identity is certified in `context/verify_side_identity.py`;
- S(H) = 0 exactly when H ≅ F6 (`context/PROOF.md` Theorem 2.5).

**L_tot(H), the group-mixing defect** (`context/GROUP_ROUNDING.md`).
- For each reference row r, normalise row r to all ones by column phases, and write the normalised rows as u_i.
- Put t^{(r)}_{ij,k} = (1/6) Σ_a u_i(a) u_j(a) conj(u_k(a)).
- Then L_r = 36 − Σ_{i,j,k} |t^{(r)}_{ij,k}|⁴ ≥ 0, and L_tot = Σ_r L_r.
- L_tot = 0 exactly for the Fourier matrix up to equivalence, whose rows form a group under entrywise products.

## 2. Why this inequality, and what is already proved (return V, replayed)

**Proved by V,** with d = d([H], [F6]) the unnormalised quotient Frobenius distance and M = max_C R_C ≥ S/400:
- M ≥ 4d² for d ≤ 1/2, and M ≥ 81d²/400 for d ≤ 4/7, so M ≥ 0.04 on the annulus 0.1 ≤ d ≤ 4/7
  (`context/PRACTICAL_ANNULUS.md`);
- group rounding: if some L_r < 1/9 then d² ≤ L_r/(1 − L_r) (`context/GROUP_ROUNDING.md`). So in the far region
  d > 4/7 every L_r ≥ 1/9, and L_tot ≥ 2/3.

**Therefore** S ≥ c · L_tot gives S ≥ 2c/3 and M ≥ c/600 for every H with d > 4/7. With the annulus, every Hadamard
class at distance ≥ 0.1 from F6 has a corner with R ≥ min(0.04, c/600). For c ≈ 200 that is 0.04, set by the annulus.

**Why it matters.** It guarantees that every class away from F6 has a corner well inside the reconstruction's strict
domain. That lets the computer atlas be a plain cover of a fixed compact set of seeds, instead of a cover grown by
open-and-closed transfers.

## 3. Numerical evidence (NUMERICAL)

`context/atlas_centres_S_Ltot.csv` lists S, L_tot and M for 12,021 Hadamard classes spread over the whole space.

- **The ratio.** Over these classes, S / L_tot has minimum **209.5**, 0.1% quantile 210.4, 1% quantile 215.7 and
  median 259.
  - The smallest ratios sit on a family with S = 20480 exactly (to 6 digits) and L_tot ≈ 97.6–97.8 (records
    11223–11227).
- **Special matrices.** Tao: S = 87480, L_tot = 112.5, ratio ≈ 778. F6: S = L_tot = 0.
- **Near F6** both vanish, S quadratically (S ≈ 41472 d²/π² on the Fourier families; V §3). Find the behaviour of
  L_tot there, and make sure the ratio stays bounded below.

So the inequality appears to hold with c ≈ 200, roughly 300× more than needed.

## 4. Suggested routes

1. **Both sides are explicit moment polynomials.**
   - S expands in the triple-product moments t_{ij,k} and their relatives: `context/P_VARIANCE_AND_COMPLEMENT.md` has
     Σ_C p_C and Σ_C p_C² in terms of T₂(H).
   - L_tot is a quartic in the same moments.

   Look for an identity S = c·L_tot + (sum of squares), or a coefficientwise domination after using the Hadamard
   relations. Exact or rational sum-of-squares certificates are welcome.
2. **Local at F6.** Both vanish to second order. Compare their Hessians on the 4-dimensional tangent space at F6 (V's
   LOCAL_FOURIER gives S's Hessian). Then extend by a remainder bound to d ≤ 4/7, which overlaps the far region.
3. **The extremal family.** The minimisers have S = 20480 exactly. Identify that family (it is likely an explicit
   one-parameter family, perhaps inside the Fourier or two-circulant families) and prove the inequality is tight or
   strict there.

## 5. Deliverables

A report, `REPORT.md`, with:
- the statement(s) proved, with explicit constants;
- the proofs, each step labelled;
- replayable exact verification scripts for every CERTIFIED step.

Partial results are useful: any c > 0 at all, c ≥ 3/5, or the inequality on a large explicit subset (e.g. d ≥ 1).

**Do not use** the MUB atlas or Stage C. The statement is about Hadamard geometry only, and the atlas would make the
argument circular for its purpose.

import NoFourMUBs.SeedAtlas.Seed
import NoFourMUBs.L1.FlatCheckF

/-!
# Certified sides give the matched completion (the link between the C1 method and `MatchedO`)

The C1 method (`proof/seed_atlas/SPEC.md` §2) finds, at each seed `θ` of a box, a horizontal side `B = (1; x; y)`
with `BB* = G_h(θ)` and a vertical side `V = (1; x'; y')` with `VV* = G_v(θ)` (Krawczyk, `krawczyk_param`), and
certifies `sign Im Ψ(B) = o`, `sign Im Ψ(V) = −o`.  Then (`matchedO_of_certified_sides`):

  **the completion `[[E, B], [Vᵀ, D]]`, `D = −Vᵀ E* (B*)⁻¹`, is Hadamard and is the matched completion with
  orientation `o` at `θ`.**

The signs make the two signatures conjugate roots of the side quadratic (`PROOF.md` Lemma 2.1), which is all that
matched flatness needs (`L1.FlatCircuits.W_zero` with either root, `L1.flat_of_W`; return R2's kernel checks
`F_valid`); `matchedO_of_signs` then identifies the orientation.  So the phases the method encloses are those of a
representative of `f_o(θ)`, as C1 requires: no continuity in `θ` is needed, the claim is pointwise.
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Side NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

open L1 L1.FlatCircuits

/-- **Certified sides give the matched completion.** -/
theorem matchedO_of_certified_sides {o : ℤˣ} {p : Seed} (hp : 0 < seedR p) {x y x' y' : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1) (hy : ∀ j, Complex.normSq (y j) = 1)
    (hx' : ∀ j, Complex.normSq (x' j) = 1) (hy' : ∀ j, Complex.normSq (y' j) = 1)
    (hs : sS x = sh (seedVec p)) (ht : sS y = th (seedVec p)) (hr : rS x y = rh (seedVec p))
    (hs' : sS x' = sv (seedVec p)) (ht' : sS y' = tv (seedVec p)) (hr' : rS x' y' = rv (seedVec p))
    (hB : 0 < osgn o * (psi (sideMat x y)).im) (hC : 0 < -osgn o * (psi (sideMat x' y')).im) :
    Hadamard6.IsHadamard (completion (Em (seedVec p)) (sideMat x y) (sideMat x' y')ᵀ) ∧
      MatchedO o p (completion (Em (seedVec p)) (sideMat x y) (sideMat x' y')ᵀ) := by
  set ρ := seedVec p
  have h : Strict ρ := strict_seedVec hp
  have hu := h.unit
  set B := sideMat x y
  set C := (sideMat x' y')ᵀ
  have hB0 : ∀ j, B 0 j = 1 := fun j => rfl
  have hC0 : ∀ i, C i 0 = 1 := fun i => rfl
  have sigB : sideSignature B = TS x y := sig_rows B hB0
  have sigC : sideSignature C = TS x' y' := sig_cols C hC0
  have sigV : sideSignature (sideMat x' y') = TS x' y' := by rw [← sideSignature_transpose]; exact sigC
  rw [psi_eq, sigB, Complex.neg_im] at hB
  rw [psi_eq, sigV, Complex.neg_im] at hC
  have hT : (TS x y).im ≠ 0 := by intro h0; rw [h0] at hB; simp at hB
  have hT' : (TS x' y').im ≠ 0 := by intro h0; rw [h0] at hC; simp at hC
  have hh : hS x y ≠ 0 := by intro h0; apply hT; simp [TS, h0]
  have hh' : hS x' y' ≠ 0 := by intro h0; apply hT'; simp [TS, h0]
  obtain ⟨r1, r2⟩ := TS_root hx hy hh
  obtain ⟨r1', r2'⟩ := TS_root hx' hy' hh'
  simp only [hs, ht, hr, gS_eq, etaS_eq, chiS_eq] at r1 r2
  simp only [hs', ht', hr', gS_eq, etaS_eq, chiS_eq] at r1' r2'
  obtain ⟨eg, ee, ec⟩ := hv_eq hu
  rw [eg, ee] at r1'
  rw [ec] at r2'
  -- the two signatures are conjugate roots
  have hconj : TS x' y' = conj (TS x y) := by
    have hz1 : conj (TS x y) * conj (conj (TS x y)) =
        ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ^ 2 * (gEta (sh ρ) (th ρ) (rh ρ) : ℂ) := by
      rw [Complex.conj_conj, mul_comm]; exact r1
    have hz2 : conj (TS x y) + conj (conj (TS x y)) = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ) := by
      rw [Complex.conj_conj, add_comm]; exact r2
    rcases eq_or_eq_conj_of_roots r1' r2' hz1 hz2 with e | e
    · exact e
    · rw [Complex.conj_conj] at e
      rw [e] at hC
      rcases osgn_cases o with ⟨-, ho⟩ | ⟨-, ho⟩ <;> rw [ho] at hB hC <;> linarith
  have hBdet : IsUnit B.det := det_ne_of_sig (by rw [sigB]; exact hT)
  have hCdet : IsUnit C.det := det_ne_of_sig (by rw [sigC]; exact hT')
  have hE : EntrywiseUnit (Em ρ) := by
    intro i j; fin_cases i <;> fin_cases j <;> simp [Em, Hadamard6.corner, hu]
  have hW := W_zero h F_valid hx hy hx' hy' hs ht hr hs' ht' hr' rfl hconj r1 r2 hBdet
  obtain ⟨-, hHad⟩ := flat_of_W (Em ρ) B C hE (horiz_cand h hx hy hs ht hr) (vert_cand h hx' hy' hs' ht' hr')
    hBdet hCdet hW
  refine ⟨hHad, (matchedO_of_signs hHad ⟨?_, ?_⟩ rfl ?_ ?_).2⟩
  · intro j; rcases j with j | j
    · fin_cases j <;> rfl
    · rfl
  · intro i; rcases i with i | i
    · fin_cases i <;> rfl
    · rfl
  · show 0 < osgn o * (psi B).im
    rw [psi_eq, sigB, Complex.neg_im]; exact hB
  · show 0 < -osgn o * (psi C).im
    rw [psi_eq, sigC, Complex.neg_im]; exact hC

end NoFourMUBs.SeedAtlas.Method

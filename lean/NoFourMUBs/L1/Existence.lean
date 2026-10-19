import NoFourMUBs.L1.SideCover
import NoFourMUBs.L1.FlatCheckMh
import NoFourMUBs.L1.FlatCheckQv
import NoFourMUBs.L1.FlatCheckF
import NoFourMUBs.Step2.FourierAnchor

/-!
# L1: matched existence (`PROOF.md` Theorem 2.2)

Every strict seed has a positive matched completion (`Step2.MatchedExistence`), with no input from the
classification.  For the seed corner `E` with Gram data `(s, t, r)` and invariants `g, η, χ, R`, put
`ζ = (χ + i √R) / 2`.

* **Pointwise** (`matched_of_sides`): if the horizontal Gram is realised by a side with `Im T > 0` and the vertical
  Gram by one with `Im T < 0`, there are such sides with signatures `ζ` and `ζ̄` (`exists_side_of_sign`), and the
  forced lower-right block is flat (`FlatBridge`, with the kernel checks `FlatCheck*` of the one weighted defect
  `W₁₁`; the other three are `W₁₁` at relabelled seeds), so the completion is Hadamard (`flat_of_W`) and matched.
* **Sides** (`sides_all`): the strict seeds with such sides form an open and closed set (`SideCover`), which
  contains the corner of the Fourier family (return Q, `Step2.exists_matched`, `sides_of_matched`).  By the pointwise
  step and the anchor transport it contains every positive local maximum, so it is every strict seed
  (`Step2.eq_univ_of_anchor_transport`).  Conjugation gives the other signs (`side_h_mem`, `side_v_mem`), hence a
  side with either root as signature (`exists_side_h`, `exists_side_v`).
-/

open ComplexConjugate Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Kronecker

noncomputable section

namespace NoFourMUBs.L1

open FlatCircuits

theorem seedR_eq (p : Step2.Seed) :
    Step2.seedR p = gR (sh fun i => (p i : ℂ)) (th fun i => (p i : ℂ)) (rh fun i => (p i : ℂ)) := rfl

theorem seedChi_eq (p : Step2.Seed) :
    Step2.seedChi p = gChi (sh fun i => (p i : ℂ)) (th fun i => (p i : ℂ)) (rh fun i => (p i : ℂ)) := rfl

/-- **Sides give a matched completion.**  At a strict seed whose horizontal Gram has a side with `Im T > 0` and
whose vertical Gram has a side with `Im T < 0`, there is a physical positive matched completion. -/
theorem matched_of_sides (sd : Step2.StrictSeed) (hh : Gh (seedVec sd.1) ∈ sideSet 1)
    (hv : Gv (seedVec sd.1) ∈ sideSet (-1)) : ∃ H : Had6, Step2.Matched sd H := by
  set ρ : Fin 4 → ℂ := fun i => (sd.1 i : ℂ) with hρ
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => Circle.normSq_coe _
  have h : Strict ρ := ⟨hu, by rw [← seedR_eq]; exact sd.2⟩
  obtain ⟨eg, ee, ec⟩ := hv_eq hu
  set g := gG (sh ρ) (th ρ) (rh ρ)
  set η := gEta (sh ρ) (th ρ) (rh ρ)
  set χ := gChi (sh ρ) (th ρ) (rh ρ)
  set R := gR (sh ρ) (th ρ) (rh ρ) with hRdef
  have hR : 0 < R := h.R
  have hsq : ((Real.sqrt R : ℝ) : ℂ) ^ 2 = (R : ℂ) := by
    rw [← Complex.ofReal_pow, Real.sq_sqrt hR.le]
  have hRg : (R : ℂ) = 4 * (g : ℂ) ^ 2 * η - (χ : ℂ) ^ 2 := by
    rw [hRdef, gR]; push_cast; ring
  set ζ : ℂ := ((χ : ℂ) + (Real.sqrt R : ℂ) * Complex.I) / 2 with hζdef
  have hζc : conj ζ = (χ : ℂ) - ζ := by
    rw [hζdef]; simp [map_div₀, Complex.conj_ofReal, map_ofNat]; ring
  have hζ2 : ζ ^ 2 = (χ : ℂ) * ζ - (g : ℂ) ^ 2 * (η : ℂ) := by
    rw [hζdef]; linear_combination ((Real.sqrt R : ℂ) ^ 2 / 4) * Complex.I_sq - (1 / 4 : ℂ) * hsq -
      (1 / 4 : ℂ) * hRg
  have hζpos : 0 < ζ.im := by
    have : 0 < Real.sqrt R := Real.sqrt_pos.mpr hR
    rw [hζdef]; simp; positivity
  have hζim : ζ.im ≠ 0 := hζpos.ne'
  -- the horizontal side
  obtain ⟨x, y, hx, hy, hs, ht, hr, hT⟩ := exists_side_of_sign hh (by linarith) hζ2 hζc
  -- the vertical side, on the conjugate root
  have hζ2' : conj ζ ^ 2 = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) * conj ζ -
      ((gG (sv ρ) (tv ρ) (rv ρ) : ℝ) : ℂ) ^ 2 * (gEta (sv ρ) (tv ρ) (rv ρ) : ℂ) := by
    rw [eg, ee, ec, hζc]; linear_combination hζ2
  have hζc' : conj (conj ζ) = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) - conj ζ := by
    rw [ec, Complex.conj_conj, hζc]; ring
  obtain ⟨x', y', hx', hy', hs', ht', hr', hT'⟩ :=
    exists_side_of_sign hv (by rw [Complex.conj_im]; linarith) hζ2' hζc'
  set B := sideMat x y
  set C := (sideMat x' y')ᵀ
  have hB0 : ∀ j, B 0 j = 1 := fun j => rfl
  have hC0 : ∀ i, C i 0 = 1 := fun i => rfl
  have sigB : Step2.sideSignature B = ζ := by rw [Step2.sig_rows B hB0]; exact hT
  have sigC : Step2.sideSignature C = conj ζ := by rw [Step2.sig_cols C hC0]; exact hT'
  have hBdet : IsUnit B.det := Step2.det_ne_of_sig (by rw [sigB]; exact hζim)
  have hCdet : IsUnit C.det := Step2.det_ne_of_sig (by rw [sigC, Complex.conj_im]; exact neg_ne_zero.2 hζim)
  have hE : EntrywiseUnit (Em ρ) := by
    intro i j; fin_cases i <;> fin_cases j <;> simp [Em, Hadamard6.corner, hu]
  have hW := W_zero h mh_valid qv_valid F_valid hx hy hx' hy'
    hs ht hr hs' ht' hr' hT hT' (by rw [hζc]; linear_combination -hζ2) (by rw [hζc]; ring) hBdet
  obtain ⟨-, hHad⟩ := flat_of_W (Em ρ) B C hE (horiz_cand h hx hy hs ht hr) (vert_cand h hx' hy' hs' ht' hr')
    hBdet hCdet hW
  refine ⟨⟨completion (Em ρ) B C, hHad⟩, ⟨?_, ?_⟩, ?_, ?_, ?_⟩
  · intro j; rcases j with j | j
    · fin_cases j <;> rfl
    · rfl
  · intro i; rcases i with i | i
    · fin_cases i <;> rfl
    · rfl
  · rfl
  · change 2 * Step2.sideSignature B = _
    rw [sigB, hζdef, seedChi_eq, seedR_eq]; ring
  · change 2 * Step2.sideSignature C = _
    rw [sigC, hζc, hζdef, seedChi_eq, seedR_eq]; ring

/-- **Side existence on every strict seed.** -/
theorem sides_all (s : Step2.StrictSeed) : s ∈ SidesSet := by
  have h : SidesSet = Set.univ := by
    apply Step2.eq_univ_of_anchor_transport SidesSet isClopen_sides
    · obtain ⟨s₀, H₀, hH₀⟩ := Step2.exists_matched
      exact ⟨s₀, sides_of_matched hH₀⟩
    · intro s _ hs
      obtain ⟨H, hH⟩ := matched_of_sides s hs.1 hs.2
      exact ⟨H, hH, fun s' K hK _ => sides_of_matched hK⟩
  rw [h]; trivial

variable {ρ : Fin 4 → ℂ}

theorem side_h_mem (h : Strict ρ) : Gh ρ ∈ sideSet 1 ∧ Gh ρ ∈ sideSet (-1) := by
  have hpos : ∀ p : Step2.Seed, 0 < Step2.seedR p → Gh (seedVec p) ∈ sideSet 1 := fun p hp => (sides_all ⟨p, hp⟩).1
  obtain ⟨p, rfl⟩ := exists_seed h.unit
  exact ⟨hpos p h.R, mem_of_conj Gh_conj hpos p h.R⟩

theorem side_v_mem (h : Strict ρ) : Gv ρ ∈ sideSet 1 ∧ Gv ρ ∈ sideSet (-1) := by
  have hneg : ∀ p : Step2.Seed, 0 < Step2.seedR p → Gv (seedVec p) ∈ sideSet (-1) := fun p hp => (sides_all ⟨p, hp⟩).2
  obtain ⟨p, rfl⟩ := exists_seed h.unit
  have := mem_of_conj Gv_conj hneg p h.R
  rw [neg_neg] at this
  exact ⟨this, hneg p h.R⟩

/-- **Side existence (horizontal).** At a strict seed, the horizontal Gram data `(s, t, r)` is realised by
a normalised phase side with signature either root `ζ` of `ζ² = χ ζ − g² η`. -/
theorem exists_side_h (h : Strict ρ) {ζ : ℂ}
    (hζ : ζ ^ 2 = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ) * ζ -
      ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ^ 2 * (gEta (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hζc : conj ζ = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = sh ρ ∧ sS y = th ρ ∧ rS x y = rh ρ ∧ TS x y = ζ :=
  exists_side_of_mem h.R (side_h_mem h).1 (side_h_mem h).2 hζ hζc

/-- **Side existence (vertical).** The same for the vertical Gram data. -/
theorem exists_side_v (h : Strict ρ) {ζ : ℂ}
    (hζ : ζ ^ 2 = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) * ζ -
      ((gG (sv ρ) (tv ρ) (rv ρ) : ℝ) : ℂ) ^ 2 * (gEta (sv ρ) (tv ρ) (rv ρ) : ℂ))
    (hζc : conj ζ = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = sv ρ ∧ sS y = tv ρ ∧ rS x y = rv ρ ∧ TS x y = ζ :=
  exists_side_of_mem h.facts.2.1 (side_v_mem h).1 (side_v_mem h).2 hζ hζc

/-- **L1.** Every strict seed has a physical positive matched completion. -/
theorem matchedExistence : Step2.MatchedExistence := fun sd =>
  matched_of_sides sd (sides_all sd).1 (sides_all sd).2

end NoFourMUBs.L1

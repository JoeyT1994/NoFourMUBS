import NoFourMUBs.L1.FlatBridge
import NoFourMUBs.L1.FlatCheckMh
import NoFourMUBs.L1.FlatCheckQv
import NoFourMUBs.L1.FlatCheckF
import NoFourMUBs.Step2.MatchedUnique

/-!
# L1: matched existence

Every strict seed has a positive matched completion (`Step2.MatchedExistence`), with no input from the
classification.  For the seed corner `E` with Gram data `(s, t, r)` and invariants `g, η, χ, R`, put
`ζ = (χ + i √R) / 2`.

* **Sides** (`SideExistence`): a horizontal phase side with Gram data `(s, t, r)` and signature `ζ`,
  and a vertical one with the vertical Gram data and signature `ζ̄`.
* **Flatness** (`FlatBridge`, with the kernel checks `FlatCheck*`): the four weighted defects of the
  forced block vanish, so the completion is Hadamard (`flat_of_W`).

The signatures are `ζ` and `ζ̄`, which is the matched relation.
-/

open ComplexConjugate Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Kronecker

noncomputable section

namespace NoFourMUBs.L1

open FlatCircuits

theorem seedR_eq (p : Step2.Seed) :
    Step2.seedR p = gR (sh fun i => (p i : ℂ)) (th fun i => (p i : ℂ)) (rh fun i => (p i : ℂ)) := rfl

theorem seedChi_eq (p : Step2.Seed) :
    Step2.seedChi p = gChi (sh fun i => (p i : ℂ)) (th fun i => (p i : ℂ)) (rh fun i => (p i : ℂ)) := rfl

/-- **L1.** Every strict seed has a physical positive matched completion. -/
theorem matchedExistence : Step2.MatchedExistence := by
  intro sd
  set ρ : Fin 4 → ℂ := fun i => (sd.1 i : ℂ) with hρ
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => Circle.normSq_coe _
  have h : Strict ρ := ⟨hu, by rw [← seedR_eq]; exact sd.2⟩
  obtain ⟨hg0, hRv, -, -⟩ := h.facts
  obtain ⟨eg, ee, ec⟩ := hv_eq hu
  obtain ⟨d1, d2⟩ := det_nonneg hu
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
  have hζim : ζ.im ≠ 0 := by
    have : 0 < Real.sqrt R := Real.sqrt_pos.mpr hR
    rw [hζdef]; simp; positivity
  -- the horizontal side
  obtain ⟨x, y, hx, hy, hs, ht, hr, hT⟩ := exists_side_gram hR d1 hζ2 hζc
  -- the vertical side, on the conjugate root
  have hζ2' : conj ζ ^ 2 = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) * conj ζ -
      ((gG (sv ρ) (tv ρ) (rv ρ) : ℝ) : ℂ) ^ 2 * (gEta (sv ρ) (tv ρ) (rv ρ) : ℂ) := by
    rw [eg, ee, ec, hζc]; linear_combination hζ2
  have hζc' : conj (conj ζ) = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) - conj ζ := by
    rw [ec, Complex.conj_conj, hζc]; ring
  obtain ⟨x', y', hx', hy', hs', ht', hr', hT'⟩ := exists_side_gram hRv d2 hζ2' hζc'
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
  have hW := W_zero h (fun q i a c => mh_valid q i a c) (fun p i a c => qv_valid p i a c) F_valid hx hy hx' hy'
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

end NoFourMUBs.L1

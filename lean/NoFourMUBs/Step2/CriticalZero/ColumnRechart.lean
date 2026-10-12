import NoFourMUBs.Reuse.Archive.CriticalCorrelationRechart

/-! Column permutations in the existing OAI candidate model. Only the unit row
phases introduced by its existing dephasing operation need to be accounted for. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalCorrelationChart20261003

theorem column_candidate_entry {H : OAI.MUB6.CMatrix} (hH : NormalizedCarrier H)
    (q : Perm) (i j : Fin 6) :
    candidate H (Equiv.refl _) q i j = star (H i (q 0)) * H i (q j) := by
  change (H i (q 0))⁻¹ * H i (q j) * (H 0 (q 0) * (H 0 (q j))⁻¹) = _
  simp only [hH.2.1, inv_one, one_mul, mul_one, Complex.star_def,
    OAI.MUB6.unit_inv_eq_conj (hH.1.1 i (q 0))]

theorem column_candidate_correlations {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (q : Perm) (c : Fin 3 → Fin 6) :
    let K := candidate H (Equiv.refl _) q
    let A := H.submatrix front (q ∘ c)
    let a := star (H 1 (q 0))
    let b := star (H 2 (q 0))
    sideS (K.submatrix front c) = a * sideS A ∧
    sideT (K.submatrix front c) = b * sideT A ∧
    sideR (K.submatrix front c) = b * star a * sideR A := by
  dsimp only
  refine ⟨?_, ?_, ?_⟩
  · change candidate H (Equiv.refl _) q 1 (c 0) +
      candidate H (Equiv.refl _) q 1 (c 1) + candidate H (Equiv.refl _) q 1 (c 2) =
      star (H 1 (q 0)) * (H 1 (q (c 0)) + H 1 (q (c 1)) + H 1 (q (c 2)))
    simp only [column_candidate_entry hH]
    ring
  · change candidate H (Equiv.refl _) q 2 (c 0) +
      candidate H (Equiv.refl _) q 2 (c 1) + candidate H (Equiv.refl _) q 2 (c 2) =
      star (H 2 (q 0)) * (H 2 (q (c 0)) + H 2 (q (c 1)) + H 2 (q (c 2)))
    simp only [column_candidate_entry hH]
    ring
  · change (candidate H (Equiv.refl _) q 2 (c 0) * star (candidate H (Equiv.refl _) q 1 (c 0)) +
      candidate H (Equiv.refl _) q 2 (c 1) * star (candidate H (Equiv.refl _) q 1 (c 1)) +
      candidate H (Equiv.refl _) q 2 (c 2) * star (candidate H (Equiv.refl _) q 1 (c 2))) =
      star (H 2 (q 0)) * star (star (H 1 (q 0))) *
        (H 2 (q (c 0)) * star (H 1 (q (c 0))) +
         H 2 (q (c 1)) * star (H 1 (q (c 1))) +
         H 2 (q (c 2)) * star (H 1 (q (c 2))))
    simp only [column_candidate_entry hH, star_mul]
    ring

theorem column_candidate_invariants {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (q : Perm) (c : Fin 3 → Fin 6) :
    SameInvariants ((candidate H (Equiv.refl _) q).submatrix front c)
      (H.submatrix front (q ∘ c)) := by
  let a := star (H 1 (q 0))
  let b := star (H 2 (q 0))
  let K := candidate H (Equiv.refl _) q
  let A := H.submatrix front (q ∘ c)
  have ha : Complex.normSq a = 1 := by simpa [a, Complex.star_def] using hH.1.1 1 (q 0)
  have hb : Complex.normSq b = 1 := by simpa [b, Complex.star_def] using hH.1.1 2 (q 0)
  have hau : a * star a = 1 := by
    simpa [mul_comm] using Hadamard6.star_mul_self_of_normSq_one ha
  have hbu : b * star b = 1 := by
    simpa [mul_comm] using Hadamard6.star_mul_self_of_normSq_one hb
  obtain ⟨hS, hT, hR⟩ := column_candidate_correlations hH q c
  change sideS (K.submatrix front c) = a * sideS A at hS
  change sideT (K.submatrix front c) = b * sideT A at hT
  change sideR (K.submatrix front c) = b * star a * sideR A at hR
  have hnS : Complex.normSq (sideS (K.submatrix front c)) = Complex.normSq (sideS A) := by
    rw [hS]; simp [map_mul, ha]
  have hnT : Complex.normSq (sideT (K.submatrix front c)) = Complex.normSq (sideT A) := by
    rw [hT]; simp [map_mul, hb]
  have hnR : Complex.normSq (sideR (K.submatrix front c)) = Complex.normSq (sideR A) := by
    rw [hR]; simp [map_mul, Complex.star_def, ha, hb]
  have hphase : (b * star a * sideR A) * (a * sideS A) * star (b * sideT A) =
      sideR A * sideS A * star (sideT A) := by
    simp only [star_mul]
    calc
      _ = (a * star a) * (b * star b) * (sideR A * sideS A * star (sideT A)) := by ring
      _ = _ := by rw [hau, hbu]; ring
  change SameInvariants (K.submatrix front c) A
  refine ⟨?_, ?_, ?_, ?_⟩
  · simp only [sideP, momentP, hnS, hnT, hnR]
  · simp only [sideJ, momentJ, hS, hT, hR, hphase]
  · simp only [sideW, momentW, hnS, hnT, hnR]
  · rw [hnS, hnT, hnR]

end NoFourMUBs.Step2.Critical

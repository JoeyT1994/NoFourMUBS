import NoFourMUBs.Step2.CriticalZero.ActualModuli
import NoFourMUBs.Step2.CriticalZero.LeadingScalarPremises
import NoFourMUBs.Reuse.Archive.CriticalZeroChartTransport
import NoFourMUBs.Reuse.Archive.CriticalAllocatedGeometricCandidate

/-! Compose the checked physical chart, modulus allocation and original
conjugate-row argument. The original correlations may vanish. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalStripMoments20261003
open CriticalCorrelationChart20261003 CriticalGeometricStrip20261003

theorem allCritical_regular_zero_geometric {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (z : ℝ)
    (hzlo : -3 ≤ z) (hz0 : z ≠ 0) (hz3 : z ≠ -3) (hz2 : z ≠ -2)
    (hp : sideP (stripLeftBlock H) = 9-z^2)
    (hj : sideJ (stripLeftBlock H) = 0)
    (hw : sideW (stripLeftBlock H) = z^2*(z+3)^2) :
    ∃ K : OAI.MUB6.CMatrix, AllCriticalCarrier K ∧ OAI.MUB6.Equivalent H K ∧
      ∀ j : Fin 6, K 2 j = star (K 1 j) := by
  obtain ⟨p, _, hK, heHK, hpK, hjK, hwK, hs, ht, _⟩ :=
    allCritical_regular_zero_chart hH z hz0 hz3 hp hj hw
  let K := candidate H p (Equiv.refl _)
  have hm := (allCritical_regular_zero_moduli hK z
    hzlo hz0 hz3 hz2 hpK hjK hwK hs ht).2
  obtain ⟨hds, hdt, hdr⟩ := CriticalNewtonGaugeLight20261003.phase_block_linear_data
    (stripLeftBlock K) (fun i j => hK.1.1.1 (front i) (front j))
  have ha : Allocated (stripCorner K 0) z := by
    rw [stripCorner_zero]
    unfold Allocated
    dsimp only [stripLeftData] at hm
    rw [hds, hdt, hdr] at hm
    exact hm
  obtain ⟨q, _, hL, heKL, hg⟩ := allCritical_allocated_geometric hK 0 z
    hz0 hz3 hz2 (by simpa only [stripCorner_zero] using hjK) ha
  exact ⟨candidate K q (Equiv.refl _), hL, OAI.MUB6.equivalent_trans heHK heKL, hg⟩

#print axioms allCritical_regular_zero_geometric
end NoFourMUBs.Step2.Critical

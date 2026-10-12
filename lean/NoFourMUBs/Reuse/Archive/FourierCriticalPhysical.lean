import NoFourMUBs.Step2.CriticalZero.FourierCriticalModel
import NoFourMUBs.Reuse.Archive.FourierCriticalEquivalences
import NoFourMUBs.Step2.CriticalZero.FourierRoutingModel

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace FourierCriticalLocus20261003
open Matrix NoFourMUBs.Step2.Critical CriticalPhysical20261003
open GlobalCornerSixSine
noncomputable section

def pivotRows : Perm := (Equiv.swap 1 3).trans (Equiv.swap 2 4)

theorem allCritical_N_selected {ω z w : ℂ} (hN : NoFourMUBs.Step2.Critical.AllCriticalCarrier (N ω z w)) :
    sixSkew 1 z w 1 (ω*z) (ω^2*w)=0 ∧
    sixSkew 1 z (-w) 1 (ω*z) (-(ω^2*w))=0 ∧
    sixSkew 1 (-z) w 1 (-(ω*z)) (ω^2*w)=0 := by
  let K : OAI.MUB6.CMatrix := Matrix.submatrix (N ω z w) pivotRows (Equiv.refl _)
  have hrow : ∀ j, K 0 j=1 := by
    intro j
    change N ω z w (pivotRows 0) j=1
    simp [pivotRows,Equiv.swap_apply_def,N_first_row]
  have hcol : ∀ i, K i 0=1 := fun i => N_first_column ω z w (pivotRows i)
  have he : candidate (N ω z w) pivotRows (Equiv.refl _)=K := by
    change candidate K (Equiv.refl _) (Equiv.refl _) = K
    exact normalized_fixed hrow hcol
  have hK : NoFourMUBs.Step2.Critical.AllCriticalCarrier K := by
    rw [← he]
    exact allCritical_candidate hN pivotRows (Equiv.refl _)
  have h0 := allCritical_selected_sixSkew_zero hK (![0,1,2] : Fin 3 → Fin 6) (by decide +kernel)
  have h1 := allCritical_selected_sixSkew_zero hK (![0,1,5] : Fin 3 → Fin 6) (by decide +kernel)
  have h2 := allCritical_selected_sixSkew_zero hK (![0,4,2] : Fin 3 → Fin 6) (by decide +kernel)
  simpa [K,pivotRows,Equiv.swap_apply_def,N] using And.intro h0 (And.intro h1 h2)

/-- Actual all-critical Fourier representatives lie on the explicit twelve
point grid. Neither a determinant threshold nor an exclusion is a premise. -/
theorem allCritical_N_grid {ω z w : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω) (hz : Complex.normSq z=1) (hw : Complex.normSq w=1)
    (hN : NoFourMUBs.Step2.Critical.AllCriticalCarrier (N ω z w)) :
    ∃ a : Fin 3, ∃ ε δ : Bool,
      z=signedPower ω ε (2*a.val) ∧ w=signedPower ω δ a.val := by
  obtain ⟨h0,h1,h2⟩ := allCritical_N_selected hN
  obtain ⟨hX,hY,_⟩ := three_skews_zero hω.1 hω.2 hz hw h0 h1 h2
  obtain ⟨hA,hB⟩ := zero_phases_squares hz hw hX hY
  exact locus_twelve_grid hω.2 hA hB


theorem allCritical_N_fixed {ω z w : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω) (hz : Complex.normSq z=1) (hw : Complex.normSq w=1)
    (hN : NoFourMUBs.Step2.Critical.AllCriticalCarrier (N ω z w)) : OAI.MUB6.Equivalent (N ω z w) fixedF6 := by
  obtain ⟨a,ε,δ,hz,hw⟩ := allCritical_N_grid hω hz hw hN
  rw [hz,hw]
  exact OAI.MUB6.equivalent_trans (N_grid_equivalent hω.2 a ε δ) (N_primitive_fixed hω)

/-- The continuous Fourier-family obligation collapses to the single fixed
F6 representative on the actual all-critical domain. Both transpose branches
and every explicit monomial equivalence from the classification are preserved. -/
theorem allCritical_fourier_fixed {H : OAI.MUB6.CMatrix} (hH : NoFourMUBs.Step2.Critical.AllCriticalCarrier H)
    (hf : CriticalFourierRouting20261003.FourierOrTranspose H) :
    OAI.MUB6.Equivalent H fixedF6 := by
  obtain ⟨ω,z,w,hω,hz,hw,he⟩ := hf
  rcases he with he | he
  · have hr : ∀ j, Worker12.fourierPhase ω z w 0 j=1 := by
      intro j
      have h := N_first_column ω z w j
      rw [N_eq_fourier_transpose] at h
      exact h
    have hc : ∀ i, Worker12.fourierPhase ω z w i 0=1 := by
      intro i
      have h := N_first_row ω z w i
      rw [N_eq_fourier_transpose] at h
      exact h
    have hn := NoFourMUBs.Step2.Critical.allCriticalCarrier_transpose (allCritical_monomial hH he hr hc)
    rw [← N_eq_fourier_transpose] at hn
    have ht := NoFourMUBs.Step2.FourierBridge.oai_equivalent_transpose (allCritical_N_fixed hω hz hw hn)
    change OAI.MUB6.Equivalent (N ω z w)ᵀ fixedF6ᵀ at ht
    rw [fixedF6_transpose,N_eq_fourier_transpose] at ht
    change OAI.MUB6.Equivalent (Worker12.fourierPhase ω z w) fixedF6 at ht
    exact OAI.MUB6.equivalent_trans he ht
  · have heN : OAI.MUB6.Equivalent H (N ω z w) := by
      rw [N_eq_fourier_transpose]
      exact he
    exact OAI.MUB6.equivalent_trans heN (allCritical_N_fixed hω hz hw
      (allCritical_monomial hH heN (N_first_row ω z w) (N_first_column ω z w)))


/-- Exact lightweight entry form matching the fixed Fourier pilot's carrier.
The later graph binding need only identify its named omega with standardOmega. -/
theorem fixedF6_literal : fixedF6 =
    !![1,1,1,1,1,1;
       1,Hadamard6.standardOmega,star Hadamard6.standardOmega,
         1,Hadamard6.standardOmega,star Hadamard6.standardOmega;
       1,star Hadamard6.standardOmega,Hadamard6.standardOmega,
         1,star Hadamard6.standardOmega,Hadamard6.standardOmega;
       1,1,1,-1,-1,-1;
       1,Hadamard6.standardOmega,star Hadamard6.standardOmega,
         -1,-Hadamard6.standardOmega,-star Hadamard6.standardOmega;
       1,star Hadamard6.standardOmega,Hadamard6.standardOmega,
         -1,-star Hadamard6.standardOmega,-Hadamard6.standardOmega] := by
  have hω := Hadamard6.standardOmega_isPrimitiveCubicPhase
  have hs := Hadamard6.star_eq_square_of_quadratic_unit hω.1 hω.2
  ext i j
  fin_cases i <;> fin_cases j <;> simp [fixedF6,N,hs]

end
#print axioms allCritical_N_selected
#print axioms allCritical_N_grid
#print axioms allCritical_N_fixed
#print axioms allCritical_fourier_fixed
#print axioms fixedF6_literal
end FourierCriticalLocus20261003

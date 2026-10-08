import CriticalCornerPhysical
import FourierCriticalEquivalences
import SingularFourierRouting

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace FourierCriticalLocus20261003
open Mub6 Mub6.Numerical Mub6.Classification Matrix
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners GlobalCornerDomain CriticalPhysical20261003
open GlobalCornerSixSine
noncomputable section

theorem candidate_monomial (H : Mat6) (p q : Perm) (r c : Fin 6 → ℂ)
    (hr : ∀ i, Complex.normSq (r i)=1) (hc : ∀ j, Complex.normSq (c j)=1)
    (u v : Perm) :
    candidate (monomialEdge p q r c H) u v=candidate H (u.trans p) (v.trans q) := by
  change normalizeCarrier (rephase (fun i => r (u i)) (fun j => c (v j))
    (H.submatrix (u.trans p) (v.trans q))) = _
  exact normalize_rephase _ _ _ (fun i => hr (u i)) (fun j => hc (v j))

/-- Exact normalized monomial transport of the all-critical predicate. -/
theorem allCritical_monomial {H K : Mat6} (hH : AllCritical H)
    (he : MonomialEquivalent H K) (hrow : ∀ j, K 0 j=1) (hcol : ∀ i, K i 0=1) :
    AllCritical K := by
  rcases he with ⟨p,q,r,c,hr,hc,rfl⟩
  refine ⟨⟨rephase_PhaseHadamard r c hr hc (submatrix_hadamard hH.1.1 p q),hrow,hcol⟩,?_⟩
  intro u v
  rw [candidate_monomial H p q r c hr hc u v]
  exact hH.2 _ _

theorem allCritical_transpose {H : Mat6} (hH : AllCritical H) : AllCritical Hᵀ := by
  refine ⟨normalized_transpose hH.1,?_⟩
  intro p q
  rw [candidate_transpose]
  have hc := oriented_score true (candidate_normalized hH.1.1 q p).1
  change score (candidate H q p)ᵀ=score (candidate H q p) at hc
  rw [hc]
  exact hH.2 q p

theorem sixSkew_re_zero (a b c d e f : ℂ) : (sixSkew a b c d e f).re=0 := by
  have hs : star (sixSkew a b c d e f)= -sixSkew a b c d e f := by
    simp only [sixSkew,skew,star_add,star_sub,star_mul,star_star]
    ring
  have hr := congrArg Complex.re hs
  simp only [Complex.star_def,Complex.conj_re,Complex.neg_re] at hr
  linarith

theorem zero_sideScore_sixSkew {A : Mat3}
    (hA : ∀ i j, Complex.normSq (A i j)=1) (hz : physicalSideScore A=0) :
    sixSkew (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)=0 := by
  rw [physicalSideScore_sixSkew (hA 1) (hA 2)] at hz
  have hr := sixSkew_re_zero (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)
  apply Complex.ext
  · exact hr
  · simp only [pow_two,Complex.neg_re,Complex.mul_re,hr,zero_mul,zero_sub,neg_neg] at hz
    nlinarith

theorem allCritical_selected_sixSkew_zero {H : Mat6} (hH : AllCritical H)
    (c : Fin 3 → Fin 6) (hc : Function.Injective c) :
    sixSkew (H 1 (c 0)) (H 1 (c 1)) (H 1 (c 2))
      (H 2 (c 0)) (H 2 (c 1)) (H 2 (c 2))=0 := by
  have h := allCritical_selected_R_zero hH c hc
  rw [side_R_score] at h
  exact zero_sideScore_sixSkew (fun i j => hH.1.1.1 (front i) (c j)) h


def pivotRows : Perm := (Equiv.swap 1 3).trans (Equiv.swap 2 4)

theorem allCritical_N_selected {ω z w : ℂ} (hN : AllCritical (N ω z w)) :
    sixSkew 1 z w 1 (ω*z) (ω^2*w)=0 ∧
    sixSkew 1 z (-w) 1 (ω*z) (-(ω^2*w))=0 ∧
    sixSkew 1 (-z) w 1 (-(ω*z)) (ω^2*w)=0 := by
  let K := (N ω z w).submatrix pivotRows (Equiv.refl _)
  have hrow : ∀ j, K 0 j=1 := by
    intro j
    change N ω z w (pivotRows 0) j=1
    simp [pivotRows,Equiv.swap_apply_def,N_first_row]
  have hcol : ∀ i, K i 0=1 := fun i => N_first_column ω z w (pivotRows i)
  have he : candidate (N ω z w) pivotRows (Equiv.refl _)=K := normalized_fixed hrow hcol
  have hK : AllCritical K := by
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
    (hN : AllCritical (N ω z w)) :
    ∃ a : Fin 3, ∃ ε δ : Bool,
      z=signedPower ω ε (2*a.val) ∧ w=signedPower ω δ a.val := by
  obtain ⟨h0,h1,h2⟩ := allCritical_N_selected hN
  obtain ⟨hX,hY,_⟩ := three_skews_zero hω.1 hω.2 hz hw h0 h1 h2
  obtain ⟨hA,hB⟩ := zero_phases_squares hz hw hX hY
  exact locus_twelve_grid hω.2 hA hB


theorem allCritical_N_fixed {ω z w : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω) (hz : Complex.normSq z=1) (hw : Complex.normSq w=1)
    (hN : AllCritical (N ω z w)) : MonomialEquivalent (N ω z w) fixedF6 := by
  obtain ⟨a,ε,δ,hz,hw⟩ := allCritical_N_grid hω hz hw hN
  rw [hz,hw]
  exact Worker12.monomialEquivalent_trans (N_grid_equivalent hω.2 a ε δ) (N_primitive_fixed hω)

/-- The continuous Fourier-family obligation collapses to the single fixed
F6 representative on the actual all-critical domain. Both transpose branches
and every explicit monomial equivalence from the classification are preserved. -/
theorem allCritical_fourier_fixed {H : Mat6} (hH : AllCritical H)
    (hf : CriticalFourierRouting20261003.FourierOrTranspose H) :
    MonomialEquivalent H fixedF6 := by
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
    have hn := allCritical_transpose (allCritical_monomial hH he hr hc)
    rw [← N_eq_fourier_transpose] at hn
    have ht := Worker12.monomialEquivalent_transpose (allCritical_N_fixed hω hz hw hn)
    change MonomialEquivalent (N ω z w)ᵀ fixedF6ᵀ at ht
    rw [fixedF6_transpose,N_eq_fourier_transpose,Matrix.transpose_transpose] at ht
    exact Worker12.monomialEquivalent_trans he ht
  · have heN : MonomialEquivalent H (N ω z w) := by
      rw [N_eq_fourier_transpose]
      exact he
    exact Worker12.monomialEquivalent_trans heN (allCritical_N_fixed hω hz hw
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
#print axioms candidate_monomial
#print axioms allCritical_monomial
#print axioms allCritical_transpose
#print axioms sixSkew_re_zero
#print axioms zero_sideScore_sixSkew
#print axioms allCritical_selected_sixSkew_zero
#print axioms allCritical_N_selected
#print axioms allCritical_N_grid
#print axioms allCritical_N_fixed
#print axioms allCritical_fourier_fixed
#print axioms fixedF6_literal
end FourierCriticalLocus20261003

import KarlssonFourierImport
set_option autoImplicit false
namespace Mub6.Classification.KarlssonSeamSymmetry
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonFourierImport
open Mub6.Classification.KarlssonLedger Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 3000000

def flipP : Equiv.Perm (Fin 6) := Equiv.swap 1 4
def flipQ : Equiv.Perm (Fin 6) := Equiv.swap 2 5
def rootSwap : Equiv.Perm (Fin 6) where
  toFun := ![0,2,1,3,5,4]
  invFun := ![0,2,1,3,5,4]
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl



theorem raw_flip_p (w p q : ℂ) :
    (fun i j => Worker12.fourierPhase w (-p) q (flipP i) ((Equiv.refl _) j)) =
    Worker12.fourierPhase w p q := by
  funext i j
  fin_cases i <;> fin_cases j

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (w : ℂ) = (w)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change (-(((-p))*(1)) : ℂ) = ((p)*(1))
    ring

  · change (-(((-p))*(w)) : ℂ) = ((p)*(w))
    ring

  · change (-(((-p))*((w)^2)) : ℂ) = ((p)*((w)^2))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change (w : ℂ) = (w)
    ring

  · change ((q)*(1) : ℂ) = ((q)*(1))
    ring

  · change ((q)*((w)^2) : ℂ) = ((q)*((w)^2))
    ring

  · change ((q)*(w) : ℂ) = ((q)*(w))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (w : ℂ) = (w)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change (((-p))*(1) : ℂ) = (-((p)*(1)))
    ring

  · change (((-p))*(w) : ℂ) = (-((p)*(w)))
    ring

  · change (((-p))*((w)^2) : ℂ) = (-((p)*((w)^2)))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change (w : ℂ) = (w)
    ring

  · change (-((q)*(1)) : ℂ) = (-((q)*(1)))
    ring

  · change (-((q)*((w)^2)) : ℂ) = (-((q)*((w)^2)))
    ring

  · change (-((q)*(w)) : ℂ) = (-((q)*(w)))
    ring

theorem raw_flip_q (w p q : ℂ) :
    (fun i j => Worker12.fourierPhase w p (-q) (flipQ i) ((Equiv.refl _) j)) =
    Worker12.fourierPhase w p q := by
  funext i j
  fin_cases i <;> fin_cases j

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (w : ℂ) = (w)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change ((p)*(1) : ℂ) = ((p)*(1))
    ring

  · change ((p)*(w) : ℂ) = ((p)*(w))
    ring

  · change ((p)*((w)^2) : ℂ) = ((p)*((w)^2))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change (w : ℂ) = (w)
    ring

  · change (-(((-q))*(1)) : ℂ) = ((q)*(1))
    ring

  · change (-(((-q))*((w)^2)) : ℂ) = ((q)*((w)^2))
    ring

  · change (-(((-q))*(w)) : ℂ) = ((q)*(w))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change (w : ℂ) = (w)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change (-((p)*(1)) : ℂ) = (-((p)*(1)))
    ring

  · change (-((p)*(w)) : ℂ) = (-((p)*(w)))
    ring

  · change (-((p)*((w)^2)) : ℂ) = (-((p)*((w)^2)))
    ring

  · change (1 : ℂ) = (1)
    ring

  · change ((w)^2 : ℂ) = ((w)^2)
    ring

  · change (w : ℂ) = (w)
    ring

  · change (((-q))*(1) : ℂ) = (-((q)*(1)))
    ring

  · change (((-q))*((w)^2) : ℂ) = (-((q)*((w)^2)))
    ring

  · change (((-q))*(w) : ℂ) = (-((q)*(w)))
    ring

theorem raw_root_swap (w p q : ℂ) (hw : (w^2)^2=w) :
    (fun i j => Worker12.fourierPhase (w^2) p q ((Equiv.refl _) i) (rootSwap j)) =
    Worker12.fourierPhase w p q := by
  funext i j
  fin_cases i <;> fin_cases j

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    simp only [hw] <;> ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    simp only [hw] <;> ring

  · change ((1)*(1) : ℂ) = ((1)*(1))
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change (((w^2))^2 : ℂ) = (w)
    simp only [hw] <;> ring

  · change ((w^2) : ℂ) = ((w)^2)
    simp only [hw] <;> ring

  · change ((p)*(1) : ℂ) = ((p)*(1))
    simp only [hw] <;> ring

  · change ((p)*(((w^2))^2) : ℂ) = ((p)*(w))
    simp only [hw] <;> ring

  · change ((p)*((w^2)) : ℂ) = ((p)*((w)^2))
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change ((w^2) : ℂ) = ((w)^2)
    simp only [hw] <;> ring

  · change (((w^2))^2 : ℂ) = (w)
    simp only [hw] <;> ring

  · change ((q)*(1) : ℂ) = ((q)*(1))
    simp only [hw] <;> ring

  · change ((q)*((w^2)) : ℂ) = ((q)*((w)^2))
    simp only [hw] <;> ring

  · change ((q)*(((w^2))^2) : ℂ) = ((q)*(w))
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    simp only [hw] <;> ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    simp only [hw] <;> ring

  · change (-((1)*(1)) : ℂ) = (-((1)*(1)))
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change (((w^2))^2 : ℂ) = (w)
    simp only [hw] <;> ring

  · change ((w^2) : ℂ) = ((w)^2)
    simp only [hw] <;> ring

  · change (-((p)*(1)) : ℂ) = (-((p)*(1)))
    simp only [hw] <;> ring

  · change (-((p)*(((w^2))^2)) : ℂ) = (-((p)*(w)))
    simp only [hw] <;> ring

  · change (-((p)*((w^2))) : ℂ) = (-((p)*((w)^2)))
    simp only [hw] <;> ring

  · change (1 : ℂ) = (1)
    simp only [hw] <;> ring

  · change ((w^2) : ℂ) = ((w)^2)
    simp only [hw] <;> ring

  · change (((w^2))^2 : ℂ) = (w)
    simp only [hw] <;> ring

  · change (-((q)*(1)) : ℂ) = (-((q)*(1)))
    simp only [hw] <;> ring

  · change (-((q)*((w^2))) : ℂ) = (-((q)*((w)^2)))
    simp only [hw] <;> ring

  · change (-((q)*(((w^2))^2)) : ℂ) = (-((q)*(w)))
    simp only [hw] <;> ring


theorem reindex_occurs_iff (H : BasisMatrix) (P Q : Equiv.Perm (Fin 6)) :
    OccursAsQuartetEdge (monomialEdge P Q (fun _ => 1) (fun _ => 1) H) ↔
    OccursAsQuartetEdge H := by
  constructor
  · intro h
    have hh := occursAsQuartetEdge_monomial h P.symm Q.symm (fun _ => 1) (fun _ => 1)
      (by intro i; norm_num) (by intro i; norm_num)
    have he : monomialEdge P.symm Q.symm (fun _ => 1) (fun _ => 1)
        (monomialEdge P Q (fun _ => 1) (fun _ => 1) H) = H := by
      funext i j
      simp [monomialEdge]
    rwa [he] at hh
  · intro h
    exact occursAsQuartetEdge_monomial h P Q (fun _ => 1) (fun _ => 1)
      (by intro i; norm_num) (by intro i; norm_num)

theorem affine_fourier_occurs_iff (w p q : ℂ) :
    OccursAsQuartetEdge (normalized (affineFourierMatrix w p q)) ↔
    OccursAsQuartetEdge (Worker12.physicalNormalize (Worker12.fourierPhase w p q)) := by
  calc
    _ ↔ OccursAsQuartetEdge (monomialEdge undoInterleave undoInterleave
      (fun _ => 1) (fun _ => 1) (normalized (affineFourierMatrix w p q))) :=
        (reindex_occurs_iff _ _ _).symm
    _ ↔ OccursAsQuartetEdge (transposeEdge
      (Worker12.physicalNormalize (Worker12.fourierPhase w p q))) := by rw [source_binding]
    _ ↔ _ := occursAsQuartetEdge_transpose_iff _

theorem raw_reindex_transports {H K : BasisMatrix} (P Q : Equiv.Perm (Fin 6))
    (he : (fun i j => H (P i) (Q j))=K)
    (h : OccursAsQuartetEdge (Worker12.physicalNormalize H)) :
    OccursAsQuartetEdge (Worker12.physicalNormalize K) := by
  have hh := occursAsQuartetEdge_monomial h P Q (fun _ => 1) (fun _ => 1)
    (by intro i; norm_num) (by intro i; norm_num)
  have he' : monomialEdge P Q (fun _ => 1) (fun _ => 1) (Worker12.physicalNormalize H) =
      Worker12.physicalNormalize K := by
    funext i j
    have hij := congrFun (congrFun he i) j
    simp only [monomialEdge, Worker12.physicalNormalize, phaseScale, one_mul, mul_one]
    exact congrArg (fun z : ℂ => ((Real.sqrt 6)⁻¹ : ℂ) * z) hij
  rwa [he'] at hh

def canonicalLabel : SeamLabel := (false,false,false,false)

theorem seam_canonical_occurs (label : SeamLabel) (x : Fin 2 → ℝ)
    (h : OccursAsQuartetEdge (normalized (seamMatrix label x))) :
    OccursAsQuartetEdge (normalized (seamMatrix canonicalLabel x)) := by
  rcases label with ⟨tr,os,ps,qs⟩
  have ha : OccursAsQuartetEdge (normalized (affineFourierMatrix
      (if os then standardOmega^2 else standardOmega)
      (signedCircle ps (x 0)) (signedCircle qs (x 1)))) := by
    cases tr
    · exact h
    · exact (occursAsQuartetEdge_transpose_iff _).mp h
  have hf := (affine_fourier_occurs_iff _ _ _).mp ha
  have hp : OccursAsQuartetEdge (Worker12.physicalNormalize (Worker12.fourierPhase
      (if os then standardOmega^2 else standardOmega)
      (signedCircle false (x 0)) (signedCircle qs (x 1)))) := by
    cases ps
    · exact hf
    · have hh := raw_reindex_transports flipP (Equiv.refl _) (raw_flip_p
        (if os then standardOmega^2 else standardOmega) (signedCircle false (x 0))
        (signedCircle qs (x 1)))
      apply hh
      simpa [signedCircle,signValue] using hf
  have hq : OccursAsQuartetEdge (Worker12.physicalNormalize (Worker12.fourierPhase
      (if os then standardOmega^2 else standardOmega)
      (signedCircle false (x 0)) (signedCircle false (x 1)))) := by
    cases qs
    · exact hp
    · apply raw_reindex_transports (flipQ) (Equiv.refl _) (raw_flip_q
        (if os then standardOmega^2 else standardOmega) (signedCircle false (x 0))
        (signedCircle false (x 1)))
      simpa [signedCircle,signValue] using hp
  have hc : OccursAsQuartetEdge (Worker12.physicalNormalize (Worker12.fourierPhase
      standardOmega (signedCircle false (x 0)) (signedCircle false (x 1)))) := by
    cases os
    · exact hq
    · have hw : (standardOmega^2)^2=standardOmega := by
        have hpoly := standardOmega_isPrimitiveCubicPhase.2
        linear_combination (standardOmega^2-standardOmega)*hpoly
      exact raw_reindex_transports (Equiv.refl _) rootSwap
        (raw_root_swap _ _ _ hw) hq
  exact (affine_fourier_occurs_iff _ _ _).mpr hc

theorem seam_job_canonical_covers (label : SeamLabel) (bounds : Fin 2 → Interval) :
    Live ⟨.seam label,bounds⟩ → Live ⟨.seam canonicalLabel,bounds⟩ := by
  rintro ⟨x,hx,hg,hocc⟩
  exact ⟨x,hx,hg,seam_canonical_occurs label x hocc⟩

#print axioms raw_flip_p
#print axioms raw_flip_q
#print axioms raw_root_swap
#print axioms affine_fourier_occurs_iff
#print axioms seam_canonical_occurs
#print axioms seam_job_canonical_covers
end
end Mub6.Classification.KarlssonSeamSymmetry

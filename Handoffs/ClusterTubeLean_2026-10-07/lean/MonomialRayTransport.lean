import RawColumnAmplitude
import FormalCore

noncomputable section
open ComplexConjugate
open scoped BigOperators

namespace Seed0024ClusterTube20261007

theorem rawOverlap_eq_FormalCore (X Y : Fin 6 → ℂ) :
    rawOverlap X Y=Mub6.Numerical.rawOverlap X Y := rfl

def pullbackRay (rows : Equiv.Perm (Fin 6)) (g X : Fin 6 → ℂ) : Fin 6 → ℂ :=
  fun k => conj (g (rows.symm k))*X (rows.symm k)

def canonicalRay (rows : Equiv.Perm (Fin 6)) (g X : Fin 6 → ℂ) : Fin 6 → ℂ :=
  Mub6.Numerical.dephaseFlatRay (pullbackRay rows g X)

theorem pullbackRay_flat (rows : Equiv.Perm (Fin 6)) (g X : Fin 6 → ℂ)
    (hg : ∀ i,Complex.normSq (g i)=1) (hX : ∀ i,Complex.normSq (X i)=1) :
    ∀ k,Complex.normSq (pullbackRay rows g X k)=1 := by
  intro k
  simp only [pullbackRay,Complex.normSq_mul,Complex.normSq_conj,hg,hX,one_mul]

theorem pullbackRay_overlap (rows : Equiv.Perm (Fin 6)) (g X Y : Fin 6 → ℂ)
    (hg : ∀ i,Complex.normSq (g i)=1) :
    rawOverlap (pullbackRay rows g X) (pullbackRay rows g Y)=rawOverlap X Y := by
  have h := Mub6.overlap_rephase (fun i _ => X (rows.symm i))
    (fun i _ => Y (rows.symm i)) (fun i => conj (g (rows.symm i)))
    (fun _ => 1) (fun _ => 1)
    (fun i => by rw [Complex.normSq_conj,hg]) (0 : Fin 6) (0 : Fin 6)
  calc
    _ = rawOverlap (fun i => X (rows.symm i)) (fun i => Y (rows.symm i)) := by
      simpa only [Mub6.overlap,Mub6.rephase,rawOverlap,pullbackRay,mul_one,
        star_one,one_mul,Complex.star_def] using h
    _ = _ := Equiv.sum_comp rows.symm (fun i => conj (X i)*Y i)

theorem monomial_reference_overlap (R Q : Fin 6 → Fin 6 → ℂ)
    (rows cols : Equiv.Perm (Fin 6)) (g X : Fin 6 → ℂ)
    (hQ : ∀ i j,Q i j=g i*R (rows i) (cols j)) (j : Fin 6) :
    rawOverlap (fun i => Q i j) X=
      rawOverlap (fun k => R k (cols j)) (pullbackRay rows g X) := by
  unfold rawOverlap
  calc
    _ = ∑ i : Fin 6, conj (R (rows i) (cols j))*pullbackRay rows g X (rows i) := by
      apply Finset.sum_congr rfl
      intro i _
      simp only [hQ,map_mul,pullbackRay,Equiv.symm_apply_apply]
      ring
    _ = _ := Equiv.sum_comp rows (fun k => conj (R k (cols j))*pullbackRay rows g X k)

theorem raw_unit_coordinate_ne_zero (X : Fin 6 → ℂ)
    (hX : ∀ i,Complex.normSq (X i)=1) (i : Fin 6) : X i≠0 := by
  intro he
  have h := hX i
  rw [he] at h
  norm_num at h

theorem dephase_raw_unit_ray (X : Fin 6 → ℂ) (hX : ∀ i,Complex.normSq (X i)=1) :
    Mub6.Numerical.IsRawUnitRay (Mub6.Numerical.dephaseFlatRay X) := by
  constructor
  · exact div_self (raw_unit_coordinate_ne_zero X hX 0)
  · intro i
    change Complex.normSq (X i/X 0)=1
    rw [Complex.normSq_div,hX,hX]
    norm_num

theorem dephase_raw_overlap_normSq (X Y : Fin 6 → ℂ)
    (hX : ∀ i,Complex.normSq (X i)=1) (hY : ∀ i,Complex.normSq (Y i)=1) :
    Complex.normSq (rawOverlap (Mub6.Numerical.dephaseFlatRay X)
      (Mub6.Numerical.dephaseFlatRay Y))=Complex.normSq (rawOverlap X Y) := by
  rw [rawOverlap_eq_FormalCore,Mub6.Numerical.rawOverlap_dephaseFlatRay,
    Complex.normSq_div,Complex.normSq_mul]
  change Complex.normSq (Mub6.Numerical.rawOverlap X Y)/
    (Complex.normSq (conj (X 0))*Complex.normSq (Y 0))=Complex.normSq (rawOverlap X Y)
  rw [Complex.normSq_conj,hX,hY]
  simp only [one_mul,div_one,rawOverlap_eq_FormalCore]

theorem dephase_raw_overlap_norm (X Y : Fin 6 → ℂ)
    (hX : ∀ i,Complex.normSq (X i)=1) (hY : ∀ i,Complex.normSq (Y i)=1) :
    ‖rawOverlap (Mub6.Numerical.dephaseFlatRay X) (Mub6.Numerical.dephaseFlatRay Y)‖=
      ‖rawOverlap X Y‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).1
  simp only [Complex.sq_norm]
  exact dephase_raw_overlap_normSq X Y hX hY

theorem reference_overlap_dephase_norm (R : Fin 6 → Fin 6 → ℂ) (j : Fin 6)
    (hR : R 0 j=1) (X : Fin 6 → ℂ) (hX : ∀ i,Complex.normSq (X i)=1) :
    ‖rawOverlap (fun i => R i j) (Mub6.Numerical.dephaseFlatRay X)‖=
      ‖rawOverlap (fun i => R i j) X‖ := by
  have hR' : Mub6.Numerical.dephaseFlatRay (fun i => R i j)=(fun i => R i j) := by
    funext i
    simp only [Mub6.Numerical.dephaseFlatRay,hR,div_one]
  have hx0 : ‖X 0‖=1 := by
    have h := hX 0
    rw [Complex.normSq_eq_norm_sq] at h
    nlinarith [norm_nonneg (X 0)]
  have h := Mub6.Numerical.rawOverlap_dephaseFlatRay (fun i => R i j) X
  rw [hR',hR,star_one,one_mul] at h
  simp only [rawOverlap_eq_FormalCore]
  rw [h,norm_div,hx0,div_one]

theorem canonicalRay_isRawUnitRay (rows : Equiv.Perm (Fin 6)) (g X : Fin 6 → ℂ)
    (hg : ∀ i,Complex.normSq (g i)=1) (hX : ∀ i,Complex.normSq (X i)=1) :
    Mub6.Numerical.IsRawUnitRay (canonicalRay rows g X) :=
  dephase_raw_unit_ray _ (pullbackRay_flat rows g X hg hX)

theorem canonicalRay_overlap_normSq (rows : Equiv.Perm (Fin 6)) (g X Y : Fin 6 → ℂ)
    (hg : ∀ i,Complex.normSq (g i)=1)
    (hX : ∀ i,Complex.normSq (X i)=1) (hY : ∀ i,Complex.normSq (Y i)=1) :
    Complex.normSq (rawOverlap (canonicalRay rows g X) (canonicalRay rows g Y))=
      Complex.normSq (rawOverlap X Y) := by
  rw [canonicalRay,canonicalRay,dephase_raw_overlap_normSq _ _
    (pullbackRay_flat rows g X hg hX) (pullbackRay_flat rows g Y hg hY),
    pullbackRay_overlap rows g X Y hg]

theorem canonicalRay_reference_overlap_norm (R Q : Fin 6 → Fin 6 → ℂ)
    (rows cols : Equiv.Perm (Fin 6)) (g X : Fin 6 → ℂ)
    (hg : ∀ i,Complex.normSq (g i)=1) (hX : ∀ i,Complex.normSq (X i)=1)
    (hR : ∀ j,R 0 j=1) (hQ : ∀ i j,Q i j=g i*R (rows i) (cols j)) (j : Fin 6) :
    ‖rawOverlap (fun k => R k (cols j)) (canonicalRay rows g X)‖=
      ‖rawOverlap (fun i => Q i j) X‖ := by
  rw [canonicalRay,reference_overlap_dephase_norm R (cols j) (hR _) _
    (pullbackRay_flat rows g X hg hX)]
  exact congrArg norm (monomial_reference_overlap R Q rows cols g X hQ j).symm

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.rawOverlap_eq_FormalCore
#print axioms Seed0024ClusterTube20261007.pullbackRay_flat
#print axioms Seed0024ClusterTube20261007.pullbackRay_overlap
#print axioms Seed0024ClusterTube20261007.monomial_reference_overlap
#print axioms Seed0024ClusterTube20261007.raw_unit_coordinate_ne_zero
#print axioms Seed0024ClusterTube20261007.dephase_raw_unit_ray
#print axioms Seed0024ClusterTube20261007.dephase_raw_overlap_normSq
#print axioms Seed0024ClusterTube20261007.dephase_raw_overlap_norm
#print axioms Seed0024ClusterTube20261007.reference_overlap_dephase_norm
#print axioms Seed0024ClusterTube20261007.canonicalRay_isRawUnitRay
#print axioms Seed0024ClusterTube20261007.canonicalRay_overlap_normSq
#print axioms Seed0024ClusterTube20261007.canonicalRay_reference_overlap_norm

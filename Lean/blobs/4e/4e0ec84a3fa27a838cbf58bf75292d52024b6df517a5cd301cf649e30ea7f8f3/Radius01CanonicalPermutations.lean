import Radius01Permutations

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

def swapTail : Equiv.Perm (Fin 6) := Equiv.swap 4 5

def CanonicalRows (H : Mat6) : Prop :=
  rowOrientation H 1 false ∧ rowOrientation H 2 true ∧ 0 < (H 1 3).re

def CanonicalColumns (H : Mat6) : Prop := CanonicalRows (fun i j => H j i)

theorem swapTail_fixesLeading : FixesLeading swapTail := by
  simpa [swapTail,bottomIndex,Equiv.swap_apply_def] using fixesLeading_swap_bottom 1 2

theorem fixesLeading_trans {p q : Equiv.Perm (Fin 6)}
    (hp : FixesLeading p) (hq : FixesLeading q) : FixesLeading (p.trans q) := by
  simp [FixesLeading,Equiv.trans_apply,hp.1,hp.2.1,hp.2.2,hq.1,hq.2.1,hq.2.2]

theorem permuteMatrix_comp (H : Mat6) (r c r' c' : Equiv.Perm (Fin 6)) :
    permuteMatrix (permuteMatrix H r c) r' c'=
      permuteMatrix H (r'.trans r) (c'.trans c) := rfl

theorem rowOrientation_swapTail (H : Mat6) (i : Fin 3) (o : Bool) :
    rowOrientation (permuteMatrix H (Equiv.refl _) swapTail) i o ↔ rowOrientation H i (!o) := by
  have hE := blockE_permute H (Equiv.refl _) swapTail fixesLeading_refl swapTail_fixesLeading
  have hA : (fun k => blockB (permuteMatrix H (Equiv.refl _) swapTail) k 0)=
      (fun k => blockB H k 0) := by
    funext k
    simp [blockB,permuteMatrix,swapTail,bottomIndex,Equiv.swap_apply_def]
  have h1 : sideRowNormalized (permuteMatrix H (Equiv.refl _) swapTail) i 1=
      sideRowNormalized H i 2 := by
    simp [sideRowNormalized,blockB,permuteMatrix,swapTail,bottomIndex,Equiv.swap_apply_def]
  have h2 : sideRowNormalized (permuteMatrix H (Equiv.refl _) swapTail) i 2=
      sideRowNormalized H i 1 := by
    simp [sideRowNormalized,blockB,permuteMatrix,swapTail,bottomIndex,Equiv.swap_apply_def]
  cases o <;> simp only [rowOrientation,hE,hA,h1,h2] <;> simp [and_comm]

/-- First choose a positive-real entry as the anchor, then swap only the two
remaining side columns to enforce the source orientation. -/
theorem physical_canonical_rows_permutation01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ cols : Equiv.Perm (Fin 6), FixesLeading cols ∧
      CanonicalRows (permuteMatrix H (Equiv.refl _) cols) := by
  obtain ⟨j,hj⟩ := physical_side_positive_anchor01 hH hd b r hball hr 1 (by decide)
  let p : Equiv.Perm (Fin 6) := Equiv.swap 3 (bottomIndex j)
  have hp : FixesLeading p := by
    have h0 : bottomIndex 0=(3 : Fin 6) := rfl
    simpa only [p,h0] using fixesLeading_swap_bottom 0 j
  let J := permuteMatrix H (Equiv.refl _) p
  have hJ := permute_physical hH (Equiv.refl _) p
  have hdJ := permute_dephased hd (Equiv.refl _) p fixesLeading_refl hp
  have hbJ := seedBall_permute b r hball (Equiv.refl _) p fixesLeading_refl hp
  have hpos : 0 < (J 1 3).re := by
    change 0 < (H 1 (p 3)).re
    rw [show p 3=bottomIndex j by exact Equiv.swap_apply_left _ _]
    simpa [blockB,upperIndex] using hj
  obtain ⟨o,h1,h2⟩ := physical_side_rows_opposite01 hJ hdJ b r hbJ hr
  cases o
  · exact ⟨p,hp,h1,by simpa using h2,hpos⟩
  · refine ⟨swapTail.trans p,fixesLeading_trans swapTail_fixesLeading hp,?_,?_,?_⟩
    · change rowOrientation (permuteMatrix J (Equiv.refl _) swapTail) 1 false
      exact (rowOrientation_swapTail J 1 false).2 h1
    · change rowOrientation (permuteMatrix J (Equiv.refl _) swapTail) 2 true
      exact (rowOrientation_swapTail J 2 true).2 (by simpa using h2)
    · change 0 < ((permuteMatrix J (Equiv.refl _) swapTail) 1 3).re
      simpa [permuteMatrix,swapTail,Equiv.swap_apply_def] using hpos

/-- A permutation of only the lower rows leaves every datum used by the
canonical upper-right side block unchanged. -/
theorem canonicalRows_permute_rows {H : Mat6} (hc : CanonicalRows H)
    (rows : Equiv.Perm (Fin 6)) (hr : FixesLeading rows) :
    CanonicalRows (permuteMatrix H rows (Equiv.refl _)) := by
  have hE := blockE_permute H rows (Equiv.refl _) hr fixesLeading_refl
  have hB : blockB (permuteMatrix H rows (Equiv.refl _))=blockB H := by
    ext i j
    simp only [blockB,permuteMatrix,fixesLeading_upperIndex hr,Equiv.refl_apply]
  simpa only [CanonicalRows,rowOrientation,sideRowNormalized,hE,hB,permuteMatrix,
    hr.2.1,Equiv.refl_apply] using hc

/-- Every physical seed-ball completion has a representation with the exact
source orientations and positive-real z,x anchors, by explicit finite row and
column permutations that leave the leading corner untouched. -/
theorem physical_canonical_permutations01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ rows cols : Equiv.Perm (Fin 6), FixesLeading rows ∧ FixesLeading cols ∧
      CanonicalRows (permuteMatrix H rows cols) ∧ CanonicalColumns (permuteMatrix H rows cols) := by
  obtain ⟨cols,hcols,hcan⟩ := physical_canonical_rows_permutation01 hH hd b r hball hr
  let J := permuteMatrix H (Equiv.refl _) cols
  have hJ := permute_physical hH (Equiv.refl _) cols
  have hdJ := permute_dephased hd (Equiv.refl _) cols fixesLeading_refl hcols
  have hbJ := seedBall_permute b r hball (Equiv.refl _) cols fixesLeading_refl hcols
  obtain ⟨rows,hrows,hcanT⟩ := physical_canonical_rows_permutation01 (physical_transpose hJ)
    ⟨hdJ.2,hdJ.1⟩ b r (seedBall_transpose b r hbJ) hr
  refine ⟨rows,cols,hrows,hcols,?_,?_⟩
  · exact canonicalRows_permute_rows hcan rows hrows
  · exact hcanT

/-- All physical assumptions, maximality with ties, the positive leading
score, and the punctured boundary survive the canonical representation. -/
theorem physical_canonical_full_domain01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ rows cols : Equiv.Perm (Fin 6), FixesLeading rows ∧ FixesLeading cols ∧
      let J := permuteMatrix H rows cols
      Physical J ∧ Dephased J ∧ Maximal J ∧ leadingR J=leadingR H ∧
      0 < leadingR J ∧ InPuncturedSeedBall J b r ∧ CanonicalRows J ∧ CanonicalColumns J := by
  obtain ⟨rows,cols,hrows,hcols,hcr,hcc⟩ := physical_canonical_permutations01 hH hd b r hball hr
  refine ⟨rows,cols,hrows,hcols,permute_physical hH rows cols,
    permute_dephased hd rows cols hrows hcols,permute_maximal hm rows cols hrows hcols,
    leadingR_permute H rows cols hrows hcols,?_,
    seedBall_permute b r hball rows cols hrows hcols,hcr,hcc⟩
  rwa [leadingR_permute H rows cols hrows hcols]

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.swapTail_fixesLeading
#print axioms Centiradian20261006.ChartRadius0120261006.fixesLeading_trans
#print axioms Centiradian20261006.ChartRadius0120261006.permuteMatrix_comp
#print axioms Centiradian20261006.ChartRadius0120261006.rowOrientation_swapTail
#print axioms Centiradian20261006.ChartRadius0120261006.physical_canonical_rows_permutation01
#print axioms Centiradian20261006.ChartRadius0120261006.canonicalRows_permute_rows
#print axioms Centiradian20261006.ChartRadius0120261006.physical_canonical_permutations01
#print axioms Centiradian20261006.ChartRadius0120261006.physical_canonical_full_domain01

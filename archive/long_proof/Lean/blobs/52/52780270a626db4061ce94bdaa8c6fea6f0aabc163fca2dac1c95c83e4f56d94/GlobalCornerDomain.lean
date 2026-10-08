import CanonicalCorners

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
noncomputable section

/-- Normalization only. No determinant threshold or reconstruction premise. -/
def NormalizedCarrier (H : CompactCover.Mat6) : Prop :=
  PhaseHadamard H ∧ (∀ j, H 0 j = 1) ∧ (∀ i, H i 0 = 1)

/-- The leading corner maximizes R over every ordered positional corner.
This predicate deliberately does not require good-side eligibility. -/
def GlobalMax (H : CompactCover.Mat6) : Prop :=
  NormalizedCarrier H ∧ ∀ p q : Perm, score (candidate H p q) ≤ score H

theorem candidate_normalized {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    (p q : Perm) : NormalizedCarrier (candidate H p q) :=
  ⟨normalizeCarrier_PhaseHadamard (submatrix_hadamard hH p q),
    normalizeCarrier_first_row (submatrix_hadamard hH p q),
    normalizeCarrier_first_column (submatrix_hadamard hH p q)⟩

/-- Finite maximization is on the full permutation domain, not the good subset. -/
theorem global_representative {H : CompactCover.Mat6} (hH : PhaseHadamard H) :
    ∃ p q : Perm, GlobalMax (candidate H p q) := by
  classical
  letI : Fintype (Perm × Perm) := Fintype.ofFinite _
  obtain ⟨pq, _, hm⟩ := (Finset.univ : Finset (Perm × Perm)).exists_max_image
    (fun pq => score (candidate H pq.1 pq.2)) (Finset.univ_nonempty)
  refine ⟨pq.1, pq.2, candidate_normalized hH pq.1 pq.2, ?_⟩
  intro r s
  calc
    score (candidate (candidate H pq.1 pq.2) r s) =
        score (candidate H (r.trans pq.1) (s.trans pq.2)) :=
      congrArg score (candidate_comp hH pq.1 pq.2 r s)
    _ ≤ score (candidate H pq.1 pq.2) :=
      hm (r.trans pq.1, s.trans pq.2) (Finset.mem_univ _)

/-- The existing monomial quartet transport accompanies the new selection. -/
theorem global_representative_occurs {H : CompactCover.Mat6} (hH : PhaseHadamard H)
    (ho : OccursAsQuartetEdge (normalizedNumerical H)) :
    ∃ p q : Perm, GlobalMax (candidate H p q) ∧
      OccursAsQuartetEdge (normalizedNumerical (candidate H p q)) := by
  obtain ⟨p,q,hm⟩ := global_representative hH
  exact ⟨p,q,hm,candidate_occurs hH ho p q⟩

/-- In particular every one of the twenty-by-twenty increasing positional
choices obeys the comparison required by the external all-400 domain. -/
theorem globalMax_positional400 {H : CompactCover.Mat6} (hH : GlobalMax H)
    (r c : Fin 20) :
    score (candidate H (columnPermutation r) (columnPermutation c)) ≤ score H :=
  hH.2 _ _

/-- Every physical carrier has a good corner with nonnegative R. Hence the
maximum on the larger domain is nonnegative even without assuming eligibility. -/
theorem globalMax_score_nonneg {H : CompactCover.Mat6} (hH : GlobalMax H) :
    0 ≤ score H := by
  obtain ⟨k,hk⟩ := phaseHadamard_normalized_good_side_cover hH.1.1
  exact le_trans (seed_radicand_nonneg hk)
    (hH.2 (Equiv.refl _) (sidePermutation k))

theorem globalMax_strict_or_zero {H : CompactCover.Mat6} (hH : GlobalMax H) :
    0 < score H ∨ score H = 0 := by
  rcases lt_or_eq_of_le (globalMax_score_nonneg hH) with h | h
  · exact Or.inl h
  · exact Or.inr h.symm

/-- Full maximality together with separately established eligibility implies
the worker predicate. This is a conditional interface, not an existence claim. -/
theorem globalMax_good {H : CompactCover.Mat6} (hH : GlobalMax H)
    (hg : NormalizedGoodSideCarrier H) : CanonicalGood H :=
  ⟨hg, fun p q _ => hH.2 p q⟩

/-- This real boundary is retained until its classification/exclusion is proved. -/
def GlobalZero (H : CompactCover.Mat6) : Prop := GlobalMax H ∧ score H = 0

def GlobalStrict (H : CompactCover.Mat6) : Prop := GlobalMax H ∧ 0 < score H

/-- A genuine quartet supplies a normalized globally maximal physical edge.
No Fourier/Tao exclusion, R>0 assumption, or good-side premise is hidden here. -/
theorem quartet_has_globalMax (B : Fin 4 → BasisMatrix) (hB : IsMUBQuartet B) :
    ∃ H : CompactCover.Mat6, GlobalMax H ∧
      OccursAsQuartetEdge (normalizedNumerical H) := by
  let H := phaseScale (Real.sqrt 6) (overlap (B 0) (B 1))
  have hH : PhaseHadamard H := by
    have hp := ClassificationCover.numerical_of_public
      (ClassificationCover.public_of_boundary_phase
        (actual_edge_sqrt_six_phaseHadamard hB 0 1 (by decide)))
    simpa only [ClassificationCover.roundtrip_numerical,H] using hp
  have ho : OccursAsQuartetEdge (normalizedNumerical H) := by
    unfold normalizedNumerical H
    rw [ClassificationCover.phaseScale_inverse_cancel (by positivity : Real.sqrt 6 ≠ 0)]
    exact ⟨B,hB,0,1,by decide,rfl⟩
  obtain ⟨p,q,hm,he⟩ := global_representative_occurs hH ho
  exact ⟨candidate H p q,hm,he⟩

/-- The exact two remaining global obligations, including the zero boundary. -/
theorem noFour_of_global_strict_and_zero
    (strict : ∀ H : CompactCover.Mat6, GlobalStrict H →
      ¬ OccursAsQuartetEdge (normalizedNumerical H))
    (zero : ∀ H : CompactCover.Mat6, GlobalZero H →
      ¬ OccursAsQuartetEdge (normalizedNumerical H)) : NoFourMUB6 := by
  rintro ⟨B,hB⟩
  obtain ⟨H,hm,ho⟩ := quartet_has_globalMax B hB
  rcases globalMax_strict_or_zero hm with hp | hz
  · exact strict H ⟨hm,hp⟩ ho
  · exact zero H ⟨hm,hz⟩ ho

/-- The same sixteen signed seed roots cover this separate full-max domain. -/
def GlobalLive (c : Cell) : Prop :=
  ∃ H, GlobalMax H ∧ c.Contains H ∧ OccursAsQuartetEdge (normalizedNumerical H)

theorem all_global_roots_closed_noFour
    (closed : ∀ s : SeedSigns, ¬ GlobalLive (root s)) : NoFourMUB6 := by
  rintro ⟨B,hB⟩
  obtain ⟨H,hm,ho⟩ := quartet_has_globalMax B hB
  obtain ⟨s,t,ht,he⟩ := seed_four_circle_cover hm.1.1
  apply closed s
  refine ⟨H,hm,⟨t,?_,he⟩,ho⟩
  intro i
  simpa only [root,IntervalKernel.Mem,Rat.cast_neg,Rat.cast_one] using ht i

end
end Mub6.Classification.GlobalCornerDomain

#print axioms Mub6.Classification.GlobalCornerDomain.candidate_normalized
#print axioms Mub6.Classification.GlobalCornerDomain.global_representative
#print axioms Mub6.Classification.GlobalCornerDomain.global_representative_occurs
#print axioms Mub6.Classification.GlobalCornerDomain.globalMax_positional400
#print axioms Mub6.Classification.GlobalCornerDomain.globalMax_score_nonneg
#print axioms Mub6.Classification.GlobalCornerDomain.globalMax_strict_or_zero
#print axioms Mub6.Classification.GlobalCornerDomain.globalMax_good
#print axioms Mub6.Classification.GlobalCornerDomain.quartet_has_globalMax
#print axioms Mub6.Classification.GlobalCornerDomain.noFour_of_global_strict_and_zero
#print axioms Mub6.Classification.GlobalCornerDomain.all_global_roots_closed_noFour

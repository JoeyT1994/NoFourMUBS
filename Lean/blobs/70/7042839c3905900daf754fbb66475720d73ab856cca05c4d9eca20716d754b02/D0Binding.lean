import Worker12.R0Fixed

/-! # Literal fixed-D0 binding — UNVERIFIED DRAFT

The phase matrix below is Brierley--Weigert, arXiv:0901.4051v2,
Appendix A.1, equation (30).  The paper's physical matrix includes the common
factor `1 / sqrt 6`.  Its quartet nonextension is deliberately an explicit
open proposition.
-/

namespace Worker12
set_option maxHeartbeats 4000000

/-- Literal phase representative of equation (30). -/
def publishedD0Phase : Mub6.BasisMatrix :=
  !![1, 1, 1, 1, 1, 1;
     1, -1, Complex.I, -Complex.I, -Complex.I, Complex.I;
     1, Complex.I, -1, Complex.I, -Complex.I, -Complex.I;
     1, -Complex.I, Complex.I, -1, Complex.I, -Complex.I;
     1, -Complex.I, -Complex.I, Complex.I, -1, Complex.I;
     1, Complex.I, -Complex.I, -Complex.I, Complex.I, -1]

/-- UNVERIFIED DRAFT: the local fixed D0 target is literally equation (30),
including its row/column order. -/
theorem d0Phase_eq_published : d0Phase = publishedD0Phase := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [d0Phase, hTimes, d0ColumnOrder, publishedD0Phase,
      Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, Complex.ext_iff]

/-- UNVERIFIED DRAFT: explicit `hTimes` binding to equation (30). -/
theorem hTimes_monomial_publishedD0 :
    Mub6.MonomialEquivalent hTimes publishedD0Phase := by
  rw [← d0Phase_eq_published]
  exact hTimes_monomial_d0

/-- UNVERIFIED DRAFT: exact physical normalization of the preceding witness. -/
theorem physical_hTimes_monomial_publishedD0 :
    Mub6.MonomialEquivalent
      (physicalNormalize hTimes)
      (physicalNormalize publishedD0Phase) :=
  physicalNormalize_monomialEquivalent hTimes_monomial_publishedD0

/-- UNVERIFIED DRAFT: canonical R0 completion to the literal published D0
matrix. -/
theorem r0CompletedPhase_monomial_publishedD0 :
    Mub6.MonomialEquivalent r0CompletedPhase publishedD0Phase := by
  rw [← d0Phase_eq_published]
  exact r0CompletedPhase_monomial_d0

/-- UNVERIFIED DRAFT: every completion of the fixed R0 partial basis maps to
the literal equation-(30) representative. -/
theorem completedR0Phase_monomial_publishedD0
    {B : PartialPhaseBasis} (hB : IsPhaseCompletion r0.transpose B) :
    Mub6.MonomialEquivalent (completedR0Phase B) publishedD0Phase := by
  rw [← d0Phase_eq_published]
  exact completedR0Phase_monomial_d0 hB

/-- UNVERIFIED DRAFT: fully normalized version for every fixed-R0
completion. -/
theorem physical_completedR0Phase_monomial_publishedD0
    {B : PartialPhaseBasis} (hB : IsPhaseCompletion r0.transpose B) :
    Mub6.MonomialEquivalent
      (physicalNormalize (completedR0Phase B))
      (physicalNormalize publishedD0Phase) :=
  physicalNormalize_monomialEquivalent
    (completedR0Phase_monomial_publishedD0 hB)

/-- UNVERIFIED DRAFT: canonical conjugated fixed-R0 completion to the
literal equation-(30) representative. -/
theorem conjugateR0CompletedPhase_monomial_publishedD0 :
    Mub6.MonomialEquivalent conjugateR0CompletedPhase publishedD0Phase := by
  rw [← d0Phase_eq_published]
  exact conjugateR0CompletedPhase_monomial_d0

/-- UNVERIFIED DRAFT: every completion in the conjugated fixed-R0 branch maps
to the literal equation-(30) representative. -/
theorem completedConjugateR0Phase_monomial_publishedD0
    {B : PartialPhaseBasis}
    (hB : IsPhaseCompletion (conjugatePartialPhaseBasis r0.transpose) B) :
    Mub6.MonomialEquivalent (completedConjugateR0Phase B)
      publishedD0Phase := by
  rw [← d0Phase_eq_published]
  exact completedConjugateR0Phase_monomial_d0 hB

/-- UNVERIFIED DRAFT: normalized conjugated fixed-R0 binding. -/
theorem physical_completedConjugateR0Phase_monomial_publishedD0
    {B : PartialPhaseBasis}
    (hB : IsPhaseCompletion (conjugatePartialPhaseBasis r0.transpose) B) :
    Mub6.MonomialEquivalent
      (physicalNormalize (completedConjugateR0Phase B))
      (physicalNormalize publishedD0Phase) :=
  physicalNormalize_monomialEquivalent
    (completedConjugateR0Phase_monomial_publishedD0 hB)

/-- Separate open input for literal equation-(30) nonextension. -/
def PublishedD0StandardPairExclusion : Prop :=
  ¬ Mub6.ExtendsStandardPair (physicalNormalize publishedD0Phase)

/-- UNVERIFIED DRAFT: literal equation-(30) nonextension implies the local
fixed-D0 exclusion target. -/
theorem d0QuartetExclusion_of_published
    (hpublished : PublishedD0StandardPairExclusion) :
    D0QuartetExclusion := by
  have hpaper := quartetExclusion_of_standardPair hpublished
  simpa only [d0Phase_eq_published] using hpaper

/-- UNVERIFIED DRAFT: the same open equation-(30) input excludes every full
matrix obtained by completing the fixed R0 partial basis. -/
theorem completedR0Phase_quartetExclusion_of_published
    (hpublished : PublishedD0StandardPairExclusion)
    {B : PartialPhaseBasis} (hB : IsPhaseCompletion r0.transpose B) :
    ¬ Mub6.OccursAsQuartetEdge
      (physicalNormalize (completedR0Phase B)) := by
  have hpaper := quartetExclusion_of_standardPair hpublished
  exact Mub6.quartet_exclusion_of_monomialEquivalent
    (physical_completedR0Phase_monomial_publishedD0 hB) hpaper

/-- UNVERIFIED DRAFT: the same equation-(30) input also excludes every
completion in the conjugated fixed-R0 branch. -/
theorem completedConjugateR0Phase_quartetExclusion_of_published
    (hpublished : PublishedD0StandardPairExclusion)
    {B : PartialPhaseBasis}
    (hB : IsPhaseCompletion (conjugatePartialPhaseBasis r0.transpose) B) :
    ¬ Mub6.OccursAsQuartetEdge
      (physicalNormalize (completedConjugateR0Phase B)) := by
  have hpaper := quartetExclusion_of_standardPair hpublished
  exact Mub6.quartet_exclusion_of_monomialEquivalent
    (physical_completedConjugateR0Phase_monomial_publishedD0 hB) hpaper

#print axioms d0Phase_eq_published
#print axioms physical_hTimes_monomial_publishedD0
#print axioms r0CompletedPhase_monomial_publishedD0
#print axioms physical_completedR0Phase_monomial_publishedD0
#print axioms physical_completedConjugateR0Phase_monomial_publishedD0
#print axioms d0QuartetExclusion_of_published
#print axioms completedR0Phase_quartetExclusion_of_published
#print axioms completedConjugateR0Phase_quartetExclusion_of_published

end Worker12

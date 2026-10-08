import Worker12.RepresentativeCore

/-! # Literal Tao/spectral representative binding — UNVERIFIED DRAFT

The matrix below is the phase matrix displayed in Brierley--Weigert,
arXiv:0901.4051v2, Appendix A.1, equation (33).  The physical basis matrix
has the common factor `1 / sqrt 6`.  Its nonextension remains an explicit
open proposition.
-/

namespace Worker12
set_option maxHeartbeats 4000000

/-- Literal phase matrix of equation (33), often called the Tao or spectral
matrix. -/
def publishedTaoPhase (ω : ℂ) : Mub6.BasisMatrix :=
  !![1, 1, 1, 1, 1, 1;
     1, 1, ω, ω, ω ^ 2, ω ^ 2;
     1, ω, 1, ω ^ 2, ω ^ 2, ω;
     1, ω, ω ^ 2, 1, ω, ω ^ 2;
     1, ω ^ 2, ω ^ 2, ω, 1, ω;
     1, ω ^ 2, ω, ω ^ 2, ω, 1]

/-- UNVERIFIED DRAFT: the local four-block Tao matrix expands literally to
equation (33), with no row/column phase or permutation. -/
theorem taoPhase_eq_published (ω : ℂ) :
    taoPhase ω = publishedTaoPhase ω := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    rfl

/-- UNVERIFIED DRAFT: equation (33) is symmetric. -/
theorem publishedTaoPhase_transpose (ω : ℂ) :
    Mub6.transposeEdge (publishedTaoPhase ω) = publishedTaoPhase ω := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    rfl

/-- UNVERIFIED DRAFT: physical normalization of the literal equality. -/
theorem physical_taoPhase_eq_published (ω : ℂ) :
    physicalNormalize (taoPhase ω) =
      physicalNormalize (publishedTaoPhase ω) := by
  rw [taoPhase_eq_published]

/-- UNVERIFIED DRAFT: equation (33) is closed under conjugating the primitive
root, retaining the second root branch. -/
theorem publishedTaoPhase_conjugate (ω : ℂ) :
    Mub6.conjugateBasis (publishedTaoPhase ω) =
      publishedTaoPhase (star ω) := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    simp [Mub6.conjugateBasis, publishedTaoPhase, map_pow]

/-- UNVERIFIED DRAFT: conjugation identity after the exact outer
`1 / sqrt 6` factor. -/
theorem physical_publishedTao_conjugate (ω : ℂ) :
    Mub6.conjugateBasis (physicalNormalize (publishedTaoPhase ω)) =
      physicalNormalize (publishedTaoPhase (star ω)) := by
  rw [physicalNormalize_conjugate, publishedTaoPhase_conjugate]

/-- Open nonextension input for one selected primitive root. -/
def PublishedTaoRootStandardPairExclusion (ω : ℂ) : Prop :=
  ¬ Mub6.ExtendsStandardPair (physicalNormalize (publishedTaoPhase ω))

/-- Open nonextension input over both primitive roots. -/
def PublishedTaoStandardPairExclusion : Prop :=
  ∀ ω : ℂ, PrimitiveCubicPhase ω →
    PublishedTaoRootStandardPairExclusion ω

/-- UNVERIFIED DRAFT: a fixed-root Tao exclusion transports to the conjugate
root through the actual quartet and standard-pair interfaces. -/
theorem publishedTaoRootStandardPairExclusion_star {ω : ℂ}
    (hω : PublishedTaoRootStandardPairExclusion ω) :
    PublishedTaoRootStandardPairExclusion (star ω) := by
  intro hext
  have hocc : Mub6.OccursAsQuartetEdge
      (physicalNormalize (publishedTaoPhase (star ω))) :=
    (Mub6.occursAsQuartetEdge_iff_extendsStandardPair _).2 hext
  have hconj := Mub6.occursAsQuartetEdge_conjugate hocc
  have hmatrix :
      Mub6.conjugateBasis
        (physicalNormalize (publishedTaoPhase (star ω))) =
      physicalNormalize (publishedTaoPhase ω) := by
    simpa using physical_publishedTao_conjugate (star ω)
  rw [hmatrix] at hconj
  exact hω ((Mub6.occursAsQuartetEdge_iff_extendsStandardPair _).1 hconj)

/-- UNVERIFIED DRAFT: one fixed primitive root plus conjugation covers both
Tao root branches. -/
theorem publishedTaoStandardPairExclusion_of_fixedRoot {ζ : ℂ}
    (hζ : PrimitiveCubicPhase ζ)
    (hex : PublishedTaoRootStandardPairExclusion ζ) :
    PublishedTaoStandardPairExclusion := by
  intro ω hω
  rcases primitiveCubicPhase_eq_or_star hω hζ with heq | heq
  · simpa [heq] using hex
  · simpa [heq] using publishedTaoRootStandardPairExclusion_star hex

/-- UNVERIFIED DRAFT: literal equation-(33) nonextension implies the local
physical Tao exclusion. -/
theorem taoQuartetExclusion_of_published
    (hpublished : PublishedTaoStandardPairExclusion) :
    TaoQuartetExclusion := by
  intro ω hω
  have hpaper := quartetExclusion_of_standardPair (hpublished ω hω)
  simpa only [taoPhase_eq_published] using hpaper

/-- UNVERIFIED DRAFT: the transpose branch is identical, not a hidden extra
case. -/
theorem physical_publishedTao_transpose (ω : ℂ) :
    physicalNormalize (Mub6.transposeEdge (publishedTaoPhase ω)) =
      physicalNormalize (publishedTaoPhase ω) := by
  rw [publishedTaoPhase_transpose]

#print axioms taoPhase_eq_published
#print axioms publishedTaoPhase_conjugate
#print axioms publishedTaoStandardPairExclusion_of_fixedRoot
#print axioms taoQuartetExclusion_of_published

end Worker12

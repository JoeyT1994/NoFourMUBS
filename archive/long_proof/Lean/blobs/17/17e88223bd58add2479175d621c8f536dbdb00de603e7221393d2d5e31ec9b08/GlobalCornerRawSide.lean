import GlobalCornerSixSinePhysical

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace GlobalCornerSixSine
noncomputable section

theorem skew_unit_mul (k u v : ℂ) (hk : Complex.normSq k = 1) :
    skew (k*u) (k*v) = skew u v := by
  unfold skew
  simp only [star_mul]
  calc
    _ = (k*star k)*(u*star v-star u*v) := by ring
    _ = _ := by rw [Mub6.Classification.CompactCover.unit_mul_star hk]; ring

theorem sixSkew_row_mul (a b c d e f u v : ℂ)
    (hu : Complex.normSq u = 1) (hv : Complex.normSq v = 1) :
    sixSkew (u*a) (u*b) (u*c) (v*d) (v*e) (v*f) = sixSkew a b c d e f := by
  have hz : Complex.normSq (v * star u) = 1 := by
    simp only [Complex.normSq_mul,Complex.star_def,Complex.normSq_conj,hu,hv,one_mul]
  have hmul (a d : ℂ) : (v*d)*star (u*a) = (v*star u)*(d*star a) := by
    simp only [star_mul]
    ring
  simp only [sixSkew,hmul,skew_unit_mul u _ _ hu,skew_unit_mul v _ _ hv,
    skew_unit_mul (v*star u) _ _ hz]

end
#print axioms skew_unit_mul
#print axioms sixSkew_row_mul
end GlobalCornerSixSine

namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
noncomputable section

theorem physicalSideScore_sixSkew {A : CompactCover.Mat3}
    (hx : ∀ j, IsPhase (A 1 j)) (hy : ∀ j, IsPhase (A 2 j)) :
    physicalSideScore A = (-(GlobalCornerSixSine.sixSkew
      (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2))^2).re := by
  have hc := congrArg Complex.re (gram_radicand_complex (sideS A) (sideT A) (sideR A))
  simp only [Complex.ofReal_re] at hc
  change physicalSideScore A = _ at hc
  rw [hc]
  have hs := congrArg Complex.re (GlobalCornerSixSine.physical_radicand_sixSkew
    (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2))
  exact hs

/-- Independent unit multipliers on the two nonconstant rows do not alter
this complementary score. The proof does not introduce phase-angle choices. -/
theorem physicalSideScore_row_mul {A B : CompactCover.Mat3} (u v : ℂ)
    (hu : IsPhase u) (hv : IsPhase v)
    (hA1 : ∀ j, IsPhase (A 1 j)) (hA2 : ∀ j, IsPhase (A 2 j))
    (hB1 : ∀ j, B 1 j = u * A 1 j) (hB2 : ∀ j, B 2 j = v * A 2 j) :
    physicalSideScore B = physicalSideScore A := by
  have hBu : ∀ j, IsPhase (B 1 j) := by
    intro j
    rw [hB1 j]
    change Complex.normSq (u * A 1 j) = 1
    rw [Complex.normSq_mul,show Complex.normSq u = 1 from hu,
      show Complex.normSq (A 1 j) = 1 from hA1 j,one_mul]
  have hBv : ∀ j, IsPhase (B 2 j) := by
    intro j
    rw [hB2 j]
    change Complex.normSq (v * A 2 j) = 1
    rw [Complex.normSq_mul,show Complex.normSq v = 1 from hv,
      show Complex.normSq (A 2 j) = 1 from hA2 j,one_mul]
  rw [physicalSideScore_sixSkew hBu hBv,physicalSideScore_sixSkew hA1 hA2,
    hB1 0,hB1 1,hB1 2,hB2 0,hB2 1,hB2 2,GlobalCornerSixSine.sixSkew_row_mul _ _ _ _ _ _ u v hu hv]

theorem candidate_transpose (H : Mat6) (p q : Perm) :
    candidate Hᵀ p q = (candidate H q p)ᵀ := by
  ext i j
  change (H (q 0) (p 0) * star (H (q 0) (p i))) * H (q j) (p i) * star (H (q j) (p 0)) =
    (H (q 0) (p 0) * star (H (q j) (p 0))) * H (q j) (p i) * star (H (q 0) (p i))
  ring

theorem globalMax_transpose {H : Mat6} (hH : GlobalMax H) : GlobalMax Hᵀ := by
  refine ⟨normalized_transpose hH.1,?_⟩
  intro p q
  rw [candidate_transpose]
  have hc := oriented_score true (candidate_normalized hH.1.1 q p).1
  have hh := oriented_score true hH.1.1
  change score (candidate H q p)ᵀ = score (candidate H q p) at hc
  change score Hᵀ = score H at hh
  rw [hc,hh]
  exact hH.2 q p

theorem globalMax_oriented (vertical : Bool) {H : Mat6} (hH : GlobalMax H) :
    GlobalMax (oriented vertical H) := by
  cases vertical
  · exact hH
  · exact globalMax_transpose hH

/-- Raw known side entries can be used directly when the selected top row is
the normalized row zero. Row normalization changes only unit row multipliers. -/
theorem globalMax_raw_candidate_sideScore {H : Mat6} (hH : GlobalMax H)
    (p q : Perm) (hp : p 0 = 0) :
    physicalSideScore (northeast (H.submatrix p q)) ≤ score H := by
  let u := star (H (p 1) (q 0))
  let v := star (H (p 2) (q 0))
  have hu : IsPhase u := by
    simp only [u,IsPhase,Complex.star_def,Complex.normSq_conj,hH.1.1.1]
  have hv : IsPhase v := by
    simp only [v,IsPhase,Complex.star_def,Complex.normSq_conj,hH.1.1.1]
  have hx : ∀ j, northeast (candidate H p q) 1 j = u * northeast (H.submatrix p q) 1 j := by
    intro j
    change (H (p 0) (q 0) * star (H (p 1) (q 0))) * H (p 1) (q (back j)) *
      star (H (p 0) (q (back j))) = u * H (p 1) (q (back j))
    simp [u,hp,hH.1.2.1]
  have hy : ∀ j, northeast (candidate H p q) 2 j = v * northeast (H.submatrix p q) 2 j := by
    intro j
    change (H (p 0) (q 0) * star (H (p 2) (q 0))) * H (p 2) (q (back j)) *
      star (H (p 0) (q (back j))) = v * H (p 2) (q (back j))
    simp [v,hp,hH.1.2.1]
  have he := physicalSideScore_row_mul
    (A := northeast (H.submatrix p q)) (B := northeast (candidate H p q)) u v hu hv
    (fun j => hH.1.1.1 (p (front 1)) (q (back j)))
    (fun j => hH.1.1.1 (p (front 2)) (q (back j))) hx hy
  rw [← he]
  exact globalMax_complementary_sideScore hH false p q

/-- This is the direct root0 convention: first three rows of H or Hᵀ,
with any three known columns placed into the complementary side. -/
theorem globalMax_raw_oriented_sixSine_exp {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (q : Perm) (x y : Fin 3 → ℝ)
    (hx : ∀ j, (oriented vertical H) 1 (q (back j)) =
      Complex.exp ((x j : ℂ) * Complex.I))
    (hy : ∀ j, (oriented vertical H) 2 (q (back j)) =
      Complex.exp ((y j : ℂ) * Complex.I)) :
    64 * (GlobalCornerSixSine.sixSine x y)^2 ≤ score H := by
  have hb := globalMax_raw_candidate_sideScore (globalMax_oriented vertical hH)
    (Equiv.refl _) q rfl
  have hA1 : ∀ j, northeast ((oriented vertical H).submatrix (Equiv.refl _) q) 1 j =
      GlobalCornerSixSine.phase (x j) := by
    intro j
    rw [GlobalCornerSixSine.phase_exp]
    exact hx j
  have hA2 : ∀ j, northeast ((oriented vertical H).submatrix (Equiv.refl _) q) 2 j =
      GlobalCornerSixSine.phase (y j) := by
    intro j
    rw [GlobalCornerSixSine.phase_exp]
    exact hy j
  rw [physicalSideScore_sixSine x y hA1 hA2,oriented_score vertical hH.1.1] at hb
  exact hb

/-- The side score is the raw complex-radicand real part on its six entries. -/
theorem physicalSideScore_complexRadicand (A : CompactCover.Mat3) :
    physicalSideScore A =
      (ShoulderPhaseGate20261002.radicand (A 1 0+A 1 1+A 1 2) (A 2 0+A 2 1+A 2 2)
        (ShoulderPhaseGate20261002.overlap (A 1 0) (A 1 1) (A 1 2)
          (A 2 0) (A 2 1) (A 2 2))).re := by
  have h := congrArg Complex.re (gram_radicand_complex (sideS A) (sideT A) (sideR A))
  simp only [Complex.ofReal_re] at h
  exact h

/-- Direct complex-phase endpoint for the root0 cover. Its known side may be
selected from H or Hᵀ without normalizing an unknown complementary pivot. -/
theorem globalMax_raw_oriented_radicand {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (q : Perm) (x y : Fin 3 → ℂ)
    (hx : ∀ j, (oriented vertical H) 1 (q (back j)) = x j)
    (hy : ∀ j, (oriented vertical H) 2 (q (back j)) = y j) :
    (ShoulderPhaseGate20261002.radicand (x 0+x 1+x 2) (y 0+y 1+y 2)
      (ShoulderPhaseGate20261002.overlap (x 0) (x 1) (x 2) (y 0) (y 1) (y 2))).re ≤ score H := by
  have hb := globalMax_raw_candidate_sideScore (globalMax_oriented vertical hH)
    (Equiv.refl _) q rfl
  have hA1 : ∀ j, northeast ((oriented vertical H).submatrix (Equiv.refl _) q) 1 j = x j := hx
  have hA2 : ∀ j, northeast ((oriented vertical H).submatrix (Equiv.refl _) q) 2 j = y j := hy
  rw [physicalSideScore_complexRadicand,hA1 0,hA1 1,hA1 2,hA2 0,hA2 1,hA2 2,
    oriented_score vertical hH.1.1] at hb
  exact hb

end
#print axioms physicalSideScore_complexRadicand
#print axioms globalMax_raw_oriented_radicand
#print axioms physicalSideScore_sixSkew
#print axioms physicalSideScore_row_mul
#print axioms candidate_transpose
#print axioms globalMax_transpose
#print axioms globalMax_oriented
#print axioms globalMax_raw_candidate_sideScore
#print axioms globalMax_raw_oriented_sixSine_exp
end Mub6.Classification.GlobalCornerDomain

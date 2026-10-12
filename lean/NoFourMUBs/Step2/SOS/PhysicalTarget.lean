import NoFourMUBs.Step2.SOS.DefectMoments

/-! The single nonnegative physical expression, before the existing
normalization and integer-certificate projection are applied. -/

noncomputable section
open scoped BigOperators
open Hadamard6 OAI.MUB6
namespace NoFourMUBs.Step2.SOS

theorem signature_norm_expand {H : CMatrix} (hH : IsHadamard H)
    (b : Bool) (s : (Coord ↪ Coord) × (Coord ↪ Coord)) :
    Complex.normSq (sideSignature (sampledBlock H s.1 s.2 b)) =
      ∑ k : Fin 55, ∑ l : Fin 55, (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ) *
        (exponentMonomial H
          (blockExponent (psiExponent k) b - blockExponent (psiExponent l) b)
          s.1 s.2).re := by
  rw [sampledSignature_laurentSum hH, Complex.normSq_neg]
  have h := laurentSum_mul_real hH (fun k => blockExponent (psiExponent k) b)
    (fun k => -blockExponent (psiExponent k) b) s
  rw [laurentSum_conj hH] at h
  simpa only [Complex.mul_conj, Complex.ofReal_re, sub_eq_add_neg] using h

theorem signatureDefect_oriented {H : CMatrix} (hH : IsHadamard H) :
    average (signatureDefect H) =
      ∑ k : Fin 55, ∑ l : Fin 55,
        (2 * (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ)) *
          (average (fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
            (exponentMonomial H
              (blockExponent (psiExponent k) false - blockExponent (psiExponent l) false)
              s.1 s.2).re) -
           average (fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
            (exponentMonomial H
              (blockExponent (psiExponent k) false + blockExponent (psiExponent l) true)
              s.1 s.2).re)) := by
  rw [signatureDefect_average_reduce]
  simp_rw [signature_norm_expand hH, sampledSignature_laurentSum hH,
    neg_mul_neg, laurentSum_mul_real hH, average_sum, average_mul]
  simp only [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro l _
  ring

theorem signatureDefect_moments {H : CMatrix} (hH : IsHadamard H) :
    average (signatureDefect H) =
      ∑ k : Fin 55, ∑ l : Fin 55,
        (2 * (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ)) *
          (injectiveMoment H
            (blockExponent (psiExponent k) false - blockExponent (psiExponent l) false) -
           injectiveMoment H
            (blockExponent (psiExponent k) false + blockExponent (psiExponent l) true)) := by
  have hh := signatureDefect_oriented hH
  have ht := signatureDefect_oriented hH.transpose
  calc
    _ = (average (signatureDefect H) + average (signatureDefect H.transpose)) / 2 := by
      rw [signatureDefect_average_transpose]
      ring
    _ = _ := by
      rw [hh, ht, ← Finset.sum_add_distrib, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro k _
      rw [← Finset.sum_add_distrib, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro l _
      rw [injectiveMoment_average, injectiveMoment_average]
      ring

theorem physical_defect_moments (H : Had6) :
    frameWeight * (∑ f : Frame,
      Complex.normSq (frameRight H f - star (frameLower H f))) =
      ∑ k : Fin 55, ∑ l : Fin 55,
        (2 * (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ)) *
          (injectiveMoment (FourierBridge.toOAI H.1)
            (blockExponent (psiExponent k) false - blockExponent (psiExponent l) false) -
           injectiveMoment (FourierBridge.toOAI H.1)
            (blockExponent (psiExponent k) false + blockExponent (psiExponent l) true)) := by
  rw [physical_defect_average]
  exact signatureDefect_moments (FourierBridge.hadamard_toOAI H.2)

def physicalTargetMoment (H : CMatrix) : ℝ :=
  (∑ k : Fin 55, ∑ l : Fin 55,
    (2 * (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ)) *
      (injectiveMoment H
        (blockExponent (psiExponent k) false - blockExponent (psiExponent l) false) -
       injectiveMoment H
        (blockExponent (psiExponent k) false + blockExponent (psiExponent l) true))) +
  450 * (∑ p : Fin 34, ∑ q : Fin 34,
    CornerPairs.weight p * CornerPairs.weight q *
      (injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent p q) +
       injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) p q))) -
  180 * injectiveMoment H cubicExponent + 9

theorem physical_target (H : Had6) :
    frameWeight * (∑ f : Frame,
      Complex.normSq (frameRight H f - star (frameLower H f))) +
      (30 * (cubicMoment H).re - 3) ^ 2 =
      physicalTargetMoment (FourierBridge.toOAI H.1) := by
  rw [physical_defect_moments, physicalTargetMoment, cubicMoment_small H]
  nlinarith [cubicMoment_square H]

end NoFourMUBs.Step2.SOS

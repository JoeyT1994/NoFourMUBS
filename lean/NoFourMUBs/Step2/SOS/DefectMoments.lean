import NoFourMUBs.Step2.SOS.DefectFrames

/-! Expand the already selected 55-term signature polynomial. Conjugation,
multiplication and the half-swap use the existing moment and sampling lemmas. -/

noncomputable section
open scoped BigOperators ComplexConjugate
open Hadamard6 OAI.MUB6
namespace NoFourMUBs.Step2.SOS

def laurentSum (H : CMatrix) (E : Fin 55 → Matrix Coord Coord ℤ)
    (s : (Coord ↪ Coord) × (Coord ↪ Coord)) : ℂ :=
  ∑ k : Fin 55, (psiCoefficient k : ℂ) * exponentMonomial H (E k) s.1 s.2

theorem laurentSum_conj {H : CMatrix} (hH : IsHadamard H)
    (E : Fin 55 → Matrix Coord Coord ℤ) (s : (Coord ↪ Coord) × (Coord ↪ Coord)) :
    laurentSum H (fun k => -E k) s = conj (laurentSum H E s) := by
  simp only [laurentSum, exponentMonomial_neg H hH.1, map_sum, map_mul,
    map_intCast]

theorem laurentSum_mul_real {H : CMatrix} (hH : IsHadamard H)
    (E F : Fin 55 → Matrix Coord Coord ℤ) (s : (Coord ↪ Coord) × (Coord ↪ Coord)) :
    (laurentSum H E s * laurentSum H F s).re =
      ∑ k : Fin 55, ∑ l : Fin 55, (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ) *
        (exponentMonomial H (E k + F l) s.1 s.2).re := by
  unfold laurentSum
  rw [Finset.sum_mul]
  simp_rw [Finset.mul_sum]
  simp only [Complex.re_sum, exponentMonomial_add_six hH.1]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro l _
  simp only [Complex.mul_re, Complex.mul_im, Complex.intCast_re,
    Complex.intCast_im]
  ring

theorem sampledSignature_laurentSum {H : CMatrix} (hH : IsHadamard H)
    (b : Bool) (s : (Coord ↪ Coord) × (Coord ↪ Coord)) :
    sideSignature (sampledBlock H s.1 s.2 b) =
      -laurentSum H (fun k => blockExponent (psiExponent k) b) s := by
  rw [sideSignature_laurent (sampledBlock H s.1 s.2 b) (fun i j => hH.1 _ _)]
  simp only [laurentSum, exponentMonomial_block]

theorem signature_norm_average_halves (H : CMatrix) :
    average (fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
      Complex.normSq (sideSignature (sampledBlock H s.1 s.2 true))) =
    average (fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
      Complex.normSq (sideSignature (sampledBlock H s.1 s.2 false))) := by
  let e := Equiv.prodCongr
    (Equiv.embeddingCongr halfSwap (Equiv.refl Coord))
    (Equiv.embeddingCongr halfSwap (Equiv.refl Coord))
  let f := fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
    Complex.normSq (sideSignature (sampledBlock H s.1 s.2 false))
  have he (s : (Coord ↪ Coord) × (Coord ↪ Coord)) :
      sampledBlock H (e s).1 (e s).2 false = sampledBlock H s.1 s.2 true := by
    ext i j
    simp [e, halfSwap, sampledBlock, firstHalf, secondHalf]
  calc
    _ = average (f ∘ e) := by
      apply average_congr
      intro s
      simp only [Function.comp_apply, f, he]
    _ = _ := average_equiv e f

theorem signatureDefect_average_reduce (H : CMatrix) :
    average (signatureDefect H) =
      2 * average (fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
        Complex.normSq (sideSignature (sampledBlock H s.1 s.2 false))) +
      (-2) * average (fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
        (sideSignature (sampledBlock H s.1 s.2 false) *
          sideSignature (sampledBlock H s.1 s.2 true)).re) := by
  have he (s : (Coord ↪ Coord) × (Coord ↪ Coord)) : signatureDefect H s =
      Complex.normSq (sideSignature (sampledBlock H s.1 s.2 false)) +
      Complex.normSq (sideSignature (sampledBlock H s.1 s.2 true)) +
      (-2) * (sideSignature (sampledBlock H s.1 s.2 false) *
        sideSignature (sampledBlock H s.1 s.2 true)).re := by
    simp only [signatureDefect, Complex.star_def, Complex.normSq_sub,
      Complex.normSq_conj, starRingEnd_self_apply]
    ring
  rw [average_congr he]
  simp only [average_add, average_mul]
  rw [signature_norm_average_halves]
  ring

end NoFourMUBs.Step2.SOS

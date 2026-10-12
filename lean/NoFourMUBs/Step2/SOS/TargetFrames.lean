import NoFourMUBs.Step2.SOS.MomentRealAverage
import NoFourMUBs.Step2.SOS.CornerPairSquares
import NoFourMUBs.Step2.SOS.Padding
import NoFourMUBs.Step2.SOS.ComplementaryMoments
import NoFourMUBs.Step2.RepairedCoverage

/-! Bind the existing cubic moment to the same physical frame average used
by the coverage theorem. Sampling and transpose transport use the OAI and
Mathlib equivalences already selected by the proof. -/

noncomputable section
open scoped BigOperators ComplexConjugate
open Hadamard6 OAI.MUB6
namespace NoFourMUBs.Step2.SOS

def halfSwap : Equiv.Perm Coord :=
  FourierBridge.coordinates.symm.trans
    ((Equiv.sumComm (Fin 3) (Fin 3)).trans FourierBridge.coordinates)

theorem blockExponent_moment (H : CMatrix) (A : Matrix (Fin 3) (Fin 3) ℤ)
    (b : Bool) : injectiveMoment H (blockExponent A b) = injectiveMoment H A := by
  have ht : blockExponent A true =
      Normalization.pad6 ⟨3, 3, A⟩ (by change 3 ≤ 6; decide) (by change 3 ≤ 6; decide) := by
    ext i j
    fin_cases i <;> fin_cases j <;> rfl
  have hm : injectiveMoment H (blockExponent A true) = injectiveMoment H A := by
    rw [ht]
    exact Normalization.pad6_moment ⟨3, 3, A⟩ (by change 3 ≤ 6; decide) (by change 3 ≤ 6; decide) H
  cases b
  · have hs : (fun i j => blockExponent A true (halfSwap i) (halfSwap j)) =
        blockExponent A false := by
      ext i j
      fin_cases i <;> fin_cases j <;> rfl
    rw [← hs, ← OAI.MUB6.Certificate.moment_permute H (blockExponent A true)]
    exact hm
  · exact hm

theorem cubicMonomial_eq (B : Mat3) (hB : ∀ i j, Complex.normSq (B i j) = 1) :
    cubicMonomial B = ∏ i, ∏ j, B i j ^ cubicExponent i j := by
  unfold cubicMonomial
  apply Finset.prod_congr rfl
  intro i _
  apply Finset.prod_congr rfl
  intro j _
  by_cases h : i = j
  · subst j
    simp only [cubicExponent, ↓reduceIte]
    rw [zpow_neg, zpow_ofNat, ← inv_pow, unit_inv_eq_conj (hB i i), Complex.star_def]
  · simp [cubicExponent, h]


def sampledFrame : ((Coord ↪ Coord) × (Coord ↪ Coord)) ≃ Frame :=
  Equiv.prodCongr
    ((Equiv.embeddingEquivOfFinite Coord).trans FourierBridge.coordinates.symm.permCongr)
    ((Equiv.embeddingEquivOfFinite Coord).trans FourierBridge.coordinates.symm.permCongr)

theorem cubicMoment_real (H : Had6) :
    injectiveMoment (FourierBridge.toOAI H.1) (blockExponent cubicExponent false) =
      (cubicMoment H).re := by
  have hc : cubicExponent.transpose = cubicExponent := by
    ext i j
    simp [cubicExponent, eq_comm]
  have hb : (blockExponent cubicExponent false).transpose =
      blockExponent cubicExponent false := by
    simp only [blockExponent, Bool.false_eq_true, ↓reduceIte,
      Matrix.transpose_submatrix, Matrix.fromBlocks_transpose,
      Matrix.transpose_zero, hc]
  rw [injectiveMoment_of_symmetric _ _ hb]
  calc
    _ = average ((fun f : Frame =>
        (cubicMonomial (leadingBlock (permuted H f).1)).re) ∘ sampledFrame) := by
      apply average_congr
      intro s
      rw [exponentMonomial_block]
      exact congrArg Complex.re
        (cubicMonomial_eq (leadingBlock (permuted H (sampledFrame s)).1)
          (fun i j => H.2.1 _ _)).symm
    _ = average (fun f : Frame =>
        (cubicMonomial (leadingBlock (permuted H f).1)).re) :=
      average_equiv sampledFrame _
    _ = _ := by
      simp only [average, cubicMoment, frameWeight, Complex.mul_re,
        Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, Complex.re_sum]

theorem cubicMoment_small (H : Had6) :
    injectiveMoment (FourierBridge.toOAI H.1) cubicExponent = (cubicMoment H).re := by
  rw [← blockExponent_moment (FourierBridge.toOAI H.1) cubicExponent false]
  exact cubicMoment_real H

theorem cubicMoment_square (H : Had6) :
    (cubicMoment H).re ^ 2 =
      (∑ p : Fin 34, ∑ q : Fin 34,
        CornerPairs.weight p * CornerPairs.weight q *
          (injectiveMoment (FourierBridge.toOAI H.1)
            (CornerPairs.overlapExponent cubicExponent cubicExponent p q) +
           injectiveMoment (FourierBridge.toOAI H.1)
            (CornerPairs.overlapExponent cubicExponent (-cubicExponent) p q))) / 2 := by
  rw [← cubicMoment_small H]
  apply CornerPairs.squareMoment_expand
  · exact FourierBridge.hadamard_toOAI H.2
  · ext i j
    simp [cubicExponent, eq_comm]

end NoFourMUBs.Step2.SOS

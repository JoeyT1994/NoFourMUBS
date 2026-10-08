import PhysicalAdjugateCross

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderAdjugate20261008
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators Matrix
noncomputable section

theorem physical_seed_complement {H : Mat6} (hH : Physical H) :
    blockB H*(blockB H)ᴴ=6 • (1 : Mat3)-blockE H*(blockE H)ᴴ := by
  have he : blockE H*(blockE H)ᴴ+blockB H*(blockB H)ᴴ=6 • (1 : Mat3) := by
    ext i j
    have hg := hH.2 (upperIndex i) (upperIndex j)
    rw [sum_six_split] at hg
    by_cases hij : i=j
    · subst j
      simpa [blockE,blockB,Matrix.mul_apply,Matrix.conjTranspose_apply] using hg
    · have hui : upperIndex i ≠ upperIndex j := by
        intro h
        exact hij (Fin.ext (congrArg (fun k : Fin 6 => k.val) h))
      simpa [blockE,blockB,Matrix.mul_apply,Matrix.conjTranspose_apply,hij,hui] using hg
  exact eq_sub_of_add_eq' he

/-- Literal Gram, adjugate and determinant used by the supplier cross-side
pruner, without inverse or division. -/
def literalGram (E : Mat3) : Mat3 := 6 • (1 : Mat3)-E*Eᴴ
def literalCrossW (E : Mat3) : Mat3 := Eᴴ*(literalGram E).adjugate

theorem physical_literalCrossW {H : Mat6} (hH : Physical H) :
    sideCrossW H=literalCrossW (blockE H) := by
  unfold sideCrossW literalCrossW literalGram
  rw [physical_seed_complement hH]

theorem physical_literal_g {H : Mat6} (hH : Physical H) :
    (literalGram (blockE H)).det=(Complex.normSq (blockB H).det : ℂ) := by
  unfold literalGram
  rw [← physical_seed_complement hH]
  exact physical_gram_det_nonnegative H

/-- Exact direct row times W times column condition on all nine pairs. -/
theorem physical_literal_cross_modulus {H : Mat6} (hH : Physical H) (i j : Fin 3) :
    ‖∑ a : Fin 3, ∑ b : Fin 3,
      blockC H i a*literalCrossW (blockE H) a b*blockB H b j‖=
      (literalGram (blockE H)).det.re := by
  rw [physical_literal_g hH]
  have hm := physical_cross_modulus hH i j
  rw [physical_literalCrossW hH] at hm
  simp only [Matrix.mul_apply,Finset.sum_mul] at hm
  rw [Finset.sum_comm] at hm
  simpa only [Complex.ofReal_re] using hm

end
#print axioms physical_seed_complement
#print axioms physical_literalCrossW
#print axioms physical_literal_g
#print axioms physical_literal_cross_modulus
end ShoulderAdjugate20261008

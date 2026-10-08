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
    apply Matrix.ext
    intro i j
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

end
#print axioms physical_seed_complement
end ShoulderAdjugate20261008

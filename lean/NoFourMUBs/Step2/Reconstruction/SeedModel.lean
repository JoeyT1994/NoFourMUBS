import NoFourMUBs.Step2.Statements
import NoFourMUBs.Reuse.Archive.StrictSeedGuards

set_option autoImplicit false
open Matrix Hadamard6

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

theorem seedCorner_entrywiseUnit (p : Seed) : EntrywiseUnit (seedCorner p) := by
  exact cornerData_entrywiseUnit
    ⟨p 0, p 1, p 2, p 3, Circle.normSq_coe _, Circle.normSq_coe _,
      Circle.normSq_coe _, Circle.normSq_coe _⟩

/-- The archived constructor uses exactly the three correlations of our seed. -/
theorem seed_correlations (p : Seed) :
    StrictReconstruction20261007.seedS (seedCorner p) = seedS p ∧
    StrictReconstruction20261007.seedT (seedCorner p) = seedT p ∧
    StrictReconstruction20261007.seedR (seedCorner p) = seedRho p := by
  rw [StrictReconstruction20261007.seedS_eq_negative_rowGram,
    StrictReconstruction20261007.seedR_eq_negative_rowGram]
  simp [StrictReconstruction20261007.seedT, seedCorner, corner,
    Matrix.mul_apply, Fin.sum_univ_three, seedS, seedT, seedRho, Complex.star_def]

theorem seed_invariant (p : Seed) :
    Centiradian20261006.gramInvariant
      (StrictReconstruction20261007.seedS (seedCorner p))
      (StrictReconstruction20261007.seedT (seedCorner p))
      (StrictReconstruction20261007.seedR (seedCorner p)) = seedR p := by
  obtain ⟨hs, ht, hr⟩ := seed_correlations p
  rw [hs, ht, hr]
  rfl

theorem strict_seed_invariant_pos (s : StrictSeed) :
    0 < Centiradian20261006.gramInvariant
      (StrictReconstruction20261007.seedS (seedCorner s.1))
      (StrictReconstruction20261007.seedT (seedCorner s.1))
      (StrictReconstruction20261007.seedR (seedCorner s.1)) := by
  rw [seed_invariant]
  exact s.2

end NoFourMUBs.Step2.Reconstruction

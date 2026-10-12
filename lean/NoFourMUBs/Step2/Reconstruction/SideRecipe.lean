import NoFourMUBs.Step2.Reconstruction.SeedModel
import NoFourMUBs.Reuse.Archive.SideFourierActual

set_option autoImplicit false
open Matrix Hadamard6 StrictReconstruction20261007

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

/-- The existing side constructor, expressed in the unified strict-seed model.
All recipe witnesses are retained; no fourth-block flatness is asserted. -/
theorem strict_seed_recipe_exists (s : StrictSeed)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    ∃ delta w : ℂ,
      delta ^ 2 = prescribedDeltaRadicand (seedS s.1) (seedT s.1) (seedRho s.1) epsilon ∧
      0 ≤ (prescribedDF (seedS s.1) (seedT s.1) (seedRho s.1) epsilon delta).re ∧
      w ^ 3 = prescribedXi (seedS s.1) (seedT s.1) (seedRho s.1) epsilon delta ∧
      EntrywiseUnit (prescribedSide (seedS s.1) (seedT s.1) (seedRho s.1) epsilon delta w) ∧
      (∀ j, prescribedSide (seedS s.1) (seedT s.1) (seedRho s.1) epsilon delta w 0 j = 1) ∧
      (prescribedSide (seedS s.1) (seedT s.1) (seedRho s.1) epsilon delta w *
        (prescribedSide (seedS s.1) (seedT s.1) (seedRho s.1) epsilon delta w)ᴴ =
          sixI3 - seedCorner s.1 * (seedCorner s.1)ᴴ) := by
  have h := strict_seed_prescribed_side_exists (seedCorner s.1)
    (seedCorner_entrywiseUnit s.1) (strict_seed_invariant_pos s) he
  obtain ⟨hs, ht, hr⟩ := seed_correlations s.1
  simpa only [hs, ht, hr] using h

end NoFourMUBs.Step2.Reconstruction

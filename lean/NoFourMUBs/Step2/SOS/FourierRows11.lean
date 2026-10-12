import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions358
import NoFourMUBs.Step2.SOS.Reductions362
import NoFourMUBs.Step2.SOS.Reductions375

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound11 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 11) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row11 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row11 H]
  have hchildren : ∀ j : Fin 5,
      ((![576, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (![((2 : ℝ) / 1) * injectiveMoment H (fourierInput11), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (3 : Fin 4))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 2 reductionProjection11595), (Integer.Sparse.scale 1 reductionProjection11483), (Integer.Sparse.scale 1 reductionProjection12016), (Integer.Sparse.scale 1 reductionProjection12007), (Integer.Sparse.scale 1 oldProjection3404)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (fourierInput11) = canonicalInput33323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (576 : ℝ) * injectiveMoment H (fourierInput11) =
          Integer.Sparse.eval reductionProjection11595 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound33323 hH))).trans (reductionSound11595 hH)
      change ((576 : ℤ) : ℝ) * (((2 : ℝ) / 1) * injectiveMoment H (fourierInput11)) =
        Integer.Sparse.eval (Integer.Sparse.scale 2 reductionProjection11595) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (2 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput11.transpose (0 : Fin 4)) = canonicalInput32789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput11.transpose (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11483 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound32789 hH))).trans (reductionSound11483 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (0 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection11483) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput11.transpose (1 : Fin 4)) = canonicalInput21673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput11.transpose (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection12016 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21673 hH))).trans (reductionSound12016 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (1 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection12016) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput11.transpose (2 : Fin 4)) = canonicalInput21670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput11.transpose (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection12007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21670 hH))).trans (reductionSound12007 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (2 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection12007) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput11.transpose (3 : Fin 4)) = canonicalInput21668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput11.transpose (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection3404 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21668 hH))).trans (oldProjectionSound3404 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (3 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection3404) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((2 : ℝ) / 1) * injectiveMoment H (fourierInput11), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (3 : Fin 4))]
    1440 2880 ![576, 1440, 1440, 1440, 1440] ![-7200, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row11) ![(Integer.Sparse.scale 2 reductionProjection11595), (Integer.Sparse.scale 1 reductionProjection11483), (Integer.Sparse.scale 1 reductionProjection12016), (Integer.Sparse.scale 1 reductionProjection12007), (Integer.Sparse.scale 1 oldProjection3404)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero11 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

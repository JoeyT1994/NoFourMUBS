import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions375
import NoFourMUBs.Step2.SOS.Reductions383

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound12 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 12) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row12 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row12 H]
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 120] : Fin 5 → ℤ) j : ℝ) * (![((2 : ℝ) / 1) * injectiveMoment H (fourierInput12), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (3 : Fin 4))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 2 reductionProjection12258), (Integer.Sparse.scale 1 reductionProjection12009), (Integer.Sparse.scale 1 reductionProjection12009), (Integer.Sparse.scale 1 reductionProjection12009), (Integer.Sparse.scale 1 oldProjection2792)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (fourierInput12) = canonicalInput33322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (fourierInput12) =
          Integer.Sparse.eval reductionProjection12258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound33322 hH))).trans (reductionSound12258 hH)
      change ((1440 : ℤ) : ℝ) * (((2 : ℝ) / 1) * injectiveMoment H (fourierInput12)) =
        Integer.Sparse.eval (Integer.Sparse.scale 2 reductionProjection12258) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (2 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput12.transpose (0 : Fin 4)) = canonicalInput32788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst fourierInput12.transpose (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection12009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound32788 hH))).trans (reductionSound12009 hH)
      change ((288 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (0 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection12009) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput12.transpose (1 : Fin 4)) = canonicalInput21672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst fourierInput12.transpose (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection12009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21672 hH))).trans (reductionSound12009 hH)
      change ((288 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (1 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection12009) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput12.transpose (2 : Fin 4)) = canonicalInput21669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst fourierInput12.transpose (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection12009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21669 hH))).trans (reductionSound12009 hH)
      change ((288 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (2 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection12009) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput12.transpose (3 : Fin 4)) = canonicalInput21667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst fourierInput12.transpose (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2792 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21667 hH))).trans (oldProjectionSound2792 hH)
      change ((120 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (3 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection2792) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((2 : ℝ) / 1) * injectiveMoment H (fourierInput12), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (3 : Fin 4))]
    1440 1440 ![1440, 288, 288, 288, 120] ![-1440, -7200, -7200, -7200, -17280] (extendRow Arithmetic.row12) ![(Integer.Sparse.scale 2 reductionProjection12258), (Integer.Sparse.scale 1 reductionProjection12009), (Integer.Sparse.scale 1 reductionProjection12009), (Integer.Sparse.scale 1 reductionProjection12009), (Integer.Sparse.scale 1 oldProjection2792)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero12 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

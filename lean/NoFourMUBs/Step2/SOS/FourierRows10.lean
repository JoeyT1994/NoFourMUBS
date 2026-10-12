import NoFourMUBs.Step2.SOS.Canonical174
import NoFourMUBs.Step2.SOS.Canonical178
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions226
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions248

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound10 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 10) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row10 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row10 H]
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (![((2 : ℝ) / 1) * injectiveMoment H (fourierInput10), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (3 : Fin 4))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 2 reductionProjection7242), (Integer.Sparse.scale 1 reductionProjection7624), (Integer.Sparse.scale 1 reductionProjection7938), (Integer.Sparse.scale 1 reductionProjection7624), (Integer.Sparse.scale 1 reductionProjection7499)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (fourierInput10) = canonicalInput32872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (720 : ℝ) * injectiveMoment H (fourierInput10) =
          Integer.Sparse.eval reductionProjection7242 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound32872 hH))).trans (reductionSound7242 hH)
      change ((720 : ℤ) : ℝ) * (((2 : ℝ) / 1) * injectiveMoment H (fourierInput10)) =
        Integer.Sparse.eval (Integer.Sparse.scale 2 reductionProjection7242) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (2 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput10.transpose (0 : Fin 4)) = canonicalInput23779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput10.transpose (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7624 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound23779 hH))).trans (reductionSound7624 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (0 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection7624) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput10.transpose (1 : Fin 4)) = canonicalInput11446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput10.transpose (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7938 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound11446 hH))).trans (reductionSound7938 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (1 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection7938) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput10.transpose (2 : Fin 4)) = canonicalInput11190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput10.transpose (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7624 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound11190 hH))).trans (reductionSound7624 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (2 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection7624) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput10.transpose (3 : Fin 4)) = canonicalInput11189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst fourierInput10.transpose (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7499 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound11189 hH))).trans (reductionSound7499 hH)
      change ((1440 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (3 : Fin 4))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection7499) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((2 : ℝ) / 1) * injectiveMoment H (fourierInput10), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (3 : Fin 4))]
    720 1440 ![720, 1440, 1440, 1440, 1440] ![-1440, -720, -720, -720, -720] (extendRow Arithmetic.row10) ![(Integer.Sparse.scale 2 reductionProjection7242), (Integer.Sparse.scale 1 reductionProjection7624), (Integer.Sparse.scale 1 reductionProjection7938), (Integer.Sparse.scale 1 reductionProjection7624), (Integer.Sparse.scale 1 reductionProjection7499)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero10 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions360

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound9 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 9) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row9 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row9 H]
  have hchildren : ∀ j : Fin 4,
      ((![720, 96, 480, 480] : Fin 4 → ℤ) j : ℝ) * (![((3 : ℝ) / 1) * injectiveMoment H (fourierInput9), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (0 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (1 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (2 : Fin 3))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 3 reductionProjection11522), (Integer.Sparse.scale 1 oldProjection2102), (Integer.Sparse.scale 1 oldProjection2661), (Integer.Sparse.scale 1 oldProjection2662)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (fourierInput9) = canonicalInput32921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (720 : ℝ) * injectiveMoment H (fourierInput9) =
          Integer.Sparse.eval reductionProjection11522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32921 hH))).trans (reductionSound11522 hH)
      change ((720 : ℤ) : ℝ) * (((3 : ℝ) / 1) * injectiveMoment H (fourierInput9)) =
        Integer.Sparse.eval (Integer.Sparse.scale 3 reductionProjection11522) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (3 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput9.transpose (0 : Fin 3)) = canonicalInput32787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst fourierInput9.transpose (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection2102 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound32787 hH))).trans (oldProjectionSound2102 hH)
      change ((96 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (0 : Fin 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection2102) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput9.transpose (1 : Fin 3)) = canonicalInput21671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst fourierInput9.transpose (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection2661 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21671 hH))).trans (oldProjectionSound2661 hH)
      change ((480 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (1 : Fin 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection2661) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput9.transpose (2 : Fin 3)) = canonicalInput21666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst fourierInput9.transpose (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection2662 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound21666 hH))).trans (oldProjectionSound2662 hH)
      change ((480 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (2 : Fin 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection2662) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((3 : ℝ) / 1) * injectiveMoment H (fourierInput9), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (0 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (1 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (2 : Fin 3))]
    240 1440 ![720, 96, 480, 480] ![-480, -3600, -720, -720] (extendRow Arithmetic.row9) ![(Integer.Sparse.scale 3 reductionProjection11522), (Integer.Sparse.scale 1 oldProjection2102), (Integer.Sparse.scale 1 oldProjection2661), (Integer.Sparse.scale 1 oldProjection2662)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero9 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

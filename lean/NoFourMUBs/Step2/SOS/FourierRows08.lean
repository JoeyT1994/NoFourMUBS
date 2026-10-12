import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions360

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem rowSound8 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    Integer.Sparse.eval (Arithmetic.rows 8) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row8 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row8 H]
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 120, 480] : Fin 4 → ℤ) j : ℝ) * (![((3 : ℝ) / 1) * injectiveMoment H (fourierInput8), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (0 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (1 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (2 : Fin 3))] j) =
        Integer.Sparse.eval (![(Integer.Sparse.scale 3 reductionProjection11544), (Integer.Sparse.scale 1 reductionProjection9302), (Integer.Sparse.scale 1 oldProjection2668), (Integer.Sparse.scale 1 oldProjection2137)] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (fourierInput8) = canonicalInput33371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (720 : ℝ) * injectiveMoment H (fourierInput8) =
          Integer.Sparse.eval reductionProjection11544 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33371 hH))).trans (reductionSound11544 hH)
      change ((720 : ℤ) : ℝ) * (((3 : ℝ) / 1) * injectiveMoment H (fourierInput8)) =
        Integer.Sparse.eval (Integer.Sparse.scale 3 reductionProjection11544) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (3 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput8.transpose (0 : Fin 3)) = canonicalInput33912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst fourierInput8.transpose (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound33912 hH))).trans (reductionSound9302 hH)
      change ((240 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (0 : Fin 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 reductionProjection9302) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput8.transpose (1 : Fin 3)) = canonicalInput31761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst fourierInput8.transpose (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection2668 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound31761 hH))).trans (oldProjectionSound2668 hH)
      change ((120 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (1 : Fin 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection2668) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
    · have he : (mergeFirst fourierInput8.transpose (2 : Fin 3)) = canonicalInput31760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst fourierInput8.transpose (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection2137 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound31760 hH))).trans (oldProjectionSound2137 hH)
      change ((480 : ℤ) : ℝ) * (((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (2 : Fin 3))) =
        Integer.Sparse.eval (Integer.Sparse.scale 1 oldProjection2137) (Normalization.momentVector H)
      rw [Integer.Sparse.eval_scale]
      convert congrArg (fun t : ℝ => (1 : ℝ) * t) hh using 1 <;> norm_num <;> ring
  exact projected_zero (Normalization.momentVector H) ![((3 : ℝ) / 1) * injectiveMoment H (fourierInput8), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (0 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (1 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (2 : Fin 3))]
    480 1440 ![720, 240, 120, 480] ![-960, -2880, -5760, -1440] (extendRow Arithmetic.row8) ![(Integer.Sparse.scale 3 reductionProjection11544), (Integer.Sparse.scale 1 reductionProjection9302), (Integer.Sparse.scale 1 oldProjection2668), (Integer.Sparse.scale 1 oldProjection2137)]
    (by decide +kernel) (by decide +kernel) (fourierInputZero8 hH hF hFt)
    hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

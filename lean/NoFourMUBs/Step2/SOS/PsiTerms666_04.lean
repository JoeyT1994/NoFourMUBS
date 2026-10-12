import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical346
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical367
import NoFourMUBs.Step2.SOS.Canonical476
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.PsiRowInputs
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions376
import NoFourMUBs.Step2.SOS.Reductions382

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem psiChild666_40 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 40 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 40) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 40) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (2880 : ℤ) oldProjection4)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - psiInput666) = canonicalInput23130.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23130 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 40) true - psiInput666) = canonicalInput30487.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) true - psiInput666) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30487 hH))).trans (oldProjectionSound4 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (2880 : ℝ) * hh1

theorem psiChild666_41 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 41 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 41) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 41) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (36 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 41) false - psiInput666) = canonicalInput23065.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23065 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 41) true - psiInput666) = canonicalInput30486.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 41) true - psiInput666) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30486 hH))).trans (oldProjectionSound62 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (36 : ℝ) * hh1

theorem psiChild666_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 42 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 42) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 42) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11297) (Integer.Sparse.scale (6 : ℤ) oldProjection272)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 42) false - psiInput666) = canonicalInput22145.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11297 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22145 hH))).trans (reductionSound11297 hH)
  have he1 : (blockExponent (psiExponent 42) true - psiInput666) = canonicalInput30475.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 42) true - psiInput666) =
      Integer.Sparse.eval oldProjection272 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30475 hH))).trans (oldProjectionSound272 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (6 : ℝ) * hh1

theorem psiChild666_43 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 43 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 43) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 43) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (12 : ℤ) oldProjection291)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - psiInput666) = canonicalInput22080.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22080 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 43) true - psiInput666) = canonicalInput30474.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) true - psiInput666) =
      Integer.Sparse.eval oldProjection291 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30474 hH))).trans (oldProjectionSound291 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild666_44 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 44 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 44) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 44) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-36 : ℤ) oldProjection210)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - psiInput666) = canonicalInput21954.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21954 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 44) true - psiInput666) = canonicalInput30472.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) true - psiInput666) =
      Integer.Sparse.eval oldProjection210 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30472 hH))).trans (oldProjectionSound210 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-36 : ℝ) * hh1

theorem psiChild666_45 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * ((psiCoefficient 45 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 45) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 45) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (120 : ℤ) reductionProjection12242) (Integer.Sparse.scale (-1 : ℤ) oldProjection203)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - psiInput666) = canonicalInput23496.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12242 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23496 hH))).trans (reductionSound12242 hH)
  have he1 : (blockExponent (psiExponent 45) true - psiInput666) = canonicalInput30500.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) true - psiInput666) =
      Integer.Sparse.eval oldProjection203 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30500 hH))).trans (oldProjectionSound203 hH)
  change (240 : ℝ) * (((1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (120 : ℝ) * hh0 + (-1 : ℝ) * hh1

theorem psiChild666_46 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 46 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 46) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 46) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-108 : ℤ) oldProjection62)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 46) false - psiInput666) = canonicalInput23004.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23004 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 46) true - psiInput666) = canonicalInput30485.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 46) true - psiInput666) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30485 hH))).trans (oldProjectionSound62 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-108 : ℝ) * hh1

theorem psiChild666_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 47 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 47) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 47) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-1 : ℤ) reductionProjection11297) (Integer.Sparse.scale (12 : ℤ) oldProjection207)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 47) false - psiInput666) = canonicalInput22939.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11297 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22939 hH))).trans (reductionSound11297 hH)
  have he1 : (blockExponent (psiExponent 47) true - psiInput666) = canonicalInput30484.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 47) true - psiInput666) =
      Integer.Sparse.eval oldProjection207 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30484 hH))).trans (oldProjectionSound207 hH)
  change (1440 : ℝ) * (((-1 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-1 : ℝ) * hh0 + (12 : ℝ) * hh1

theorem psiChild666_48 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * ((psiCoefficient 48 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 48) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 48) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (3 : ℤ) reductionProjection12062) (Integer.Sparse.scale (-144 : ℤ) oldProjection46)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 48) false - psiInput666) = canonicalInput22019.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) false - psiInput666) =
      Integer.Sparse.eval reductionProjection12062 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22019 hH))).trans (reductionSound12062 hH)
  have he1 : (blockExponent (psiExponent 48) true - psiInput666) = canonicalInput30473.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (60 : ℝ) * injectiveMoment H (blockExponent (psiExponent 48) true - psiInput666) =
      Integer.Sparse.eval oldProjection46 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30473 hH))).trans (oldProjectionSound46 hH)
  change (2880 : ℝ) * (((3 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (3 : ℝ) * hh0 + (-144 : ℝ) * hh1

theorem psiChild666_49 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * ((psiCoefficient 49 : ℝ) * (injectiveMoment H (blockExponent (psiExponent 49) false - psiInput666) - injectiveMoment H (blockExponent (psiExponent 49) true - psiInput666))) =
      Integer.Sparse.eval (Integer.Sparse.merge (Integer.Sparse.scale (-2 : ℤ) reductionProjection11304) (Integer.Sparse.scale (12 : ℤ) oldProjection284)) (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - psiInput666) = canonicalInput21893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - psiInput666) =
      Integer.Sparse.eval reductionProjection11304 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21893 hH))).trans (reductionSound11304 hH)
  have he1 : (blockExponent (psiExponent 49) true - psiInput666) = canonicalInput30471.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) true - psiInput666) =
      Integer.Sparse.eval oldProjection284 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30471 hH))).trans (oldProjectionSound284 hH)
  change (1440 : ℝ) * (((-2 : ℤ) : ℝ) * _) = _
  rw [Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-2 : ℝ) * hh0 + (12 : ℝ) * hh1

end NoFourMUBs.Step2.SOS.Semantics

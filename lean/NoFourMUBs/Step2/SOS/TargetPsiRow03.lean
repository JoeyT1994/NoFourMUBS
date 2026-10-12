import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.Canonical517
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical526
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.Canonical533
import NoFourMUBs.Step2.SOS.Canonical534
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.Canonical536
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.Reductions349
import NoFourMUBs.Step2.SOS.Reductions377
import NoFourMUBs.Step2.SOS.Reductions383
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiChild3_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild3_0 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 0 =
      Integer.Sparse.eval targetPsiChild3_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 0) false) = canonicalInput23034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23034 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 0) true) = canonicalInput33562.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33562 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild3_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_1 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 1 =
      Integer.Sparse.eval targetPsiChild3_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 1) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 1) true) = canonicalInput33561.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33561 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_2 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 2 =
      Integer.Sparse.eval targetPsiChild3_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 2) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 2) true) = canonicalInput33558.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33558 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection0)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild3_3 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 3 3 =
      Integer.Sparse.eval targetPsiChild3_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 3) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 3) true) = canonicalInput33555.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33555 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild3_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 4 =
      Integer.Sparse.eval targetPsiChild3_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 4) false) = canonicalInput32226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32226 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 4) true) = canonicalInput33552.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33552 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_5 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 5 =
      Integer.Sparse.eval targetPsiChild3_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 5) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 5) true) = canonicalInput33549.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33549 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_6 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 6 =
      Integer.Sparse.eval targetPsiChild3_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 6) false) = canonicalInput23124.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23124 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 6) true) = canonicalInput33560.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33560 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild3_7 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 3 7 =
      Integer.Sparse.eval targetPsiChild3_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 7) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 7) true) = canonicalInput33557.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33557 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild3_8 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 3 8 =
      Integer.Sparse.eval targetPsiChild3_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 8) false) = canonicalInput30861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30861 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 8) true) = canonicalInput33554.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33554 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_9 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 9 =
      Integer.Sparse.eval targetPsiChild3_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 9) false) = canonicalInput32255.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32255 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 9) true) = canonicalInput33551.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33551 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild3_10 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 3 10 =
      Integer.Sparse.eval targetPsiChild3_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 10) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 10) true) = canonicalInput33548.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33548 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_11 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 11 =
      Integer.Sparse.eval targetPsiChild3_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 11) false) = canonicalInput32933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32933 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 11) true) = canonicalInput33546.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33546 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild3_12 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 3 12 =
      Integer.Sparse.eval targetPsiChild3_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 12) false) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 12) true) = canonicalInput33544.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33544 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_13 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 13 =
      Integer.Sparse.eval targetPsiChild3_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 13) false) = canonicalInput33379.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33379 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 13) true) = canonicalInput33540.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33540 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild3_14 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 3 14 =
      Integer.Sparse.eval targetPsiChild3_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 14) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 14) true) = canonicalInput33538.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33538 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 15 =
      Integer.Sparse.eval targetPsiChild3_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 15) false) = canonicalInput33277.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33277 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 15) true) = canonicalInput33542.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33542 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild3_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 3 16 =
      Integer.Sparse.eval targetPsiChild3_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 16) false) = canonicalInput33537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33537 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 16) true) = canonicalInput33537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33537 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild3_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild3_17 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 3 17 =
      Integer.Sparse.eval targetPsiChild3_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 17) false) = canonicalInput33663.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33663 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 17) true) = canonicalInput33535.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33535 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild3_18 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 3 18 =
      Integer.Sparse.eval targetPsiChild3_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 18) false) = canonicalInput33883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33883 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 18) true) = canonicalInput33533.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33533 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild3_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_19 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 19 =
      Integer.Sparse.eval targetPsiChild3_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 19) false) = canonicalInput33887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33887 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 19) true) = canonicalInput33531.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33531 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_20 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 20 =
      Integer.Sparse.eval targetPsiChild3_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 20) false) = canonicalInput33892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33892 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 20) true) = canonicalInput33529.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33529 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild3_21 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 21 =
      Integer.Sparse.eval targetPsiChild3_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 21) false) = canonicalInput23125.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23125 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 21) true) = canonicalInput33559.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33559 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild3_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_22 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 22 =
      Integer.Sparse.eval targetPsiChild3_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 22) false) = canonicalInput30370.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30370 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 22) true) = canonicalInput33556.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33556 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild3_23 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 3 23 =
      Integer.Sparse.eval targetPsiChild3_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 23) false) = canonicalInput30890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30890 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 23) true) = canonicalInput33553.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33553 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_24 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 24 =
      Integer.Sparse.eval targetPsiChild3_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 24) false) = canonicalInput32256.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32256 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 24) true) = canonicalInput33550.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33550 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_25 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 25 =
      Integer.Sparse.eval targetPsiChild3_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 25) false) = canonicalInput32381.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32381 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 25) true) = canonicalInput33547.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33547 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_26 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 26 =
      Integer.Sparse.eval targetPsiChild3_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 26) false) = canonicalInput32934.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32934 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 26) true) = canonicalInput33545.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33545 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_27 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 27 =
      Integer.Sparse.eval targetPsiChild3_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 27) false) = canonicalInput33092.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33092 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 27) true) = canonicalInput33543.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33543 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_28 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 28 =
      Integer.Sparse.eval targetPsiChild3_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 28) false) = canonicalInput33380.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33380 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 28) true) = canonicalInput33539.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33539 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_29 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 29 =
      Integer.Sparse.eval targetPsiChild3_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 29) false) = canonicalInput33306.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33306 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 29) true) = canonicalInput33541.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33541 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_30 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 30 =
      Integer.Sparse.eval targetPsiChild3_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 30) false) = canonicalInput33566.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33566 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 30) true) = canonicalInput33536.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33536 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_31 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 31 =
      Integer.Sparse.eval targetPsiChild3_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 31) false) = canonicalInput33724.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33724 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 31) true) = canonicalInput33534.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33534 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild3_32 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 3 32 =
      Integer.Sparse.eval targetPsiChild3_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 32) false) = canonicalInput33884.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33884 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 32) true) = canonicalInput33532.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33532 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_33 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 33 =
      Integer.Sparse.eval targetPsiChild3_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 33) false) = canonicalInput33888.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33888 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 33) true) = canonicalInput33530.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33530 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_34 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 34 =
      Integer.Sparse.eval targetPsiChild3_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 34) false) = canonicalInput33893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33893 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 34) true) = canonicalInput33528.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33528 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild3_35 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 35 =
      Integer.Sparse.eval targetPsiChild3_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 35) false) = canonicalInput33954.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33954 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 35) true) = canonicalInput33527.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33527 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild3_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild3_36 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 3 36 =
      Integer.Sparse.eval targetPsiChild3_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 36) false) = canonicalInput33959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33959 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 36) true) = canonicalInput33526.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33526 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_37 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 37 =
      Integer.Sparse.eval targetPsiChild3_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 37) false) = canonicalInput33977.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33977 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 37) true) = canonicalInput33523.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33523 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_38 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 38 =
      Integer.Sparse.eval targetPsiChild3_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 38) false) = canonicalInput33981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33981 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 38) true) = canonicalInput33522.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33522 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_39 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 39 =
      Integer.Sparse.eval targetPsiChild3_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 39) false) = canonicalInput33964.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33964 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 39) true) = canonicalInput33525.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33525 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_40 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 40 =
      Integer.Sparse.eval targetPsiChild3_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 40) false) = canonicalInput33982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33982 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 40) true) = canonicalInput33521.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33521 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_41 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 41 =
      Integer.Sparse.eval targetPsiChild3_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 41) false) = canonicalInput34139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34139 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 41) true) = canonicalInput33520.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33520 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild3_42 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 3 42 =
      Integer.Sparse.eval targetPsiChild3_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 42) false) = canonicalInput34266.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34266 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 42) true) = canonicalInput33517.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33517 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_43 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 43 =
      Integer.Sparse.eval targetPsiChild3_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 43) false) = canonicalInput34270.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34270 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 43) true) = canonicalInput33516.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33516 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild3_44 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 44 =
      Integer.Sparse.eval targetPsiChild3_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 44) false) = canonicalInput34275.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34275 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 44) true) = canonicalInput33514.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33514 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild3_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild3_45 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 45 =
      Integer.Sparse.eval targetPsiChild3_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 45) false) = canonicalInput33969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33969 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 45) true) = canonicalInput33524.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33524 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild3_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild3_46 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 3 46 =
      Integer.Sparse.eval targetPsiChild3_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 46) false) = canonicalInput34200.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34200 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 46) true) = canonicalInput33519.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33519 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild3_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_47 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 47 =
      Integer.Sparse.eval targetPsiChild3_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 47) false) = canonicalInput34233.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34233 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 47) true) = canonicalInput33518.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33518 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection41)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild3_48 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 3 48 =
      Integer.Sparse.eval targetPsiChild3_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 48) false) = canonicalInput34271.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34271 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 48) true) = canonicalInput33515.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33515 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild3_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild3_49 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 3 49 =
      Integer.Sparse.eval targetPsiChild3_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 49) false) = canonicalInput34276.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34276 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 49) true) = canonicalInput33513.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33513 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild3_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild3_50 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 3 50 =
      Integer.Sparse.eval targetPsiChild3_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 50) false) = canonicalInput34281.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34281 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 50) true) = canonicalInput33512.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33512 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild3_51 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 51 =
      Integer.Sparse.eval targetPsiChild3_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 51) false) = canonicalInput34311.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34311 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 51) true) = canonicalInput33511.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33511 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild3_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild3_52 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 3 52 =
      Integer.Sparse.eval targetPsiChild3_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 52) false) = canonicalInput34314.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34314 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 52) true) = canonicalInput33510.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33510 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild3_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild3_53 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 53 =
      Integer.Sparse.eval targetPsiChild3_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 53) false) = canonicalInput34318.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34318 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 53) true) = canonicalInput33509.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33509 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild3_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild3_54 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 3 54 =
      Integer.Sparse.eval targetPsiChild3_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 3) false - blockExponent (psiExponent 54) false) = canonicalInput34322.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34322 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 3) false + blockExponent (psiExponent 54) true) = canonicalInput33508.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 3) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33508 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild3_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow3Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 3) i) =
      Integer.Sparse.eval targetPsiRow3Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![80, 80, 80, 4, 20, 80, 80, 10, 10, 20, 10, 80, 10, 20, 10, 20, 5, 10, 4, 20, 80, 80, 20, 16, 80, 20, 20, 20, 20, 80, 20, 20, 16, 20, 20, 80, 16, 80, 20, 80, 20, 20, 16, 20, 20, 80, 4, 80, 4, 20, 16, 80, 16, 80, 80] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 3) i) =
      Integer.Sparse.eval (![targetPsiChild3_0Projection, targetPsiChild3_1Projection, targetPsiChild3_2Projection, targetPsiChild3_3Projection, targetPsiChild3_4Projection, targetPsiChild3_5Projection, targetPsiChild3_6Projection, targetPsiChild3_7Projection, targetPsiChild3_8Projection, targetPsiChild3_9Projection, targetPsiChild3_10Projection, targetPsiChild3_11Projection, targetPsiChild3_12Projection, targetPsiChild3_13Projection, targetPsiChild3_14Projection, targetPsiChild3_15Projection, targetPsiChild3_16Projection, targetPsiChild3_17Projection, targetPsiChild3_18Projection, targetPsiChild3_19Projection, targetPsiChild3_20Projection, targetPsiChild3_21Projection, targetPsiChild3_22Projection, targetPsiChild3_23Projection, targetPsiChild3_24Projection, targetPsiChild3_25Projection, targetPsiChild3_26Projection, targetPsiChild3_27Projection, targetPsiChild3_28Projection, targetPsiChild3_29Projection, targetPsiChild3_30Projection, targetPsiChild3_31Projection, targetPsiChild3_32Projection, targetPsiChild3_33Projection, targetPsiChild3_34Projection, targetPsiChild3_35Projection, targetPsiChild3_36Projection, targetPsiChild3_37Projection, targetPsiChild3_38Projection, targetPsiChild3_39Projection, targetPsiChild3_40Projection, targetPsiChild3_41Projection, targetPsiChild3_42Projection, targetPsiChild3_43Projection, targetPsiChild3_44Projection, targetPsiChild3_45Projection, targetPsiChild3_46Projection, targetPsiChild3_47Projection, targetPsiChild3_48Projection, targetPsiChild3_49Projection, targetPsiChild3_50Projection, targetPsiChild3_51Projection, targetPsiChild3_52Projection, targetPsiChild3_53Projection, targetPsiChild3_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild3_0 hH
    · exact targetPsiChild3_1 hH
    · exact targetPsiChild3_2 hH
    · exact targetPsiChild3_3 hH
    · exact targetPsiChild3_4 hH
    · exact targetPsiChild3_5 hH
    · exact targetPsiChild3_6 hH
    · exact targetPsiChild3_7 hH
    · exact targetPsiChild3_8 hH
    · exact targetPsiChild3_9 hH
    · exact targetPsiChild3_10 hH
    · exact targetPsiChild3_11 hH
    · exact targetPsiChild3_12 hH
    · exact targetPsiChild3_13 hH
    · exact targetPsiChild3_14 hH
    · exact targetPsiChild3_15 hH
    · exact targetPsiChild3_16 hH
    · exact targetPsiChild3_17 hH
    · exact targetPsiChild3_18 hH
    · exact targetPsiChild3_19 hH
    · exact targetPsiChild3_20 hH
    · exact targetPsiChild3_21 hH
    · exact targetPsiChild3_22 hH
    · exact targetPsiChild3_23 hH
    · exact targetPsiChild3_24 hH
    · exact targetPsiChild3_25 hH
    · exact targetPsiChild3_26 hH
    · exact targetPsiChild3_27 hH
    · exact targetPsiChild3_28 hH
    · exact targetPsiChild3_29 hH
    · exact targetPsiChild3_30 hH
    · exact targetPsiChild3_31 hH
    · exact targetPsiChild3_32 hH
    · exact targetPsiChild3_33 hH
    · exact targetPsiChild3_34 hH
    · exact targetPsiChild3_35 hH
    · exact targetPsiChild3_36 hH
    · exact targetPsiChild3_37 hH
    · exact targetPsiChild3_38 hH
    · exact targetPsiChild3_39 hH
    · exact targetPsiChild3_40 hH
    · exact targetPsiChild3_41 hH
    · exact targetPsiChild3_42 hH
    · exact targetPsiChild3_43 hH
    · exact targetPsiChild3_44 hH
    · exact targetPsiChild3_45 hH
    · exact targetPsiChild3_46 hH
    · exact targetPsiChild3_47 hH
    · exact targetPsiChild3_48 hH
    · exact targetPsiChild3_49 hH
    · exact targetPsiChild3_50 hH
    · exact targetPsiChild3_51 hH
    · exact targetPsiChild3_52 hH
    · exact targetPsiChild3_53 hH
    · exact targetPsiChild3_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 3) i) (targetPsiTerm H 3)
    (-1) 80 80 (-1) ![80, 80, 80, 4, 20, 80, 80, 10, 10, 20, 10, 80, 10, 20, 10, 20, 5, 10, 4, 20, 80, 80, 20, 16, 80, 20, 20, 20, 20, 80, 20, 20, 16, 20, 20, 80, 16, 80, 20, 80, 20, 20, 16, 20, 20, 80, 4, 80, 4, 20, 16, 80, 16, 80, 80] ![1, 1, 1, 20, 4, 1, 1, 8, 8, 4, 8, 1, 8, 4, 8, 4, 16, 8, 20, 4, 1, 1, 4, 5, 1, 4, 4, 4, 4, 1, 4, 4, 5, 4, 4, 1, 5, 1, 4, 1, 4, 4, 5, 4, 4, 1, 20, 1, 20, 4, 5, 1, 5, 1, 1] targetPsiRow3Projection ![targetPsiChild3_0Projection, targetPsiChild3_1Projection, targetPsiChild3_2Projection, targetPsiChild3_3Projection, targetPsiChild3_4Projection, targetPsiChild3_5Projection, targetPsiChild3_6Projection, targetPsiChild3_7Projection, targetPsiChild3_8Projection, targetPsiChild3_9Projection, targetPsiChild3_10Projection, targetPsiChild3_11Projection, targetPsiChild3_12Projection, targetPsiChild3_13Projection, targetPsiChild3_14Projection, targetPsiChild3_15Projection, targetPsiChild3_16Projection, targetPsiChild3_17Projection, targetPsiChild3_18Projection, targetPsiChild3_19Projection, targetPsiChild3_20Projection, targetPsiChild3_21Projection, targetPsiChild3_22Projection, targetPsiChild3_23Projection, targetPsiChild3_24Projection, targetPsiChild3_25Projection, targetPsiChild3_26Projection, targetPsiChild3_27Projection, targetPsiChild3_28Projection, targetPsiChild3_29Projection, targetPsiChild3_30Projection, targetPsiChild3_31Projection, targetPsiChild3_32Projection, targetPsiChild3_33Projection, targetPsiChild3_34Projection, targetPsiChild3_35Projection, targetPsiChild3_36Projection, targetPsiChild3_37Projection, targetPsiChild3_38Projection, targetPsiChild3_39Projection, targetPsiChild3_40Projection, targetPsiChild3_41Projection, targetPsiChild3_42Projection, targetPsiChild3_43Projection, targetPsiChild3_44Projection, targetPsiChild3_45Projection, targetPsiChild3_46Projection, targetPsiChild3_47Projection, targetPsiChild3_48Projection, targetPsiChild3_49Projection, targetPsiChild3_50Projection, targetPsiChild3_51Projection, targetPsiChild3_52Projection, targetPsiChild3_53Projection, targetPsiChild3_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

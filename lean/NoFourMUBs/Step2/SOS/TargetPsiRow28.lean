import NoFourMUBs.Step2.SOS.Canonical179
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical346
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical507
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical518
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions377
import NoFourMUBs.Step2.SOS.Reductions381
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiChild28_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild28_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 28 0 =
      Integer.Sparse.eval targetPsiChild28_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 0) false) = canonicalInput11473.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11473 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 0) true) = canonicalInput30955.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30955 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_1 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 1 =
      Integer.Sparse.eval targetPsiChild28_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 1) false) = canonicalInput11478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 1) true) = canonicalInput30954.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30954 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_2 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 2 =
      Integer.Sparse.eval targetPsiChild28_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 2) false) = canonicalInput22016.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22016 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 2) true) = canonicalInput30951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30951 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 3 =
      Integer.Sparse.eval targetPsiChild28_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 3) false) = canonicalInput22142.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22142 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 3) true) = canonicalInput30948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30948 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 4 =
      Integer.Sparse.eval targetPsiChild28_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 4) false) = canonicalInput23127.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23127 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 4) true) = canonicalInput30945.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30945 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_5 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 5 =
      Integer.Sparse.eval targetPsiChild28_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 5) false) = canonicalInput23252.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23252 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 5) true) = canonicalInput30942.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30942 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_6 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 6 =
      Integer.Sparse.eval targetPsiChild28_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 6) false) = canonicalInput11492.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11492 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 6) true) = canonicalInput30953.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30953 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_7 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 7 =
      Integer.Sparse.eval targetPsiChild28_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 7) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 7) true) = canonicalInput30950.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30950 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild28_8 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 28 8 =
      Integer.Sparse.eval targetPsiChild28_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 8) false) = canonicalInput22175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22175 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 8) true) = canonicalInput30947.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30947 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild28_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_9 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 9 =
      Integer.Sparse.eval targetPsiChild28_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 9) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 9) true) = canonicalInput30944.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30944 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_10 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 10 =
      Integer.Sparse.eval targetPsiChild28_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 10) false) = canonicalInput23253.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23253 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 10) true) = canonicalInput30941.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30941 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_11 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 11 =
      Integer.Sparse.eval targetPsiChild28_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 11) false) = canonicalInput27076.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27076 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 11) true) = canonicalInput30939.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30939 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild28_12 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 28 12 =
      Integer.Sparse.eval targetPsiChild28_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 12) false) = canonicalInput27234.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27234 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 12) true) = canonicalInput30937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30937 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild28_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_13 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 13 =
      Integer.Sparse.eval targetPsiChild28_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 13) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 13) true) = canonicalInput30933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30933 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_14 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 14 =
      Integer.Sparse.eval targetPsiChild28_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 14) false) = canonicalInput30893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30893 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 14) true) = canonicalInput30931.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30931 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 15 =
      Integer.Sparse.eval targetPsiChild28_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 15) false) = canonicalInput27327.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27327 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 15) true) = canonicalInput30935.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30935 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild28_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 28 16 =
      Integer.Sparse.eval targetPsiChild28_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 16) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 16) true) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild28_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection4)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_17 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 17 =
      Integer.Sparse.eval targetPsiChild28_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 17) false) = canonicalInput31023.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31023 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 17) true) = canonicalInput30928.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30928 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild28_18 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 28 18 =
      Integer.Sparse.eval targetPsiChild28_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 18) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 18) true) = canonicalInput30926.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30926 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild28_19 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 28 19 =
      Integer.Sparse.eval targetPsiChild28_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 19) false) = canonicalInput32384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32384 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 19) true) = canonicalInput30924.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30924 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild28_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_20 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 20 =
      Integer.Sparse.eval targetPsiChild28_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 20) false) = canonicalInput32508.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32508 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 20) true) = canonicalInput30922.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30922 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild28_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 28 21 =
      Integer.Sparse.eval targetPsiChild28_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 21) false) = canonicalInput11500.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11500 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 21) true) = canonicalInput30952.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30952 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild28_22 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 28 22 =
      Integer.Sparse.eval targetPsiChild28_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 22) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 22) true) = canonicalInput30949.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30949 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_23 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 23 =
      Integer.Sparse.eval targetPsiChild28_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 23) false) = canonicalInput22204.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22204 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 23) true) = canonicalInput30946.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30946 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_24 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 24 =
      Integer.Sparse.eval targetPsiChild28_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 24) false) = canonicalInput23221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23221 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 24) true) = canonicalInput30943.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30943 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_25 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 25 =
      Integer.Sparse.eval targetPsiChild28_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 25) false) = canonicalInput23286.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23286 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 25) true) = canonicalInput30940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30940 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild28_26 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 28 26 =
      Integer.Sparse.eval targetPsiChild28_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 26) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 26) true) = canonicalInput30938.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30938 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_27 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 27 =
      Integer.Sparse.eval targetPsiChild28_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 27) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 27) true) = canonicalInput30936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30936 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_28 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 28 =
      Integer.Sparse.eval targetPsiChild28_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 28) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 28) true) = canonicalInput30932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30932 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_29 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 29 =
      Integer.Sparse.eval targetPsiChild28_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 29) false) = canonicalInput27328.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27328 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 29) true) = canonicalInput30934.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30934 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_30 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 30 =
      Integer.Sparse.eval targetPsiChild28_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 30) false) = canonicalInput30991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30991 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 30) true) = canonicalInput30929.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30929 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_31 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 31 =
      Integer.Sparse.eval targetPsiChild28_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 31) false) = canonicalInput31024.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31024 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 31) true) = canonicalInput30927.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30927 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_32 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 32 =
      Integer.Sparse.eval targetPsiChild28_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 32) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 32) true) = canonicalInput30925.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30925 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_33 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 33 =
      Integer.Sparse.eval targetPsiChild28_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 33) false) = canonicalInput32417.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32417 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 33) true) = canonicalInput30923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30923 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_34 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 34 =
      Integer.Sparse.eval targetPsiChild28_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 34) false) = canonicalInput32509.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32509 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 34) true) = canonicalInput30921.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30921 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild28_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 28 35 =
      Integer.Sparse.eval targetPsiChild28_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 35) false) = canonicalInput32887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32887 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 35) true) = canonicalInput30920.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30920 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_36 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 36 =
      Integer.Sparse.eval targetPsiChild28_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 36) false) = canonicalInput32892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32892 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 36) true) = canonicalInput30919.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30919 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_37 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 37 =
      Integer.Sparse.eval targetPsiChild28_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 37) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 37) true) = canonicalInput30916.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30916 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_38 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 38 =
      Integer.Sparse.eval targetPsiChild28_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 38) false) = canonicalInput33155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33155 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 38) true) = canonicalInput30915.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30915 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_39 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 39 =
      Integer.Sparse.eval targetPsiChild28_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 39) false) = canonicalInput32897.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32897 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 39) true) = canonicalInput30918.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30918 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_40 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 40 =
      Integer.Sparse.eval targetPsiChild28_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 40) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 40) true) = canonicalInput30914.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30914 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_41 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 41 =
      Integer.Sparse.eval targetPsiChild28_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 41) false) = canonicalInput33309.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33309 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 41) true) = canonicalInput30913.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30913 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_42 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 42 =
      Integer.Sparse.eval targetPsiChild28_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 42) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 42) true) = canonicalInput30910.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30910 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild28_43 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 28 43 =
      Integer.Sparse.eval targetPsiChild28_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 43) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 43) true) = canonicalInput30909.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30909 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_44 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 44 =
      Integer.Sparse.eval targetPsiChild28_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 44) false) = canonicalInput33755.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33755 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 44) true) = canonicalInput30907.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30907 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild28_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 28 45 =
      Integer.Sparse.eval targetPsiChild28_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 45) false) = canonicalInput32901.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32901 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 45) true) = canonicalInput30917.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30917 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild28_46 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 28 46 =
      Integer.Sparse.eval targetPsiChild28_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 46) false) = canonicalInput33310.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33310 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 46) true) = canonicalInput30912.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30912 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild28_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_47 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 47 =
      Integer.Sparse.eval targetPsiChild28_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 47) false) = canonicalInput33314.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33314 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 47) true) = canonicalInput30911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30911 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild28_48 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 28 48 =
      Integer.Sparse.eval targetPsiChild28_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 48) false) = canonicalInput33663.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33663 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 48) true) = canonicalInput30908.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30908 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild28_49 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 28 49 =
      Integer.Sparse.eval targetPsiChild28_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 49) false) = canonicalInput33756.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33756 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 49) true) = canonicalInput30906.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30906 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild28_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_50 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 50 =
      Integer.Sparse.eval targetPsiChild28_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 50) false) = canonicalInput33760.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33760 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 50) true) = canonicalInput30905.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30905 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild28_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 28 51 =
      Integer.Sparse.eval targetPsiChild28_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 51) false) = canonicalInput33887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33887 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 51) true) = canonicalInput30904.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30904 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild28_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_52 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 52 =
      Integer.Sparse.eval targetPsiChild28_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 52) false) = canonicalInput33892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33892 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 52) true) = canonicalInput30903.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30903 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild28_53 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 28 53 =
      Integer.Sparse.eval targetPsiChild28_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 53) false) = canonicalInput33896.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33896 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 53) true) = canonicalInput30902.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30902 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild28_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild28_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 28 54 =
      Integer.Sparse.eval targetPsiChild28_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 28) false - blockExponent (psiExponent 54) false) = canonicalInput33899.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33899 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 28) false + blockExponent (psiExponent 54) true) = canonicalInput30901.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 28) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30901 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild28_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow28Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow28 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 28) i) =
      Integer.Sparse.eval targetPsiRow28Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 360, 360, 20, 20, 360, 360, 45, 90, 45, 45, 360, 90, 45, 45, 20, 5, 45, 10, 90, 360, 120, 10, 360, 360, 20, 10, 45, 45, 360, 45, 45, 360, 45, 20, 120, 360, 360, 20, 360, 45, 45, 360, 45, 20, 120, 20, 360, 10, 90, 360, 120, 360, 360, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 28) i) =
      Integer.Sparse.eval (![targetPsiChild28_0Projection, targetPsiChild28_1Projection, targetPsiChild28_2Projection, targetPsiChild28_3Projection, targetPsiChild28_4Projection, targetPsiChild28_5Projection, targetPsiChild28_6Projection, targetPsiChild28_7Projection, targetPsiChild28_8Projection, targetPsiChild28_9Projection, targetPsiChild28_10Projection, targetPsiChild28_11Projection, targetPsiChild28_12Projection, targetPsiChild28_13Projection, targetPsiChild28_14Projection, targetPsiChild28_15Projection, targetPsiChild28_16Projection, targetPsiChild28_17Projection, targetPsiChild28_18Projection, targetPsiChild28_19Projection, targetPsiChild28_20Projection, targetPsiChild28_21Projection, targetPsiChild28_22Projection, targetPsiChild28_23Projection, targetPsiChild28_24Projection, targetPsiChild28_25Projection, targetPsiChild28_26Projection, targetPsiChild28_27Projection, targetPsiChild28_28Projection, targetPsiChild28_29Projection, targetPsiChild28_30Projection, targetPsiChild28_31Projection, targetPsiChild28_32Projection, targetPsiChild28_33Projection, targetPsiChild28_34Projection, targetPsiChild28_35Projection, targetPsiChild28_36Projection, targetPsiChild28_37Projection, targetPsiChild28_38Projection, targetPsiChild28_39Projection, targetPsiChild28_40Projection, targetPsiChild28_41Projection, targetPsiChild28_42Projection, targetPsiChild28_43Projection, targetPsiChild28_44Projection, targetPsiChild28_45Projection, targetPsiChild28_46Projection, targetPsiChild28_47Projection, targetPsiChild28_48Projection, targetPsiChild28_49Projection, targetPsiChild28_50Projection, targetPsiChild28_51Projection, targetPsiChild28_52Projection, targetPsiChild28_53Projection, targetPsiChild28_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild28_0 hH
    · exact targetPsiChild28_1 hH
    · exact targetPsiChild28_2 hH
    · exact targetPsiChild28_3 hH
    · exact targetPsiChild28_4 hH
    · exact targetPsiChild28_5 hH
    · exact targetPsiChild28_6 hH
    · exact targetPsiChild28_7 hH
    · exact targetPsiChild28_8 hH
    · exact targetPsiChild28_9 hH
    · exact targetPsiChild28_10 hH
    · exact targetPsiChild28_11 hH
    · exact targetPsiChild28_12 hH
    · exact targetPsiChild28_13 hH
    · exact targetPsiChild28_14 hH
    · exact targetPsiChild28_15 hH
    · exact targetPsiChild28_16 hH
    · exact targetPsiChild28_17 hH
    · exact targetPsiChild28_18 hH
    · exact targetPsiChild28_19 hH
    · exact targetPsiChild28_20 hH
    · exact targetPsiChild28_21 hH
    · exact targetPsiChild28_22 hH
    · exact targetPsiChild28_23 hH
    · exact targetPsiChild28_24 hH
    · exact targetPsiChild28_25 hH
    · exact targetPsiChild28_26 hH
    · exact targetPsiChild28_27 hH
    · exact targetPsiChild28_28 hH
    · exact targetPsiChild28_29 hH
    · exact targetPsiChild28_30 hH
    · exact targetPsiChild28_31 hH
    · exact targetPsiChild28_32 hH
    · exact targetPsiChild28_33 hH
    · exact targetPsiChild28_34 hH
    · exact targetPsiChild28_35 hH
    · exact targetPsiChild28_36 hH
    · exact targetPsiChild28_37 hH
    · exact targetPsiChild28_38 hH
    · exact targetPsiChild28_39 hH
    · exact targetPsiChild28_40 hH
    · exact targetPsiChild28_41 hH
    · exact targetPsiChild28_42 hH
    · exact targetPsiChild28_43 hH
    · exact targetPsiChild28_44 hH
    · exact targetPsiChild28_45 hH
    · exact targetPsiChild28_46 hH
    · exact targetPsiChild28_47 hH
    · exact targetPsiChild28_48 hH
    · exact targetPsiChild28_49 hH
    · exact targetPsiChild28_50 hH
    · exact targetPsiChild28_51 hH
    · exact targetPsiChild28_52 hH
    · exact targetPsiChild28_53 hH
    · exact targetPsiChild28_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 28) i) (targetPsiTerm H 28)
    (-1) 360 360 (-1) ![120, 360, 360, 20, 20, 360, 360, 45, 90, 45, 45, 360, 90, 45, 45, 20, 5, 45, 10, 90, 360, 120, 10, 360, 360, 20, 10, 45, 45, 360, 45, 45, 360, 45, 20, 120, 360, 360, 20, 360, 45, 45, 360, 45, 20, 120, 20, 360, 10, 90, 360, 120, 360, 360, 120] ![3, 1, 1, 18, 18, 1, 1, 8, 4, 8, 8, 1, 4, 8, 8, 18, 72, 8, 36, 4, 1, 3, 36, 1, 1, 18, 36, 8, 8, 1, 8, 8, 1, 8, 18, 3, 1, 1, 18, 1, 8, 8, 1, 8, 18, 3, 18, 1, 36, 4, 1, 3, 1, 1, 3] targetPsiRow28Projection ![targetPsiChild28_0Projection, targetPsiChild28_1Projection, targetPsiChild28_2Projection, targetPsiChild28_3Projection, targetPsiChild28_4Projection, targetPsiChild28_5Projection, targetPsiChild28_6Projection, targetPsiChild28_7Projection, targetPsiChild28_8Projection, targetPsiChild28_9Projection, targetPsiChild28_10Projection, targetPsiChild28_11Projection, targetPsiChild28_12Projection, targetPsiChild28_13Projection, targetPsiChild28_14Projection, targetPsiChild28_15Projection, targetPsiChild28_16Projection, targetPsiChild28_17Projection, targetPsiChild28_18Projection, targetPsiChild28_19Projection, targetPsiChild28_20Projection, targetPsiChild28_21Projection, targetPsiChild28_22Projection, targetPsiChild28_23Projection, targetPsiChild28_24Projection, targetPsiChild28_25Projection, targetPsiChild28_26Projection, targetPsiChild28_27Projection, targetPsiChild28_28Projection, targetPsiChild28_29Projection, targetPsiChild28_30Projection, targetPsiChild28_31Projection, targetPsiChild28_32Projection, targetPsiChild28_33Projection, targetPsiChild28_34Projection, targetPsiChild28_35Projection, targetPsiChild28_36Projection, targetPsiChild28_37Projection, targetPsiChild28_38Projection, targetPsiChild28_39Projection, targetPsiChild28_40Projection, targetPsiChild28_41Projection, targetPsiChild28_42Projection, targetPsiChild28_43Projection, targetPsiChild28_44Projection, targetPsiChild28_45Projection, targetPsiChild28_46Projection, targetPsiChild28_47Projection, targetPsiChild28_48Projection, targetPsiChild28_49Projection, targetPsiChild28_50Projection, targetPsiChild28_51Projection, targetPsiChild28_52Projection, targetPsiChild28_53Projection, targetPsiChild28_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

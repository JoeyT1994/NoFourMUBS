import NoFourMUBs.Step2.SOS.Canonical177
import NoFourMUBs.Step2.SOS.Canonical178
import NoFourMUBs.Step2.SOS.Canonical179
import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical477
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical479
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiChild16_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild16_0 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 16 0 =
      Integer.Sparse.eval targetPsiChild16_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 0) false) = canonicalInput11340.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11340 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 0) true) = canonicalInput30686.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30686 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild16_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_1 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 1 =
      Integer.Sparse.eval targetPsiChild16_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 1) false) = canonicalInput11441.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11441 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 1) true) = canonicalInput30685.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30685 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_2 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 2 =
      Integer.Sparse.eval targetPsiChild16_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 2) false) = canonicalInput21890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21890 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 2) true) = canonicalInput30645.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30645 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_3 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 3 =
      Integer.Sparse.eval targetPsiChild16_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 3) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 3) true) = canonicalInput30641.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30641 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_4 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 4 =
      Integer.Sparse.eval targetPsiChild16_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 4) false) = canonicalInput23034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23034 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 4) true) = canonicalInput30631.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30631 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_5 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 5 =
      Integer.Sparse.eval targetPsiChild16_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 5) false) = canonicalInput23127.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23127 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 5) true) = canonicalInput30627.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30627 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_6 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 6 =
      Integer.Sparse.eval targetPsiChild16_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 6) false) = canonicalInput11455.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11455 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 6) true) = canonicalInput30684.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30684 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_7 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 7 =
      Integer.Sparse.eval targetPsiChild16_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 7) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 7) true) = canonicalInput30644.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30644 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_8 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 8 =
      Integer.Sparse.eval targetPsiChild16_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 8) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 8) true) = canonicalInput30640.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30640 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_9 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 9 =
      Integer.Sparse.eval targetPsiChild16_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 9) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 9) true) = canonicalInput30630.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30630 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_10 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 10 =
      Integer.Sparse.eval targetPsiChild16_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 10) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 10) true) = canonicalInput30626.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30626 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_11 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 11 =
      Integer.Sparse.eval targetPsiChild16_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 11) false) = canonicalInput26951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26951 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 11) true) = canonicalInput30614.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30614 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_12 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 12 =
      Integer.Sparse.eval targetPsiChild16_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 12) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 12) true) = canonicalInput30612.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30612 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_13 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 13 =
      Integer.Sparse.eval targetPsiChild16_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 13) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 13) true) = canonicalInput30608.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30608 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_14 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 14 =
      Integer.Sparse.eval targetPsiChild16_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 14) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 14) true) = canonicalInput30606.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30606 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_15 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 15 =
      Integer.Sparse.eval targetPsiChild16_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 15) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 15) true) = canonicalInput30610.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30610 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection0)
    (Integer.Sparse.scale (-288) oldProjection0)

theorem targetPsiChild16_16 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 16 16 =
      Integer.Sparse.eval targetPsiChild16_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 16) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 16) true) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  change (1 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-288 : ℝ) * hh1

def targetPsiChild16_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_17 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 17 =
      Integer.Sparse.eval targetPsiChild16_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 17) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 17) true) = canonicalInput30603.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30603 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_18 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 18 =
      Integer.Sparse.eval targetPsiChild16_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 18) false) = canonicalInput32226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32226 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 18) true) = canonicalInput30601.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30601 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_19 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 19 =
      Integer.Sparse.eval targetPsiChild16_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 19) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 19) true) = canonicalInput30599.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30599 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_20 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 20 =
      Integer.Sparse.eval targetPsiChild16_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 20) false) = canonicalInput32384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32384 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 20) true) = canonicalInput30597.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30597 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild16_21 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 16 21 =
      Integer.Sparse.eval targetPsiChild16_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 21) false) = canonicalInput11463.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11463 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 21) true) = canonicalInput30683.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30683 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild16_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_22 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 22 =
      Integer.Sparse.eval targetPsiChild16_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 22) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 22) true) = canonicalInput30643.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30643 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_23 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 23 =
      Integer.Sparse.eval targetPsiChild16_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 23) false) = canonicalInput22139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22139 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 23) true) = canonicalInput30639.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30639 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_24 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 24 =
      Integer.Sparse.eval targetPsiChild16_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 24) false) = canonicalInput23124.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23124 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 24) true) = canonicalInput30629.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30629 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_25 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 25 =
      Integer.Sparse.eval targetPsiChild16_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 25) false) = canonicalInput23221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23221 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 25) true) = canonicalInput30625.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30625 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_26 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 26 =
      Integer.Sparse.eval targetPsiChild16_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 26) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 26) true) = canonicalInput30613.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30613 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_27 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 27 =
      Integer.Sparse.eval targetPsiChild16_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 27) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 27) true) = canonicalInput30611.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30611 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_28 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 28 =
      Integer.Sparse.eval targetPsiChild16_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 28) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 28) true) = canonicalInput30607.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30607 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_29 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 29 =
      Integer.Sparse.eval targetPsiChild16_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 29) false) = canonicalInput27324.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27324 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 29) true) = canonicalInput30609.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30609 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_30 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 30 =
      Integer.Sparse.eval targetPsiChild16_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 30) false) = canonicalInput30861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30861 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 30) true) = canonicalInput30604.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30604 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_31 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 31 =
      Integer.Sparse.eval targetPsiChild16_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 31) false) = canonicalInput30991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30991 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 31) true) = canonicalInput30602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30602 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_32 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 32 =
      Integer.Sparse.eval targetPsiChild16_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 32) false) = canonicalInput32255.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32255 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 32) true) = canonicalInput30600.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30600 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_33 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 33 =
      Integer.Sparse.eval targetPsiChild16_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 33) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 33) true) = canonicalInput30598.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30598 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_34 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 34 =
      Integer.Sparse.eval targetPsiChild16_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 34) false) = canonicalInput32417.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32417 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 34) true) = canonicalInput30596.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30596 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild16_35 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 16 35 =
      Integer.Sparse.eval targetPsiChild16_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 35) false) = canonicalInput32883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32883 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 35) true) = canonicalInput30595.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30595 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild16_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_36 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 36 =
      Integer.Sparse.eval targetPsiChild16_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 36) false) = canonicalInput32888.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32888 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 36) true) = canonicalInput30594.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30594 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_37 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 37 =
      Integer.Sparse.eval targetPsiChild16_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 37) false) = canonicalInput32933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32933 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 37) true) = canonicalInput30591.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30591 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_38 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 38 =
      Integer.Sparse.eval targetPsiChild16_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 38) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 38) true) = canonicalInput30590.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30590 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_39 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 39 =
      Integer.Sparse.eval targetPsiChild16_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 39) false) = canonicalInput32893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32893 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 39) true) = canonicalInput30593.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30593 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_40 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 40 =
      Integer.Sparse.eval targetPsiChild16_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 40) false) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 40) true) = canonicalInput30589.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30589 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_41 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 41 =
      Integer.Sparse.eval targetPsiChild16_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 41) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 41) true) = canonicalInput30588.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30588 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_42 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 42 =
      Integer.Sparse.eval targetPsiChild16_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 42) false) = canonicalInput33379.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33379 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 42) true) = canonicalInput30585.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30585 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_43 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 43 =
      Integer.Sparse.eval targetPsiChild16_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 43) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 43) true) = canonicalInput30584.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30584 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_44 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 44 =
      Integer.Sparse.eval targetPsiChild16_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 44) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 44) true) = canonicalInput30582.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30582 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild16_45 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 16 45 =
      Integer.Sparse.eval targetPsiChild16_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 45) false) = canonicalInput32898.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32898 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 45) true) = canonicalInput30592.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30592 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild16_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_46 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 46 =
      Integer.Sparse.eval targetPsiChild16_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 46) false) = canonicalInput33277.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33277 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 46) true) = canonicalInput30587.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30587 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_47 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 47 =
      Integer.Sparse.eval targetPsiChild16_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 47) false) = canonicalInput33310.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33310 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 47) true) = canonicalInput30586.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30586 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild16_48 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 48 =
      Integer.Sparse.eval targetPsiChild16_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 48) false) = canonicalInput33537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33537 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 48) true) = canonicalInput30583.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30583 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild16_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild16_49 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 16 49 =
      Integer.Sparse.eval targetPsiChild16_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 49) false) = canonicalInput33663.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33663 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 49) true) = canonicalInput30581.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30581 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild16_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_50 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 50 =
      Integer.Sparse.eval targetPsiChild16_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 50) false) = canonicalInput33756.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33756 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 50) true) = canonicalInput30580.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30580 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild16_51 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 16 51 =
      Integer.Sparse.eval targetPsiChild16_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 51) false) = canonicalInput33883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33883 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 51) true) = canonicalInput30579.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30579 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild16_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_52 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 52 =
      Integer.Sparse.eval targetPsiChild16_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 52) false) = canonicalInput33887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33887 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 52) true) = canonicalInput30578.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30578 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild16_53 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 16 53 =
      Integer.Sparse.eval targetPsiChild16_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 53) false) = canonicalInput33892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33892 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 53) true) = canonicalInput30577.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30577 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild16_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild16_54 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 16 54 =
      Integer.Sparse.eval targetPsiChild16_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 16) false - blockExponent (psiExponent 54) false) = canonicalInput33896.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33896 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 16) false + blockExponent (psiExponent 54) true) = canonicalInput30576.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 16) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound30576 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((12 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild16_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiRow16Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow16 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 16) i) =
      Integer.Sparse.eval targetPsiRow16Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![1, 10, 10, 5, 5, 10, 10, 5, 5, 5, 5, 10, 5, 5, 5, 5, 1, 5, 5, 5, 10, 1, 5, 10, 10, 5, 5, 5, 5, 10, 5, 5, 10, 5, 5, 1, 10, 10, 5, 10, 5, 5, 10, 5, 5, 1, 5, 10, 5, 5, 10, 1, 10, 10, 1] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 16) i) =
      Integer.Sparse.eval (![targetPsiChild16_0Projection, targetPsiChild16_1Projection, targetPsiChild16_2Projection, targetPsiChild16_3Projection, targetPsiChild16_4Projection, targetPsiChild16_5Projection, targetPsiChild16_6Projection, targetPsiChild16_7Projection, targetPsiChild16_8Projection, targetPsiChild16_9Projection, targetPsiChild16_10Projection, targetPsiChild16_11Projection, targetPsiChild16_12Projection, targetPsiChild16_13Projection, targetPsiChild16_14Projection, targetPsiChild16_15Projection, targetPsiChild16_16Projection, targetPsiChild16_17Projection, targetPsiChild16_18Projection, targetPsiChild16_19Projection, targetPsiChild16_20Projection, targetPsiChild16_21Projection, targetPsiChild16_22Projection, targetPsiChild16_23Projection, targetPsiChild16_24Projection, targetPsiChild16_25Projection, targetPsiChild16_26Projection, targetPsiChild16_27Projection, targetPsiChild16_28Projection, targetPsiChild16_29Projection, targetPsiChild16_30Projection, targetPsiChild16_31Projection, targetPsiChild16_32Projection, targetPsiChild16_33Projection, targetPsiChild16_34Projection, targetPsiChild16_35Projection, targetPsiChild16_36Projection, targetPsiChild16_37Projection, targetPsiChild16_38Projection, targetPsiChild16_39Projection, targetPsiChild16_40Projection, targetPsiChild16_41Projection, targetPsiChild16_42Projection, targetPsiChild16_43Projection, targetPsiChild16_44Projection, targetPsiChild16_45Projection, targetPsiChild16_46Projection, targetPsiChild16_47Projection, targetPsiChild16_48Projection, targetPsiChild16_49Projection, targetPsiChild16_50Projection, targetPsiChild16_51Projection, targetPsiChild16_52Projection, targetPsiChild16_53Projection, targetPsiChild16_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 16) 0) =
        Integer.Sparse.eval targetPsiChild16_0Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild16_0 hH
    · exact targetPsiChild16_1 hH
    · exact targetPsiChild16_2 hH
    · exact targetPsiChild16_3 hH
    · exact targetPsiChild16_4 hH
    · exact targetPsiChild16_5 hH
    · exact targetPsiChild16_6 hH
    · exact targetPsiChild16_7 hH
    · exact targetPsiChild16_8 hH
    · exact targetPsiChild16_9 hH
    · exact targetPsiChild16_10 hH
    · exact targetPsiChild16_11 hH
    · exact targetPsiChild16_12 hH
    · exact targetPsiChild16_13 hH
    · exact targetPsiChild16_14 hH
    · exact targetPsiChild16_15 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 16) 16) =
        Integer.Sparse.eval targetPsiChild16_16Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild16_16 hH
    · exact targetPsiChild16_17 hH
    · exact targetPsiChild16_18 hH
    · exact targetPsiChild16_19 hH
    · exact targetPsiChild16_20 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 16) 21) =
        Integer.Sparse.eval targetPsiChild16_21Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild16_21 hH
    · exact targetPsiChild16_22 hH
    · exact targetPsiChild16_23 hH
    · exact targetPsiChild16_24 hH
    · exact targetPsiChild16_25 hH
    · exact targetPsiChild16_26 hH
    · exact targetPsiChild16_27 hH
    · exact targetPsiChild16_28 hH
    · exact targetPsiChild16_29 hH
    · exact targetPsiChild16_30 hH
    · exact targetPsiChild16_31 hH
    · exact targetPsiChild16_32 hH
    · exact targetPsiChild16_33 hH
    · exact targetPsiChild16_34 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 16) 35) =
        Integer.Sparse.eval targetPsiChild16_35Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild16_35 hH
    · exact targetPsiChild16_36 hH
    · exact targetPsiChild16_37 hH
    · exact targetPsiChild16_38 hH
    · exact targetPsiChild16_39 hH
    · exact targetPsiChild16_40 hH
    · exact targetPsiChild16_41 hH
    · exact targetPsiChild16_42 hH
    · exact targetPsiChild16_43 hH
    · exact targetPsiChild16_44 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 16) 45) =
        Integer.Sparse.eval targetPsiChild16_45Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild16_45 hH
    · exact targetPsiChild16_46 hH
    · exact targetPsiChild16_47 hH
    · exact targetPsiChild16_48 hH
    · exact targetPsiChild16_49 hH
    · exact targetPsiChild16_50 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 16) 51) =
        Integer.Sparse.eval targetPsiChild16_51Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild16_51 hH
    · exact targetPsiChild16_52 hH
    · exact targetPsiChild16_53 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 16) 54) =
        Integer.Sparse.eval targetPsiChild16_54Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild16_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 16) i) (targetPsiTerm H 16)
    (-1) 10 10 (-1) ![1, 10, 10, 5, 5, 10, 10, 5, 5, 5, 5, 10, 5, 5, 5, 5, 1, 5, 5, 5, 10, 1, 5, 10, 10, 5, 5, 5, 5, 10, 5, 5, 10, 5, 5, 1, 10, 10, 5, 10, 5, 5, 10, 5, 5, 1, 5, 10, 5, 5, 10, 1, 10, 10, 1] ![10, 1, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 10, 2, 2, 2, 1, 10, 2, 1, 1, 2, 2, 2, 2, 1, 2, 2, 1, 2, 2, 10, 1, 1, 2, 1, 2, 2, 1, 2, 2, 10, 2, 1, 2, 2, 1, 10, 1, 1, 10] targetPsiRow16Projection ![targetPsiChild16_0Projection, targetPsiChild16_1Projection, targetPsiChild16_2Projection, targetPsiChild16_3Projection, targetPsiChild16_4Projection, targetPsiChild16_5Projection, targetPsiChild16_6Projection, targetPsiChild16_7Projection, targetPsiChild16_8Projection, targetPsiChild16_9Projection, targetPsiChild16_10Projection, targetPsiChild16_11Projection, targetPsiChild16_12Projection, targetPsiChild16_13Projection, targetPsiChild16_14Projection, targetPsiChild16_15Projection, targetPsiChild16_16Projection, targetPsiChild16_17Projection, targetPsiChild16_18Projection, targetPsiChild16_19Projection, targetPsiChild16_20Projection, targetPsiChild16_21Projection, targetPsiChild16_22Projection, targetPsiChild16_23Projection, targetPsiChild16_24Projection, targetPsiChild16_25Projection, targetPsiChild16_26Projection, targetPsiChild16_27Projection, targetPsiChild16_28Projection, targetPsiChild16_29Projection, targetPsiChild16_30Projection, targetPsiChild16_31Projection, targetPsiChild16_32Projection, targetPsiChild16_33Projection, targetPsiChild16_34Projection, targetPsiChild16_35Projection, targetPsiChild16_36Projection, targetPsiChild16_37Projection, targetPsiChild16_38Projection, targetPsiChild16_39Projection, targetPsiChild16_40Projection, targetPsiChild16_41Projection, targetPsiChild16_42Projection, targetPsiChild16_43Projection, targetPsiChild16_44Projection, targetPsiChild16_45Projection, targetPsiChild16_46Projection, targetPsiChild16_47Projection, targetPsiChild16_48Projection, targetPsiChild16_49Projection, targetPsiChild16_50Projection, targetPsiChild16_51Projection, targetPsiChild16_52Projection, targetPsiChild16_53Projection, targetPsiChild16_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

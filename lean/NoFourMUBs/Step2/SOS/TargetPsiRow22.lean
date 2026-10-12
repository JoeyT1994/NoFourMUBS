import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical518
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical522
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.Canonical531
import NoFourMUBs.Step2.SOS.Canonical532
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

def targetPsiChild22_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild22_0 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 0 =
      Integer.Sparse.eval targetPsiChild22_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 0) false) = canonicalInput23126.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23126 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 0) true) = canonicalInput33627.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33627 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild22_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_1 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 1 =
      Integer.Sparse.eval targetPsiChild22_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 1) false) = canonicalInput23127.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23127 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 1) true) = canonicalInput33626.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33626 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild22_2 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 22 2 =
      Integer.Sparse.eval targetPsiChild22_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 2) false) = canonicalInput30374.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30374 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 2) true) = canonicalInput33623.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33623 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 3 =
      Integer.Sparse.eval targetPsiChild22_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 3) false) = canonicalInput30893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30893 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 3) true) = canonicalInput33620.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33620 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 4 =
      Integer.Sparse.eval targetPsiChild22_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 4) false) = canonicalInput32258.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32258 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 4) true) = canonicalInput33617.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33617 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_5 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 5 =
      Integer.Sparse.eval targetPsiChild22_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 5) false) = canonicalInput32383.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32383 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 5) true) = canonicalInput33614.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33614 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_6 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 6 =
      Integer.Sparse.eval targetPsiChild22_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 6) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 6) true) = canonicalInput33625.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33625 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild22_7 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 22 7 =
      Integer.Sparse.eval targetPsiChild22_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 7) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 7) true) = canonicalInput33622.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33622 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild22_8 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 22 8 =
      Integer.Sparse.eval targetPsiChild22_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 8) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 8) true) = canonicalInput33619.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33619 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild22_9 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 22 9 =
      Integer.Sparse.eval targetPsiChild22_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 9) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 9) true) = canonicalInput33616.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33616 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_10 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 10 =
      Integer.Sparse.eval targetPsiChild22_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 10) false) = canonicalInput32384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32384 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 10) true) = canonicalInput33613.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33613 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_11 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 11 =
      Integer.Sparse.eval targetPsiChild22_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 11) false) = canonicalInput32937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32937 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 11) true) = canonicalInput33611.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33611 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_12 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 12 =
      Integer.Sparse.eval targetPsiChild22_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 12) false) = canonicalInput33155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33155 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 12) true) = canonicalInput33609.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33609 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_13 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 13 =
      Integer.Sparse.eval targetPsiChild22_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 13) false) = canonicalInput33415.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33415 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 13) true) = canonicalInput33605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33605 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_14 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 14 =
      Integer.Sparse.eval targetPsiChild22_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 14) false) = canonicalInput33569.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33569 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 14) true) = canonicalInput33603.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33603 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 15 =
      Integer.Sparse.eval targetPsiChild22_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 15) false) = canonicalInput33309.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33309 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 15) true) = canonicalInput33607.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33607 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild22_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 22 16 =
      Integer.Sparse.eval targetPsiChild22_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 16) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 16) true) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild22_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_17 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 17 =
      Integer.Sparse.eval targetPsiChild22_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 17) false) = canonicalInput33755.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33755 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 17) true) = canonicalInput33600.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33600 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_18 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 18 =
      Integer.Sparse.eval targetPsiChild22_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 18) false) = canonicalInput33886.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33886 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 18) true) = canonicalInput33598.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33598 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_19 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 19 =
      Integer.Sparse.eval targetPsiChild22_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 19) false) = canonicalInput33891.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33891 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 19) true) = canonicalInput33596.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33596 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild22_20 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 22 20 =
      Integer.Sparse.eval targetPsiChild22_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 20) false) = canonicalInput33895.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33895 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 20) true) = canonicalInput33594.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33594 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild22_21 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 21 =
      Integer.Sparse.eval targetPsiChild22_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 21) false) = canonicalInput23221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23221 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 21) true) = canonicalInput33624.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33624 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild22_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection0)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild22_22 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 22 22 =
      Integer.Sparse.eval targetPsiChild22_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 22) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 22) true) = canonicalInput33621.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33621 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild22_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_23 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 23 =
      Integer.Sparse.eval targetPsiChild22_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 23) false) = canonicalInput30991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30991 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 23) true) = canonicalInput33618.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33618 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_24 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 24 =
      Integer.Sparse.eval targetPsiChild22_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 24) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 24) true) = canonicalInput33615.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33615 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_25 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 25 =
      Integer.Sparse.eval targetPsiChild22_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 25) false) = canonicalInput32417.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32417 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 25) true) = canonicalInput33612.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33612 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_26 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 26 =
      Integer.Sparse.eval targetPsiChild22_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 26) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 26) true) = canonicalInput33610.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33610 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild22_27 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 22 27 =
      Integer.Sparse.eval targetPsiChild22_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 27) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 27) true) = canonicalInput33608.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33608 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild22_28 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 22 28 =
      Integer.Sparse.eval targetPsiChild22_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 28) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 28) true) = canonicalInput33604.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33604 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_29 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 29 =
      Integer.Sparse.eval targetPsiChild22_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 29) false) = canonicalInput33310.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33310 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 29) true) = canonicalInput33606.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33606 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild22_30 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 22 30 =
      Integer.Sparse.eval targetPsiChild22_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 30) false) = canonicalInput33663.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33663 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 30) true) = canonicalInput33601.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33601 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_31 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 31 =
      Integer.Sparse.eval targetPsiChild22_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 31) false) = canonicalInput33756.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33756 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 31) true) = canonicalInput33599.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33599 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_32 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 32 =
      Integer.Sparse.eval targetPsiChild22_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 32) false) = canonicalInput33887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33887 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 32) true) = canonicalInput33597.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33597 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_33 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 33 =
      Integer.Sparse.eval targetPsiChild22_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 33) false) = canonicalInput33892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33892 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 33) true) = canonicalInput33595.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33595 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild22_34 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 22 34 =
      Integer.Sparse.eval targetPsiChild22_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 34) false) = canonicalInput33896.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33896 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 34) true) = canonicalInput33593.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33593 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild22_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild22_35 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 35 =
      Integer.Sparse.eval targetPsiChild22_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 35) false) = canonicalInput33957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33957 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 35) true) = canonicalInput33592.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33592 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild22_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_36 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 36 =
      Integer.Sparse.eval targetPsiChild22_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 36) false) = canonicalInput33962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33962 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 36) true) = canonicalInput33591.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33591 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_37 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 37 =
      Integer.Sparse.eval targetPsiChild22_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 37) false) = canonicalInput33980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33980 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 37) true) = canonicalInput33588.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33588 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild22_38 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 22 38 =
      Integer.Sparse.eval targetPsiChild22_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 38) false) = canonicalInput34017.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34017 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 38) true) = canonicalInput33587.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33587 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild22_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild22_39 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 22 39 =
      Integer.Sparse.eval targetPsiChild22_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 39) false) = canonicalInput33967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33967 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 39) true) = canonicalInput33590.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33590 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_40 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 40 =
      Integer.Sparse.eval targetPsiChild22_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 40) false) = canonicalInput34078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34078 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 40) true) = canonicalInput33586.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33586 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_41 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 41 =
      Integer.Sparse.eval targetPsiChild22_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 41) false) = canonicalInput34231.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34231 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 41) true) = canonicalInput33585.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33585 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild22_42 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 22 42 =
      Integer.Sparse.eval targetPsiChild22_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 42) false) = canonicalInput34269.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34269 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 42) true) = canonicalInput33582.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33582 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_43 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 43 =
      Integer.Sparse.eval targetPsiChild22_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 43) false) = canonicalInput34274.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34274 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 43) true) = canonicalInput33581.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33581 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection41)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild22_44 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 22 44 =
      Integer.Sparse.eval targetPsiChild22_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 44) false) = canonicalInput34279.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34279 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 44) true) = canonicalInput33579.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33579 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild22_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild22_45 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 45 =
      Integer.Sparse.eval targetPsiChild22_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 45) false) = canonicalInput33972.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33972 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 45) true) = canonicalInput33589.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33589 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild22_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_46 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 46 =
      Integer.Sparse.eval targetPsiChild22_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 46) false) = canonicalInput34232.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34232 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 46) true) = canonicalInput33584.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33584 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_47 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 47 =
      Integer.Sparse.eval targetPsiChild22_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 47) false) = canonicalInput34236.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34236 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 47) true) = canonicalInput33583.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33583 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild22_48 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 48 =
      Integer.Sparse.eval targetPsiChild22_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 48) false) = canonicalInput34275.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34275 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 48) true) = canonicalInput33580.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33580 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild22_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild22_49 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 22 49 =
      Integer.Sparse.eval targetPsiChild22_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 49) false) = canonicalInput34280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34280 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 49) true) = canonicalInput33578.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33578 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild22_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild22_50 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 22 50 =
      Integer.Sparse.eval targetPsiChild22_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 50) false) = canonicalInput34284.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34284 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 50) true) = canonicalInput33577.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33577 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild22_51 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 51 =
      Integer.Sparse.eval targetPsiChild22_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 51) false) = canonicalInput34313.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34313 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 51) true) = canonicalInput33576.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33576 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild22_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild22_52 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 52 =
      Integer.Sparse.eval targetPsiChild22_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 52) false) = canonicalInput34317.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34317 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 52) true) = canonicalInput33575.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33575 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild22_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild22_53 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 22 53 =
      Integer.Sparse.eval targetPsiChild22_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 53) false) = canonicalInput34321.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34321 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 53) true) = canonicalInput33574.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33574 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild22_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild22_54 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 22 54 =
      Integer.Sparse.eval targetPsiChild22_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 22) false - blockExponent (psiExponent 54) false) = canonicalInput34324.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34324 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 22) false + blockExponent (psiExponent 54) true) = canonicalInput33573.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 22) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33573 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild22_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow22Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 22) i) =
      Integer.Sparse.eval targetPsiRow22Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![80, 80, 16, 20, 20, 80, 80, 10, 10, 10, 20, 80, 20, 20, 20, 20, 5, 20, 20, 20, 16, 80, 4, 80, 80, 20, 20, 10, 10, 80, 10, 20, 80, 20, 4, 80, 80, 80, 4, 16, 20, 20, 16, 20, 4, 80, 20, 80, 20, 20, 16, 80, 80, 16, 80] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 22) i) =
      Integer.Sparse.eval (![targetPsiChild22_0Projection, targetPsiChild22_1Projection, targetPsiChild22_2Projection, targetPsiChild22_3Projection, targetPsiChild22_4Projection, targetPsiChild22_5Projection, targetPsiChild22_6Projection, targetPsiChild22_7Projection, targetPsiChild22_8Projection, targetPsiChild22_9Projection, targetPsiChild22_10Projection, targetPsiChild22_11Projection, targetPsiChild22_12Projection, targetPsiChild22_13Projection, targetPsiChild22_14Projection, targetPsiChild22_15Projection, targetPsiChild22_16Projection, targetPsiChild22_17Projection, targetPsiChild22_18Projection, targetPsiChild22_19Projection, targetPsiChild22_20Projection, targetPsiChild22_21Projection, targetPsiChild22_22Projection, targetPsiChild22_23Projection, targetPsiChild22_24Projection, targetPsiChild22_25Projection, targetPsiChild22_26Projection, targetPsiChild22_27Projection, targetPsiChild22_28Projection, targetPsiChild22_29Projection, targetPsiChild22_30Projection, targetPsiChild22_31Projection, targetPsiChild22_32Projection, targetPsiChild22_33Projection, targetPsiChild22_34Projection, targetPsiChild22_35Projection, targetPsiChild22_36Projection, targetPsiChild22_37Projection, targetPsiChild22_38Projection, targetPsiChild22_39Projection, targetPsiChild22_40Projection, targetPsiChild22_41Projection, targetPsiChild22_42Projection, targetPsiChild22_43Projection, targetPsiChild22_44Projection, targetPsiChild22_45Projection, targetPsiChild22_46Projection, targetPsiChild22_47Projection, targetPsiChild22_48Projection, targetPsiChild22_49Projection, targetPsiChild22_50Projection, targetPsiChild22_51Projection, targetPsiChild22_52Projection, targetPsiChild22_53Projection, targetPsiChild22_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild22_0 hH
    · exact targetPsiChild22_1 hH
    · exact targetPsiChild22_2 hH
    · exact targetPsiChild22_3 hH
    · exact targetPsiChild22_4 hH
    · exact targetPsiChild22_5 hH
    · exact targetPsiChild22_6 hH
    · exact targetPsiChild22_7 hH
    · exact targetPsiChild22_8 hH
    · exact targetPsiChild22_9 hH
    · exact targetPsiChild22_10 hH
    · exact targetPsiChild22_11 hH
    · exact targetPsiChild22_12 hH
    · exact targetPsiChild22_13 hH
    · exact targetPsiChild22_14 hH
    · exact targetPsiChild22_15 hH
    · exact targetPsiChild22_16 hH
    · exact targetPsiChild22_17 hH
    · exact targetPsiChild22_18 hH
    · exact targetPsiChild22_19 hH
    · exact targetPsiChild22_20 hH
    · exact targetPsiChild22_21 hH
    · exact targetPsiChild22_22 hH
    · exact targetPsiChild22_23 hH
    · exact targetPsiChild22_24 hH
    · exact targetPsiChild22_25 hH
    · exact targetPsiChild22_26 hH
    · exact targetPsiChild22_27 hH
    · exact targetPsiChild22_28 hH
    · exact targetPsiChild22_29 hH
    · exact targetPsiChild22_30 hH
    · exact targetPsiChild22_31 hH
    · exact targetPsiChild22_32 hH
    · exact targetPsiChild22_33 hH
    · exact targetPsiChild22_34 hH
    · exact targetPsiChild22_35 hH
    · exact targetPsiChild22_36 hH
    · exact targetPsiChild22_37 hH
    · exact targetPsiChild22_38 hH
    · exact targetPsiChild22_39 hH
    · exact targetPsiChild22_40 hH
    · exact targetPsiChild22_41 hH
    · exact targetPsiChild22_42 hH
    · exact targetPsiChild22_43 hH
    · exact targetPsiChild22_44 hH
    · exact targetPsiChild22_45 hH
    · exact targetPsiChild22_46 hH
    · exact targetPsiChild22_47 hH
    · exact targetPsiChild22_48 hH
    · exact targetPsiChild22_49 hH
    · exact targetPsiChild22_50 hH
    · exact targetPsiChild22_51 hH
    · exact targetPsiChild22_52 hH
    · exact targetPsiChild22_53 hH
    · exact targetPsiChild22_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 22) i) (targetPsiTerm H 22)
    (-1) 80 80 (-1) ![80, 80, 16, 20, 20, 80, 80, 10, 10, 10, 20, 80, 20, 20, 20, 20, 5, 20, 20, 20, 16, 80, 4, 80, 80, 20, 20, 10, 10, 80, 10, 20, 80, 20, 4, 80, 80, 80, 4, 16, 20, 20, 16, 20, 4, 80, 20, 80, 20, 20, 16, 80, 80, 16, 80] ![1, 1, 5, 4, 4, 1, 1, 8, 8, 8, 4, 1, 4, 4, 4, 4, 16, 4, 4, 4, 5, 1, 20, 1, 1, 4, 4, 8, 8, 1, 8, 4, 1, 4, 20, 1, 1, 1, 20, 5, 4, 4, 5, 4, 20, 1, 4, 1, 4, 4, 5, 1, 1, 5, 1] targetPsiRow22Projection ![targetPsiChild22_0Projection, targetPsiChild22_1Projection, targetPsiChild22_2Projection, targetPsiChild22_3Projection, targetPsiChild22_4Projection, targetPsiChild22_5Projection, targetPsiChild22_6Projection, targetPsiChild22_7Projection, targetPsiChild22_8Projection, targetPsiChild22_9Projection, targetPsiChild22_10Projection, targetPsiChild22_11Projection, targetPsiChild22_12Projection, targetPsiChild22_13Projection, targetPsiChild22_14Projection, targetPsiChild22_15Projection, targetPsiChild22_16Projection, targetPsiChild22_17Projection, targetPsiChild22_18Projection, targetPsiChild22_19Projection, targetPsiChild22_20Projection, targetPsiChild22_21Projection, targetPsiChild22_22Projection, targetPsiChild22_23Projection, targetPsiChild22_24Projection, targetPsiChild22_25Projection, targetPsiChild22_26Projection, targetPsiChild22_27Projection, targetPsiChild22_28Projection, targetPsiChild22_29Projection, targetPsiChild22_30Projection, targetPsiChild22_31Projection, targetPsiChild22_32Projection, targetPsiChild22_33Projection, targetPsiChild22_34Projection, targetPsiChild22_35Projection, targetPsiChild22_36Projection, targetPsiChild22_37Projection, targetPsiChild22_38Projection, targetPsiChild22_39Projection, targetPsiChild22_40Projection, targetPsiChild22_41Projection, targetPsiChild22_42Projection, targetPsiChild22_43Projection, targetPsiChild22_44Projection, targetPsiChild22_45Projection, targetPsiChild22_46Projection, targetPsiChild22_47Projection, targetPsiChild22_48Projection, targetPsiChild22_49Projection, targetPsiChild22_50Projection, targetPsiChild22_51Projection, targetPsiChild22_52Projection, targetPsiChild22_53Projection, targetPsiChild22_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

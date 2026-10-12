import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical367
import NoFourMUBs.Step2.SOS.Canonical368
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical502
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical522
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions349
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiChild29_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild29_0 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 29 0 =
      Integer.Sparse.eval targetPsiChild29_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 0) false) = canonicalInput12196.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12196 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 0) true) = canonicalInput32190.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32190 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_1 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 1 =
      Integer.Sparse.eval targetPsiChild29_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 1) false) = canonicalInput12197.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12197 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 1) true) = canonicalInput32189.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32189 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_2 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 2 =
      Integer.Sparse.eval targetPsiChild29_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 2) false) = canonicalInput22935.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22935 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 2) true) = canonicalInput32186.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32186 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 3 =
      Integer.Sparse.eval targetPsiChild29_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 3) false) = canonicalInput23001.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23001 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 3) true) = canonicalInput32183.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32183 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild29_4 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 29 4 =
      Integer.Sparse.eval targetPsiChild29_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 4) false) = canonicalInput23492.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23492 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 4) true) = canonicalInput32180.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32180 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_5 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 5 =
      Integer.Sparse.eval targetPsiChild29_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 5) false) = canonicalInput23557.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23557 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 5) true) = canonicalInput32177.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32177 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_6 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 6 =
      Integer.Sparse.eval targetPsiChild29_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 6) false) = canonicalInput12198.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12198 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 6) true) = canonicalInput32188.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32188 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_7 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 7 =
      Integer.Sparse.eval targetPsiChild29_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 7) false) = canonicalInput22936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22936 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 7) true) = canonicalInput32185.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32185 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_8 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 8 =
      Integer.Sparse.eval targetPsiChild29_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 8) false) = canonicalInput23034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23034 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 8) true) = canonicalInput32182.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32182 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_9 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 9 =
      Integer.Sparse.eval targetPsiChild29_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 9) false) = canonicalInput23526.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23526 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 9) true) = canonicalInput32179.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32179 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_10 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 10 =
      Integer.Sparse.eval targetPsiChild29_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 10) false) = canonicalInput23558.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23558 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 10) true) = canonicalInput32176.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32176 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_11 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 11 =
      Integer.Sparse.eval targetPsiChild29_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 11) false) = canonicalInput30241.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30241 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 11) true) = canonicalInput32174.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32174 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_12 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 12 =
      Integer.Sparse.eval targetPsiChild29_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 12) false) = canonicalInput30247.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30247 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 12) true) = canonicalInput32172.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32172 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_13 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 13 =
      Integer.Sparse.eval targetPsiChild29_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 13) false) = canonicalInput32128.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32128 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 13) true) = canonicalInput32168.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32168 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_14 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 14 =
      Integer.Sparse.eval targetPsiChild29_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 14) false) = canonicalInput32132.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32132 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 14) true) = canonicalInput32166.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32166 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_15 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 15 =
      Integer.Sparse.eval targetPsiChild29_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 15) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 15) true) = canonicalInput32170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32170 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild29_16 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 29 16 =
      Integer.Sparse.eval targetPsiChild29_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 16) false) = canonicalInput32165.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32165 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 16) true) = canonicalInput32165.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32165 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild29_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_17 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 17 =
      Integer.Sparse.eval targetPsiChild29_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 17) false) = canonicalInput32258.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32258 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 17) true) = canonicalInput32163.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32163 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild29_18 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 29 18 =
      Integer.Sparse.eval targetPsiChild29_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 18) false) = canonicalInput32792.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32792 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 18) true) = canonicalInput32161.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32161 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_19 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 19 =
      Integer.Sparse.eval targetPsiChild29_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 19) false) = canonicalInput32795.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32795 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 19) true) = canonicalInput32159.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32159 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_20 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 20 =
      Integer.Sparse.eval targetPsiChild29_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 20) false) = canonicalInput32799.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32799 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 20) true) = canonicalInput32157.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32157 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild29_21 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 29 21 =
      Integer.Sparse.eval targetPsiChild29_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 21) false) = canonicalInput12199.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12199 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 21) true) = canonicalInput32187.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32187 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 22 =
      Integer.Sparse.eval targetPsiChild29_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 22) false) = canonicalInput22969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22969 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 22) true) = canonicalInput32184.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32184 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (576) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_23 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 23 =
      Integer.Sparse.eval targetPsiChild29_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 23) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 23) true) = canonicalInput32181.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32181 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (576 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_24 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 24 =
      Integer.Sparse.eval targetPsiChild29_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 24) false) = canonicalInput23555.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23555 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 24) true) = canonicalInput32178.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32178 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 25 =
      Integer.Sparse.eval targetPsiChild29_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 25) false) = canonicalInput23591.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23591 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 25) true) = canonicalInput32175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32175 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild29_26 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 29 26 =
      Integer.Sparse.eval targetPsiChild29_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 26) false) = canonicalInput30242.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30242 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 26) true) = canonicalInput32173.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32173 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_27 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 27 =
      Integer.Sparse.eval targetPsiChild29_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 27) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 27) true) = canonicalInput32171.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32171 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_28 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 28 =
      Integer.Sparse.eval targetPsiChild29_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 28) false) = canonicalInput32129.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32129 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 28) true) = canonicalInput32167.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32167 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_29 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 29 =
      Integer.Sparse.eval targetPsiChild29_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 29) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 29) true) = canonicalInput32169.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32169 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_30 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 30 =
      Integer.Sparse.eval targetPsiChild29_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 30) false) = canonicalInput32226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32226 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 30) true) = canonicalInput32164.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32164 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_31 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 31 =
      Integer.Sparse.eval targetPsiChild29_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 31) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 31) true) = canonicalInput32162.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32162 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_32 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 32 =
      Integer.Sparse.eval targetPsiChild29_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 32) false) = canonicalInput32793.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32793 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 32) true) = canonicalInput32160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32160 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_33 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 33 =
      Integer.Sparse.eval targetPsiChild29_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 33) false) = canonicalInput32796.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32796 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 33) true) = canonicalInput32158.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32158 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild29_34 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 29 34 =
      Integer.Sparse.eval targetPsiChild29_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 34) false) = canonicalInput32800.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32800 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 34) true) = canonicalInput32156.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32156 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild29_35 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 29 35 =
      Integer.Sparse.eval targetPsiChild29_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 35) false) = canonicalInput32927.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32927 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 35) true) = canonicalInput32155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32155 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_36 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 36 =
      Integer.Sparse.eval targetPsiChild29_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 36) false) = canonicalInput32932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32932 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 36) true) = canonicalInput32154.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32154 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_37 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 37 =
      Integer.Sparse.eval targetPsiChild29_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 37) false) = canonicalInput33373.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33373 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 37) true) = canonicalInput32151.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32151 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 38 =
      Integer.Sparse.eval targetPsiChild29_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 38) false) = canonicalInput33377.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33377 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 38) true) = canonicalInput32150.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32150 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_39 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 39 =
      Integer.Sparse.eval targetPsiChild29_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 39) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 39) true) = canonicalInput32153.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32153 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_40 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 40 =
      Integer.Sparse.eval targetPsiChild29_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 40) false) = canonicalInput33378.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33378 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 40) true) = canonicalInput32149.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32149 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_41 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 41 =
      Integer.Sparse.eval targetPsiChild29_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 41) false) = canonicalInput33415.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33415 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 41) true) = canonicalInput32148.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32148 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 42 =
      Integer.Sparse.eval targetPsiChild29_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 42) false) = canonicalInput33878.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33878 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 42) true) = canonicalInput32145.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32145 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_43 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 43 =
      Integer.Sparse.eval targetPsiChild29_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 43) false) = canonicalInput33881.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33881 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 43) true) = canonicalInput32144.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32144 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 44 =
      Integer.Sparse.eval targetPsiChild29_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 44) false) = canonicalInput33885.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33885 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 44) true) = canonicalInput32142.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32142 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild29_45 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 29 45 =
      Integer.Sparse.eval targetPsiChild29_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 45) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 45) true) = canonicalInput32152.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32152 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 46 =
      Integer.Sparse.eval targetPsiChild29_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 46) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 46) true) = canonicalInput32147.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32147 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 47 =
      Integer.Sparse.eval targetPsiChild29_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 47) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 47) true) = canonicalInput32146.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32146 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild29_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 29 48 =
      Integer.Sparse.eval targetPsiChild29_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 48) false) = canonicalInput33882.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33882 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 48) true) = canonicalInput32143.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32143 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild29_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild29_49 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 29 49 =
      Integer.Sparse.eval targetPsiChild29_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 49) false) = canonicalInput33886.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33886 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 49) true) = canonicalInput32141.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32141 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 50 =
      Integer.Sparse.eval targetPsiChild29_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 50) false) = canonicalInput33891.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33891 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 50) true) = canonicalInput32140.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32140 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild29_51 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 29 51 =
      Integer.Sparse.eval targetPsiChild29_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 51) false) = canonicalInput33913.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33913 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 51) true) = canonicalInput32139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32139 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild29_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_52 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 52 =
      Integer.Sparse.eval targetPsiChild29_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 52) false) = canonicalInput33915.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33915 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 52) true) = canonicalInput32138.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32138 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild29_53 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 29 53 =
      Integer.Sparse.eval targetPsiChild29_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 53) false) = canonicalInput33918.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33918 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 53) true) = canonicalInput32137.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32137 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild29_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild29_54 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 29 54 =
      Integer.Sparse.eval targetPsiChild29_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 29) false - blockExponent (psiExponent 54) false) = canonicalInput33922.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33922 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 29) false + blockExponent (psiExponent 54) true) = canonicalInput32136.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 29) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32136 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild29_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow29Projection : Integer.Sparse (Fin 1613) := [(0, -738), (19, 1440), (20, -90), (94, -11160), (241, -18720), (287, 12960), (426, 103680), (666, 25920), (698, -172800), (700, -5760), (821, 17280), (848, -51840), (864, -12960), (869, -51840), (890, 51840), (943, -103680), (955, 25920), (957, -25920), (1015, 51840), (1016, 51840), (1050, 43200), (1055, 51840), (1059, -69120), (1221, 69120), (1226, -11520), (1227, -102240), (1250, -2160), (1251, 56340), (1389, 34560)]

theorem targetPsiRow29 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 29) i) =
      Integer.Sparse.eval targetPsiRow29Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![40, 1440, 1440, 80, 16, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 80, 10, 360, 16, 360, 1440, 40, 80, 1440, 1440, 80, 16, 360, 360, 1440, 360, 360, 1440, 360, 16, 40, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 29) i) =
      Integer.Sparse.eval (![targetPsiChild29_0Projection, targetPsiChild29_1Projection, targetPsiChild29_2Projection, targetPsiChild29_3Projection, targetPsiChild29_4Projection, targetPsiChild29_5Projection, targetPsiChild29_6Projection, targetPsiChild29_7Projection, targetPsiChild29_8Projection, targetPsiChild29_9Projection, targetPsiChild29_10Projection, targetPsiChild29_11Projection, targetPsiChild29_12Projection, targetPsiChild29_13Projection, targetPsiChild29_14Projection, targetPsiChild29_15Projection, targetPsiChild29_16Projection, targetPsiChild29_17Projection, targetPsiChild29_18Projection, targetPsiChild29_19Projection, targetPsiChild29_20Projection, targetPsiChild29_21Projection, targetPsiChild29_22Projection, targetPsiChild29_23Projection, targetPsiChild29_24Projection, targetPsiChild29_25Projection, targetPsiChild29_26Projection, targetPsiChild29_27Projection, targetPsiChild29_28Projection, targetPsiChild29_29Projection, targetPsiChild29_30Projection, targetPsiChild29_31Projection, targetPsiChild29_32Projection, targetPsiChild29_33Projection, targetPsiChild29_34Projection, targetPsiChild29_35Projection, targetPsiChild29_36Projection, targetPsiChild29_37Projection, targetPsiChild29_38Projection, targetPsiChild29_39Projection, targetPsiChild29_40Projection, targetPsiChild29_41Projection, targetPsiChild29_42Projection, targetPsiChild29_43Projection, targetPsiChild29_44Projection, targetPsiChild29_45Projection, targetPsiChild29_46Projection, targetPsiChild29_47Projection, targetPsiChild29_48Projection, targetPsiChild29_49Projection, targetPsiChild29_50Projection, targetPsiChild29_51Projection, targetPsiChild29_52Projection, targetPsiChild29_53Projection, targetPsiChild29_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild29_0 hH
    · exact targetPsiChild29_1 hH
    · exact targetPsiChild29_2 hH
    · exact targetPsiChild29_3 hH
    · exact targetPsiChild29_4 hH
    · exact targetPsiChild29_5 hH
    · exact targetPsiChild29_6 hH
    · exact targetPsiChild29_7 hH
    · exact targetPsiChild29_8 hH
    · exact targetPsiChild29_9 hH
    · exact targetPsiChild29_10 hH
    · exact targetPsiChild29_11 hH
    · exact targetPsiChild29_12 hH
    · exact targetPsiChild29_13 hH
    · exact targetPsiChild29_14 hH
    · exact targetPsiChild29_15 hH
    · exact targetPsiChild29_16 hH
    · exact targetPsiChild29_17 hH
    · exact targetPsiChild29_18 hH
    · exact targetPsiChild29_19 hH
    · exact targetPsiChild29_20 hH
    · exact targetPsiChild29_21 hH
    · exact targetPsiChild29_22 hH
    · exact targetPsiChild29_23 hH
    · exact targetPsiChild29_24 hH
    · exact targetPsiChild29_25 hH
    · exact targetPsiChild29_26 hH
    · exact targetPsiChild29_27 hH
    · exact targetPsiChild29_28 hH
    · exact targetPsiChild29_29 hH
    · exact targetPsiChild29_30 hH
    · exact targetPsiChild29_31 hH
    · exact targetPsiChild29_32 hH
    · exact targetPsiChild29_33 hH
    · exact targetPsiChild29_34 hH
    · exact targetPsiChild29_35 hH
    · exact targetPsiChild29_36 hH
    · exact targetPsiChild29_37 hH
    · exact targetPsiChild29_38 hH
    · exact targetPsiChild29_39 hH
    · exact targetPsiChild29_40 hH
    · exact targetPsiChild29_41 hH
    · exact targetPsiChild29_42 hH
    · exact targetPsiChild29_43 hH
    · exact targetPsiChild29_44 hH
    · exact targetPsiChild29_45 hH
    · exact targetPsiChild29_46 hH
    · exact targetPsiChild29_47 hH
    · exact targetPsiChild29_48 hH
    · exact targetPsiChild29_49 hH
    · exact targetPsiChild29_50 hH
    · exact targetPsiChild29_51 hH
    · exact targetPsiChild29_52 hH
    · exact targetPsiChild29_53 hH
    · exact targetPsiChild29_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 29) i) (targetPsiTerm H 29)
    (-1) 1440 1440 (-1) ![40, 1440, 1440, 80, 16, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 80, 10, 360, 16, 360, 1440, 40, 80, 1440, 1440, 80, 16, 360, 360, 1440, 360, 360, 1440, 360, 16, 40, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] ![36, 1, 1, 18, 90, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 18, 144, 4, 90, 4, 1, 36, 18, 1, 1, 18, 90, 4, 4, 1, 4, 4, 1, 4, 90, 36, 1, 1, 18, 1, 4, 4, 1, 4, 18, 36, 18, 1, 18, 4, 1, 36, 1, 1, 36] targetPsiRow29Projection ![targetPsiChild29_0Projection, targetPsiChild29_1Projection, targetPsiChild29_2Projection, targetPsiChild29_3Projection, targetPsiChild29_4Projection, targetPsiChild29_5Projection, targetPsiChild29_6Projection, targetPsiChild29_7Projection, targetPsiChild29_8Projection, targetPsiChild29_9Projection, targetPsiChild29_10Projection, targetPsiChild29_11Projection, targetPsiChild29_12Projection, targetPsiChild29_13Projection, targetPsiChild29_14Projection, targetPsiChild29_15Projection, targetPsiChild29_16Projection, targetPsiChild29_17Projection, targetPsiChild29_18Projection, targetPsiChild29_19Projection, targetPsiChild29_20Projection, targetPsiChild29_21Projection, targetPsiChild29_22Projection, targetPsiChild29_23Projection, targetPsiChild29_24Projection, targetPsiChild29_25Projection, targetPsiChild29_26Projection, targetPsiChild29_27Projection, targetPsiChild29_28Projection, targetPsiChild29_29Projection, targetPsiChild29_30Projection, targetPsiChild29_31Projection, targetPsiChild29_32Projection, targetPsiChild29_33Projection, targetPsiChild29_34Projection, targetPsiChild29_35Projection, targetPsiChild29_36Projection, targetPsiChild29_37Projection, targetPsiChild29_38Projection, targetPsiChild29_39Projection, targetPsiChild29_40Projection, targetPsiChild29_41Projection, targetPsiChild29_42Projection, targetPsiChild29_43Projection, targetPsiChild29_44Projection, targetPsiChild29_45Projection, targetPsiChild29_46Projection, targetPsiChild29_47Projection, targetPsiChild29_48Projection, targetPsiChild29_49Projection, targetPsiChild29_50Projection, targetPsiChild29_51Projection, targetPsiChild29_52Projection, targetPsiChild29_53Projection, targetPsiChild29_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical013
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical367
import NoFourMUBs.Step2.SOS.Canonical368
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical502
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions383
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiChild45_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild45_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 0 =
      Integer.Sparse.eval targetPsiChild45_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 0) false) = canonicalInput857.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound857 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 0) true) = canonicalInput23551.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23551 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_1 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 1 =
      Integer.Sparse.eval targetPsiChild45_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 1) false) = canonicalInput858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound858 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 1) true) = canonicalInput23550.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23550 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_2 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 2 =
      Integer.Sparse.eval targetPsiChild45_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 2) false) = canonicalInput12192.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12192 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 2) true) = canonicalInput23547.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23547 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 3 =
      Integer.Sparse.eval targetPsiChild45_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 3) false) = canonicalInput12197.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12197 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 3) true) = canonicalInput23544.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23544 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 4 =
      Integer.Sparse.eval targetPsiChild45_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 4) false) = canonicalInput12289.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12289 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 4) true) = canonicalInput23541.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23541 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_5 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 5 =
      Integer.Sparse.eval targetPsiChild45_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 5) false) = canonicalInput12292.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12292 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 5) true) = canonicalInput23538.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23538 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_6 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 6 =
      Integer.Sparse.eval targetPsiChild45_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 6) false) = canonicalInput859.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound859 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 6) true) = canonicalInput23549.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23549 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_7 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 7 =
      Integer.Sparse.eval targetPsiChild45_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 7) false) = canonicalInput12193.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12193 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 7) true) = canonicalInput23546.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23546 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_8 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 8 =
      Integer.Sparse.eval targetPsiChild45_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 8) false) = canonicalInput12198.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12198 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 8) true) = canonicalInput23543.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23543 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_9 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 9 =
      Integer.Sparse.eval targetPsiChild45_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 9) false) = canonicalInput12290.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12290 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 9) true) = canonicalInput23540.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23540 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_10 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 10 =
      Integer.Sparse.eval targetPsiChild45_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 10) false) = canonicalInput12293.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12293 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 10) true) = canonicalInput23537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23537 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_11 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 11 =
      Integer.Sparse.eval targetPsiChild45_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 11) false) = canonicalInput22931.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22931 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 11) true) = canonicalInput23535.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23535 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_12 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 12 =
      Integer.Sparse.eval targetPsiChild45_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 12) false) = canonicalInput22936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22936 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 12) true) = canonicalInput23533.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23533 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_13 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 13 =
      Integer.Sparse.eval targetPsiChild45_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 13) false) = canonicalInput23489.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23489 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 13) true) = canonicalInput23529.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23529 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_14 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 14 =
      Integer.Sparse.eval targetPsiChild45_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 14) false) = canonicalInput23492.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23492 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 14) true) = canonicalInput23527.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23527 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_15 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 15 =
      Integer.Sparse.eval targetPsiChild45_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 15) false) = canonicalInput23034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23034 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 15) true) = canonicalInput23531.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23531 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild45_16 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 45 16 =
      Integer.Sparse.eval targetPsiChild45_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 16) false) = canonicalInput23526.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23526 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 16) true) = canonicalInput23526.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23526 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild45_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_17 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 17 =
      Integer.Sparse.eval targetPsiChild45_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 17) false) = canonicalInput23558.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23558 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 17) true) = canonicalInput23524.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23524 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 18 =
      Integer.Sparse.eval targetPsiChild45_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 18) false) = canonicalInput23782.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23782 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 18) true) = canonicalInput23522.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23522 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_19 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 19 =
      Integer.Sparse.eval targetPsiChild45_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 19) false) = canonicalInput23784.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23784 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 19) true) = canonicalInput23520.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23520 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_20 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 20 =
      Integer.Sparse.eval targetPsiChild45_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 20) false) = canonicalInput23787.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23787 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 20) true) = canonicalInput23518.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23518 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild45_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 21 =
      Integer.Sparse.eval targetPsiChild45_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 21) false) = canonicalInput860.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound860 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 21) true) = canonicalInput23548.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23548 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 22 =
      Integer.Sparse.eval targetPsiChild45_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 22) false) = canonicalInput12194.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12194 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 22) true) = canonicalInput23545.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23545 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_23 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 23 =
      Integer.Sparse.eval targetPsiChild45_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 23) false) = canonicalInput12199.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12199 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 23) true) = canonicalInput23542.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23542 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_24 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 24 =
      Integer.Sparse.eval targetPsiChild45_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 24) false) = canonicalInput12291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12291 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 24) true) = canonicalInput23539.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23539 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 25 =
      Integer.Sparse.eval targetPsiChild45_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 25) false) = canonicalInput12294.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12294 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 25) true) = canonicalInput23536.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23536 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_26 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 26 =
      Integer.Sparse.eval targetPsiChild45_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 26) false) = canonicalInput22932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22932 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 26) true) = canonicalInput23534.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23534 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_27 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 27 =
      Integer.Sparse.eval targetPsiChild45_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 27) false) = canonicalInput22969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22969 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 27) true) = canonicalInput23532.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23532 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_28 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 28 =
      Integer.Sparse.eval targetPsiChild45_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 28) false) = canonicalInput23490.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23490 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 28) true) = canonicalInput23528.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23528 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_29 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 29 =
      Integer.Sparse.eval targetPsiChild45_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 29) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 29) true) = canonicalInput23530.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23530 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_30 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 30 =
      Integer.Sparse.eval targetPsiChild45_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 30) false) = canonicalInput23555.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23555 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 30) true) = canonicalInput23525.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23525 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_31 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 31 =
      Integer.Sparse.eval targetPsiChild45_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 31) false) = canonicalInput23591.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23591 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 31) true) = canonicalInput23523.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23523 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_32 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 32 =
      Integer.Sparse.eval targetPsiChild45_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 32) false) = canonicalInput23783.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23783 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 32) true) = canonicalInput23521.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23521 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_33 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 33 =
      Integer.Sparse.eval targetPsiChild45_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 33) false) = canonicalInput23785.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23785 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 33) true) = canonicalInput23519.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23519 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 34 =
      Integer.Sparse.eval targetPsiChild45_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 34) false) = canonicalInput23788.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23788 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 34) true) = canonicalInput23517.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23517 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild45_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 35 =
      Integer.Sparse.eval targetPsiChild45_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 35) false) = canonicalInput30237.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30237 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 35) true) = canonicalInput23516.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23516 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_36 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 36 =
      Integer.Sparse.eval targetPsiChild45_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 36) false) = canonicalInput30242.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30242 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 36) true) = canonicalInput23515.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23515 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_37 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 37 =
      Integer.Sparse.eval targetPsiChild45_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 37) false) = canonicalInput32125.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32125 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 37) true) = canonicalInput23512.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23512 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 38 =
      Integer.Sparse.eval targetPsiChild45_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 38) false) = canonicalInput32128.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32128 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 38) true) = canonicalInput23511.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23511 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_39 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 39 =
      Integer.Sparse.eval targetPsiChild45_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 39) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 39) true) = canonicalInput23514.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23514 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_40 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 40 =
      Integer.Sparse.eval targetPsiChild45_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 40) false) = canonicalInput32129.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32129 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 40) true) = canonicalInput23510.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23510 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_41 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 41 =
      Integer.Sparse.eval targetPsiChild45_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 41) false) = canonicalInput32165.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32165 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 41) true) = canonicalInput23509.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23509 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_42 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 42 =
      Integer.Sparse.eval targetPsiChild45_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 42) false) = canonicalInput32790.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32790 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 42) true) = canonicalInput23506.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23506 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_43 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 43 =
      Integer.Sparse.eval targetPsiChild45_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 43) false) = canonicalInput32792.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32792 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 43) true) = canonicalInput23505.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23505 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 44 =
      Integer.Sparse.eval targetPsiChild45_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 44) false) = canonicalInput32795.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32795 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 44) true) = canonicalInput23503.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23503 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild45_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 45 =
      Integer.Sparse.eval targetPsiChild45_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 45) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 45) true) = canonicalInput23513.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23513 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 46 =
      Integer.Sparse.eval targetPsiChild45_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 46) false) = canonicalInput32226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32226 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 46) true) = canonicalInput23508.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23508 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_47 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 47 =
      Integer.Sparse.eval targetPsiChild45_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 47) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 47) true) = canonicalInput23507.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23507 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild45_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 45 48 =
      Integer.Sparse.eval targetPsiChild45_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 48) false) = canonicalInput32793.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32793 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 48) true) = canonicalInput23504.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23504 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild45_49 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 49 =
      Integer.Sparse.eval targetPsiChild45_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 49) false) = canonicalInput32796.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32796 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 49) true) = canonicalInput23502.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23502 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_50 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 50 =
      Integer.Sparse.eval targetPsiChild45_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 50) false) = canonicalInput32800.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32800 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 50) true) = canonicalInput23501.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23501 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild45_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 51 =
      Integer.Sparse.eval targetPsiChild45_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 51) false) = canonicalInput32817.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32817 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 51) true) = canonicalInput23500.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23500 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild45_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_52 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 52 =
      Integer.Sparse.eval targetPsiChild45_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 52) false) = canonicalInput32818.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32818 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 52) true) = canonicalInput23499.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23499 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild45_53 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 45 53 =
      Integer.Sparse.eval targetPsiChild45_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 53) false) = canonicalInput32820.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32820 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 53) true) = canonicalInput23498.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23498 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild45_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild45_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 45 54 =
      Integer.Sparse.eval targetPsiChild45_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 45) false - blockExponent (psiExponent 54) false) = canonicalInput32823.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32823 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 45) false + blockExponent (psiExponent 54) true) = canonicalInput23497.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 45) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23497 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild45_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow45Projection : Integer.Sparse (Fin 1613) := [(0, 504), (60, 960), (87, 1440), (94, 1320), (145, -17280), (169, -8640), (287, 6480), (365, -34560), (366, -51840), (367, -17280), (426, 12960), (478, -17280), (483, -8640), (489, -8640), (515, -17280), (523, -51840), (524, -17280), (602, -69120), (610, -8640), (618, -8640), (638, -8640), (666, -21600), (668, -8640), (697, 1440), (698, -21600), (700, -2880), (821, 28800), (823, 34560), (826, 17280), (828, -8640), (829, -17280), (848, -25920), (850, 8640), (853, 8640), (854, 8640), (857, 8640), (865, -12960), (875, 8640), (890, -21600), (903, 17280), (936, 17280), (943, -95040), (952, 17280), (955, 17280), (973, 17280), (986, 17280), (1015, 25920), (1016, 8640), (1055, 7200), (1058, 2880), (1059, -6240), (1171, 17280), (1190, 51840), (1212, -2880), (1219, 2880), (1220, -2880), (1223, 1440), (1227, -1680), (1251, 4560), (1389, 14400)]

theorem targetPsiRow45 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 45) i) =
      Integer.Sparse.eval targetPsiRow45Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 45) i) =
      Integer.Sparse.eval (![targetPsiChild45_0Projection, targetPsiChild45_1Projection, targetPsiChild45_2Projection, targetPsiChild45_3Projection, targetPsiChild45_4Projection, targetPsiChild45_5Projection, targetPsiChild45_6Projection, targetPsiChild45_7Projection, targetPsiChild45_8Projection, targetPsiChild45_9Projection, targetPsiChild45_10Projection, targetPsiChild45_11Projection, targetPsiChild45_12Projection, targetPsiChild45_13Projection, targetPsiChild45_14Projection, targetPsiChild45_15Projection, targetPsiChild45_16Projection, targetPsiChild45_17Projection, targetPsiChild45_18Projection, targetPsiChild45_19Projection, targetPsiChild45_20Projection, targetPsiChild45_21Projection, targetPsiChild45_22Projection, targetPsiChild45_23Projection, targetPsiChild45_24Projection, targetPsiChild45_25Projection, targetPsiChild45_26Projection, targetPsiChild45_27Projection, targetPsiChild45_28Projection, targetPsiChild45_29Projection, targetPsiChild45_30Projection, targetPsiChild45_31Projection, targetPsiChild45_32Projection, targetPsiChild45_33Projection, targetPsiChild45_34Projection, targetPsiChild45_35Projection, targetPsiChild45_36Projection, targetPsiChild45_37Projection, targetPsiChild45_38Projection, targetPsiChild45_39Projection, targetPsiChild45_40Projection, targetPsiChild45_41Projection, targetPsiChild45_42Projection, targetPsiChild45_43Projection, targetPsiChild45_44Projection, targetPsiChild45_45Projection, targetPsiChild45_46Projection, targetPsiChild45_47Projection, targetPsiChild45_48Projection, targetPsiChild45_49Projection, targetPsiChild45_50Projection, targetPsiChild45_51Projection, targetPsiChild45_52Projection, targetPsiChild45_53Projection, targetPsiChild45_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild45_0 hH
    · exact targetPsiChild45_1 hH
    · exact targetPsiChild45_2 hH
    · exact targetPsiChild45_3 hH
    · exact targetPsiChild45_4 hH
    · exact targetPsiChild45_5 hH
    · exact targetPsiChild45_6 hH
    · exact targetPsiChild45_7 hH
    · exact targetPsiChild45_8 hH
    · exact targetPsiChild45_9 hH
    · exact targetPsiChild45_10 hH
    · exact targetPsiChild45_11 hH
    · exact targetPsiChild45_12 hH
    · exact targetPsiChild45_13 hH
    · exact targetPsiChild45_14 hH
    · exact targetPsiChild45_15 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 45) 16) =
        Integer.Sparse.eval targetPsiChild45_16Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild45_16 hH
    · exact targetPsiChild45_17 hH
    · exact targetPsiChild45_18 hH
    · exact targetPsiChild45_19 hH
    · exact targetPsiChild45_20 hH
    · exact targetPsiChild45_21 hH
    · exact targetPsiChild45_22 hH
    · exact targetPsiChild45_23 hH
    · exact targetPsiChild45_24 hH
    · exact targetPsiChild45_25 hH
    · exact targetPsiChild45_26 hH
    · exact targetPsiChild45_27 hH
    · exact targetPsiChild45_28 hH
    · exact targetPsiChild45_29 hH
    · exact targetPsiChild45_30 hH
    · exact targetPsiChild45_31 hH
    · exact targetPsiChild45_32 hH
    · exact targetPsiChild45_33 hH
    · exact targetPsiChild45_34 hH
    · exact targetPsiChild45_35 hH
    · exact targetPsiChild45_36 hH
    · exact targetPsiChild45_37 hH
    · exact targetPsiChild45_38 hH
    · exact targetPsiChild45_39 hH
    · exact targetPsiChild45_40 hH
    · exact targetPsiChild45_41 hH
    · exact targetPsiChild45_42 hH
    · exact targetPsiChild45_43 hH
    · exact targetPsiChild45_44 hH
    · exact targetPsiChild45_45 hH
    · exact targetPsiChild45_46 hH
    · exact targetPsiChild45_47 hH
    · exact targetPsiChild45_48 hH
    · exact targetPsiChild45_49 hH
    · exact targetPsiChild45_50 hH
    · exact targetPsiChild45_51 hH
    · exact targetPsiChild45_52 hH
    · exact targetPsiChild45_53 hH
    · exact targetPsiChild45_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 45) i) (targetPsiTerm H 45)
    (-1) 240 240 (-1) ![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] ![2, 6, 6, 3, 3, 6, 6, 2, 2, 2, 2, 6, 2, 2, 2, 3, 240, 2, 3, 2, 6, 2, 3, 6, 6, 3, 3, 2, 2, 6, 2, 2, 6, 2, 3, 2, 6, 6, 3, 6, 2, 2, 6, 2, 3, 2, 3, 6, 3, 2, 6, 2, 6, 6, 2] targetPsiRow45Projection ![targetPsiChild45_0Projection, targetPsiChild45_1Projection, targetPsiChild45_2Projection, targetPsiChild45_3Projection, targetPsiChild45_4Projection, targetPsiChild45_5Projection, targetPsiChild45_6Projection, targetPsiChild45_7Projection, targetPsiChild45_8Projection, targetPsiChild45_9Projection, targetPsiChild45_10Projection, targetPsiChild45_11Projection, targetPsiChild45_12Projection, targetPsiChild45_13Projection, targetPsiChild45_14Projection, targetPsiChild45_15Projection, targetPsiChild45_16Projection, targetPsiChild45_17Projection, targetPsiChild45_18Projection, targetPsiChild45_19Projection, targetPsiChild45_20Projection, targetPsiChild45_21Projection, targetPsiChild45_22Projection, targetPsiChild45_23Projection, targetPsiChild45_24Projection, targetPsiChild45_25Projection, targetPsiChild45_26Projection, targetPsiChild45_27Projection, targetPsiChild45_28Projection, targetPsiChild45_29Projection, targetPsiChild45_30Projection, targetPsiChild45_31Projection, targetPsiChild45_32Projection, targetPsiChild45_33Projection, targetPsiChild45_34Projection, targetPsiChild45_35Projection, targetPsiChild45_36Projection, targetPsiChild45_37Projection, targetPsiChild45_38Projection, targetPsiChild45_39Projection, targetPsiChild45_40Projection, targetPsiChild45_41Projection, targetPsiChild45_42Projection, targetPsiChild45_43Projection, targetPsiChild45_44Projection, targetPsiChild45_45Projection, targetPsiChild45_46Projection, targetPsiChild45_47Projection, targetPsiChild45_48Projection, targetPsiChild45_49Projection, targetPsiChild45_50Projection, targetPsiChild45_51Projection, targetPsiChild45_52Projection, targetPsiChild45_53Projection, targetPsiChild45_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical517
import NoFourMUBs.Step2.SOS.Canonical518
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical522
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.Canonical531
import NoFourMUBs.Step2.SOS.Canonical532
import NoFourMUBs.Step2.SOS.Canonical534
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.Canonical536
import NoFourMUBs.Step2.SOS.Canonical537
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

def targetPsiChild21_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild21_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 0 =
      Integer.Sparse.eval targetPsiChild21_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 0) false) = canonicalInput30372.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30372 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 0) true) = canonicalInput34042.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34042 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_1 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 1 =
      Integer.Sparse.eval targetPsiChild21_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 1) false) = canonicalInput30374.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30374 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 1) true) = canonicalInput34041.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34041 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_2 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 2 =
      Integer.Sparse.eval targetPsiChild21_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 2) false) = canonicalInput32936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32936 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 2) true) = canonicalInput34038.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34038 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 3 =
      Integer.Sparse.eval targetPsiChild21_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 3) false) = canonicalInput33122.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33122 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 3) true) = canonicalInput34035.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34035 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 4 =
      Integer.Sparse.eval targetPsiChild21_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 4) false) = canonicalInput33382.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33382 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 4) true) = canonicalInput34032.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34032 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_5 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 5 =
      Integer.Sparse.eval targetPsiChild21_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 5) false) = canonicalInput33568.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33568 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 5) true) = canonicalInput34029.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34029 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_6 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 6 =
      Integer.Sparse.eval targetPsiChild21_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 6) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 6) true) = canonicalInput34040.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34040 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_7 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 7 =
      Integer.Sparse.eval targetPsiChild21_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 7) false) = canonicalInput32937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32937 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 7) true) = canonicalInput34037.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34037 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_8 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 8 =
      Integer.Sparse.eval targetPsiChild21_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 8) false) = canonicalInput33155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33155 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 8) true) = canonicalInput34034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34034 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_9 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 9 =
      Integer.Sparse.eval targetPsiChild21_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 9) false) = canonicalInput33415.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33415 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 9) true) = canonicalInput34031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34031 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_10 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 10 =
      Integer.Sparse.eval targetPsiChild21_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 10) false) = canonicalInput33569.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33569 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 10) true) = canonicalInput34028.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34028 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_11 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 11 =
      Integer.Sparse.eval targetPsiChild21_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 11) false) = canonicalInput33956.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33956 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 11) true) = canonicalInput34026.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34026 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_12 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 12 =
      Integer.Sparse.eval targetPsiChild21_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 12) false) = canonicalInput33961.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33961 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 12) true) = canonicalInput34024.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34024 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_13 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 13 =
      Integer.Sparse.eval targetPsiChild21_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 13) false) = canonicalInput33979.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33979 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 13) true) = canonicalInput34020.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34020 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_14 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 14 =
      Integer.Sparse.eval targetPsiChild21_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 14) false) = canonicalInput33984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33984 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 14) true) = canonicalInput34018.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34018 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_15 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 15 =
      Integer.Sparse.eval targetPsiChild21_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 15) false) = canonicalInput33966.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33966 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 15) true) = canonicalInput34022.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34022 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild21_16 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 21 16 =
      Integer.Sparse.eval targetPsiChild21_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 16) false) = canonicalInput34017.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34017 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 16) true) = canonicalInput34017.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34017 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild21_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_17 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 17 =
      Integer.Sparse.eval targetPsiChild21_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 17) false) = canonicalInput34230.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34230 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 17) true) = canonicalInput34015.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34015 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 18 =
      Integer.Sparse.eval targetPsiChild21_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 18) false) = canonicalInput34268.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34268 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 18) true) = canonicalInput34013.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34013 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_19 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 19 =
      Integer.Sparse.eval targetPsiChild21_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 19) false) = canonicalInput34273.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34273 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 19) true) = canonicalInput34011.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34011 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_20 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 20 =
      Integer.Sparse.eval targetPsiChild21_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 20) false) = canonicalInput34278.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34278 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 20) true) = canonicalInput34009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34009 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild21_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 21 =
      Integer.Sparse.eval targetPsiChild21_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 21) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 21) true) = canonicalInput34039.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34039 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 22 =
      Integer.Sparse.eval targetPsiChild21_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 22) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 22) true) = canonicalInput34036.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34036 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_23 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 23 =
      Integer.Sparse.eval targetPsiChild21_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 23) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 23) true) = canonicalInput34033.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34033 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_24 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 24 =
      Integer.Sparse.eval targetPsiChild21_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 24) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 24) true) = canonicalInput34030.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34030 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 25 =
      Integer.Sparse.eval targetPsiChild21_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 25) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 25) true) = canonicalInput34027.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34027 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_26 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 26 =
      Integer.Sparse.eval targetPsiChild21_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 26) false) = canonicalInput33957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33957 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 26) true) = canonicalInput34025.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34025 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_27 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 27 =
      Integer.Sparse.eval targetPsiChild21_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 27) false) = canonicalInput33962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33962 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 27) true) = canonicalInput34023.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34023 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_28 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 28 =
      Integer.Sparse.eval targetPsiChild21_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 28) false) = canonicalInput33980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33980 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 28) true) = canonicalInput34019.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34019 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_29 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 29 =
      Integer.Sparse.eval targetPsiChild21_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 29) false) = canonicalInput33967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33967 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 29) true) = canonicalInput34021.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34021 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_30 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 30 =
      Integer.Sparse.eval targetPsiChild21_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 30) false) = canonicalInput34078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34078 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 30) true) = canonicalInput34016.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34016 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_31 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 31 =
      Integer.Sparse.eval targetPsiChild21_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 31) false) = canonicalInput34231.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34231 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 31) true) = canonicalInput34014.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34014 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_32 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 32 =
      Integer.Sparse.eval targetPsiChild21_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 32) false) = canonicalInput34269.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34269 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 32) true) = canonicalInput34012.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34012 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_33 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 33 =
      Integer.Sparse.eval targetPsiChild21_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 33) false) = canonicalInput34274.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34274 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 33) true) = canonicalInput34010.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34010 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 34 =
      Integer.Sparse.eval targetPsiChild21_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 34) false) = canonicalInput34279.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34279 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 34) true) = canonicalInput34008.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34008 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild21_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 35 =
      Integer.Sparse.eval targetPsiChild21_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 35) false) = canonicalInput34335.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34335 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 35) true) = canonicalInput34007.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34007 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_36 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 36 =
      Integer.Sparse.eval targetPsiChild21_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 36) false) = canonicalInput34339.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34339 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 36) true) = canonicalInput34006.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34006 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_37 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 37 =
      Integer.Sparse.eval targetPsiChild21_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 37) false) = canonicalInput34354.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34354 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 37) true) = canonicalInput34003.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34003 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 38 =
      Integer.Sparse.eval targetPsiChild21_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 38) false) = canonicalInput34358.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34358 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 38) true) = canonicalInput34002.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34002 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_39 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 39 =
      Integer.Sparse.eval targetPsiChild21_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 39) false) = canonicalInput34343.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34343 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 39) true) = canonicalInput34005.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34005 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_40 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 40 =
      Integer.Sparse.eval targetPsiChild21_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 40) false) = canonicalInput34359.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34359 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 40) true) = canonicalInput34001.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34001 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_41 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 41 =
      Integer.Sparse.eval targetPsiChild21_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 41) false) = canonicalInput34363.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34363 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 41) true) = canonicalInput34000.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34000 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_42 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 42 =
      Integer.Sparse.eval targetPsiChild21_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 42) false) = canonicalInput34372.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34372 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 42) true) = canonicalInput33997.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33997 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_43 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 43 =
      Integer.Sparse.eval targetPsiChild21_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 43) false) = canonicalInput34376.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34376 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 43) true) = canonicalInput33996.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33996 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 44 =
      Integer.Sparse.eval targetPsiChild21_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 44) false) = canonicalInput34381.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34381 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 44) true) = canonicalInput33994.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33994 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild21_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 45 =
      Integer.Sparse.eval targetPsiChild21_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 45) false) = canonicalInput34347.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34347 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 45) true) = canonicalInput34004.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34004 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 46 =
      Integer.Sparse.eval targetPsiChild21_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 46) false) = canonicalInput34364.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34364 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 46) true) = canonicalInput33999.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33999 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_47 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 47 =
      Integer.Sparse.eval targetPsiChild21_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 47) false) = canonicalInput34368.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34368 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 47) true) = canonicalInput33998.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33998 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild21_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 21 48 =
      Integer.Sparse.eval targetPsiChild21_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 48) false) = canonicalInput34377.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34377 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 48) true) = canonicalInput33995.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33995 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild21_49 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 49 =
      Integer.Sparse.eval targetPsiChild21_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 49) false) = canonicalInput34382.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34382 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 49) true) = canonicalInput33993.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33993 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_50 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 50 =
      Integer.Sparse.eval targetPsiChild21_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 50) false) = canonicalInput34386.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34386 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 50) true) = canonicalInput33992.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33992 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild21_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 51 =
      Integer.Sparse.eval targetPsiChild21_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 51) false) = canonicalInput34394.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34394 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 51) true) = canonicalInput33991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33991 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild21_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_52 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 52 =
      Integer.Sparse.eval targetPsiChild21_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 52) false) = canonicalInput34398.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34398 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 52) true) = canonicalInput33990.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33990 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild21_53 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 21 53 =
      Integer.Sparse.eval targetPsiChild21_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 53) false) = canonicalInput34402.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34402 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 53) true) = canonicalInput33989.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33989 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild21_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild21_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 21 54 =
      Integer.Sparse.eval targetPsiChild21_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 21) false - blockExponent (psiExponent 54) false) = canonicalInput34406.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34406 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 21) false + blockExponent (psiExponent 54) true) = canonicalInput33988.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 21) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33988 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild21_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow21Projection : Integer.Sparse (Fin 1613) := [(0, 504), (60, 960), (87, 1440), (94, 1320), (145, -17280), (169, -8640), (287, 6480), (365, -34560), (366, -51840), (367, -17280), (426, 12960), (478, -17280), (483, -8640), (489, -8640), (515, -17280), (523, -51840), (524, -17280), (602, -69120), (610, -8640), (618, -8640), (638, -8640), (666, -21600), (668, -8640), (697, 1440), (698, -21600), (700, -2880), (821, 28800), (823, 34560), (826, 17280), (828, -8640), (829, -17280), (848, -25920), (850, 8640), (853, 8640), (854, 8640), (857, 8640), (865, -12960), (875, 8640), (890, -21600), (903, 17280), (936, 17280), (943, -95040), (952, 17280), (955, 17280), (973, 17280), (986, 17280), (1015, 25920), (1016, 8640), (1055, 7200), (1058, 2880), (1059, -6240), (1171, 17280), (1190, 51840), (1212, -2880), (1219, 2880), (1220, -2880), (1223, 1440), (1227, -1680), (1251, 4560), (1389, 14400)]

theorem targetPsiRow21 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 21) i) =
      Integer.Sparse.eval targetPsiRow21Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 21) i) =
      Integer.Sparse.eval (![targetPsiChild21_0Projection, targetPsiChild21_1Projection, targetPsiChild21_2Projection, targetPsiChild21_3Projection, targetPsiChild21_4Projection, targetPsiChild21_5Projection, targetPsiChild21_6Projection, targetPsiChild21_7Projection, targetPsiChild21_8Projection, targetPsiChild21_9Projection, targetPsiChild21_10Projection, targetPsiChild21_11Projection, targetPsiChild21_12Projection, targetPsiChild21_13Projection, targetPsiChild21_14Projection, targetPsiChild21_15Projection, targetPsiChild21_16Projection, targetPsiChild21_17Projection, targetPsiChild21_18Projection, targetPsiChild21_19Projection, targetPsiChild21_20Projection, targetPsiChild21_21Projection, targetPsiChild21_22Projection, targetPsiChild21_23Projection, targetPsiChild21_24Projection, targetPsiChild21_25Projection, targetPsiChild21_26Projection, targetPsiChild21_27Projection, targetPsiChild21_28Projection, targetPsiChild21_29Projection, targetPsiChild21_30Projection, targetPsiChild21_31Projection, targetPsiChild21_32Projection, targetPsiChild21_33Projection, targetPsiChild21_34Projection, targetPsiChild21_35Projection, targetPsiChild21_36Projection, targetPsiChild21_37Projection, targetPsiChild21_38Projection, targetPsiChild21_39Projection, targetPsiChild21_40Projection, targetPsiChild21_41Projection, targetPsiChild21_42Projection, targetPsiChild21_43Projection, targetPsiChild21_44Projection, targetPsiChild21_45Projection, targetPsiChild21_46Projection, targetPsiChild21_47Projection, targetPsiChild21_48Projection, targetPsiChild21_49Projection, targetPsiChild21_50Projection, targetPsiChild21_51Projection, targetPsiChild21_52Projection, targetPsiChild21_53Projection, targetPsiChild21_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild21_0 hH
    · exact targetPsiChild21_1 hH
    · exact targetPsiChild21_2 hH
    · exact targetPsiChild21_3 hH
    · exact targetPsiChild21_4 hH
    · exact targetPsiChild21_5 hH
    · exact targetPsiChild21_6 hH
    · exact targetPsiChild21_7 hH
    · exact targetPsiChild21_8 hH
    · exact targetPsiChild21_9 hH
    · exact targetPsiChild21_10 hH
    · exact targetPsiChild21_11 hH
    · exact targetPsiChild21_12 hH
    · exact targetPsiChild21_13 hH
    · exact targetPsiChild21_14 hH
    · exact targetPsiChild21_15 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 21) 16) =
        Integer.Sparse.eval targetPsiChild21_16Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild21_16 hH
    · exact targetPsiChild21_17 hH
    · exact targetPsiChild21_18 hH
    · exact targetPsiChild21_19 hH
    · exact targetPsiChild21_20 hH
    · exact targetPsiChild21_21 hH
    · exact targetPsiChild21_22 hH
    · exact targetPsiChild21_23 hH
    · exact targetPsiChild21_24 hH
    · exact targetPsiChild21_25 hH
    · exact targetPsiChild21_26 hH
    · exact targetPsiChild21_27 hH
    · exact targetPsiChild21_28 hH
    · exact targetPsiChild21_29 hH
    · exact targetPsiChild21_30 hH
    · exact targetPsiChild21_31 hH
    · exact targetPsiChild21_32 hH
    · exact targetPsiChild21_33 hH
    · exact targetPsiChild21_34 hH
    · exact targetPsiChild21_35 hH
    · exact targetPsiChild21_36 hH
    · exact targetPsiChild21_37 hH
    · exact targetPsiChild21_38 hH
    · exact targetPsiChild21_39 hH
    · exact targetPsiChild21_40 hH
    · exact targetPsiChild21_41 hH
    · exact targetPsiChild21_42 hH
    · exact targetPsiChild21_43 hH
    · exact targetPsiChild21_44 hH
    · exact targetPsiChild21_45 hH
    · exact targetPsiChild21_46 hH
    · exact targetPsiChild21_47 hH
    · exact targetPsiChild21_48 hH
    · exact targetPsiChild21_49 hH
    · exact targetPsiChild21_50 hH
    · exact targetPsiChild21_51 hH
    · exact targetPsiChild21_52 hH
    · exact targetPsiChild21_53 hH
    · exact targetPsiChild21_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 21) i) (targetPsiTerm H 21)
    (-1) 240 240 (-1) ![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] ![2, 6, 6, 3, 3, 6, 6, 2, 2, 2, 2, 6, 2, 2, 2, 3, 240, 2, 3, 2, 6, 2, 3, 6, 6, 3, 3, 2, 2, 6, 2, 2, 6, 2, 3, 2, 6, 6, 3, 6, 2, 2, 6, 2, 3, 2, 3, 6, 3, 2, 6, 2, 6, 6, 2] targetPsiRow21Projection ![targetPsiChild21_0Projection, targetPsiChild21_1Projection, targetPsiChild21_2Projection, targetPsiChild21_3Projection, targetPsiChild21_4Projection, targetPsiChild21_5Projection, targetPsiChild21_6Projection, targetPsiChild21_7Projection, targetPsiChild21_8Projection, targetPsiChild21_9Projection, targetPsiChild21_10Projection, targetPsiChild21_11Projection, targetPsiChild21_12Projection, targetPsiChild21_13Projection, targetPsiChild21_14Projection, targetPsiChild21_15Projection, targetPsiChild21_16Projection, targetPsiChild21_17Projection, targetPsiChild21_18Projection, targetPsiChild21_19Projection, targetPsiChild21_20Projection, targetPsiChild21_21Projection, targetPsiChild21_22Projection, targetPsiChild21_23Projection, targetPsiChild21_24Projection, targetPsiChild21_25Projection, targetPsiChild21_26Projection, targetPsiChild21_27Projection, targetPsiChild21_28Projection, targetPsiChild21_29Projection, targetPsiChild21_30Projection, targetPsiChild21_31Projection, targetPsiChild21_32Projection, targetPsiChild21_33Projection, targetPsiChild21_34Projection, targetPsiChild21_35Projection, targetPsiChild21_36Projection, targetPsiChild21_37Projection, targetPsiChild21_38Projection, targetPsiChild21_39Projection, targetPsiChild21_40Projection, targetPsiChild21_41Projection, targetPsiChild21_42Projection, targetPsiChild21_43Projection, targetPsiChild21_44Projection, targetPsiChild21_45Projection, targetPsiChild21_46Projection, targetPsiChild21_47Projection, targetPsiChild21_48Projection, targetPsiChild21_49Projection, targetPsiChild21_50Projection, targetPsiChild21_51Projection, targetPsiChild21_52Projection, targetPsiChild21_53Projection, targetPsiChild21_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

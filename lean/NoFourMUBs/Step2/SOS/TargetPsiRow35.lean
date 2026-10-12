import NoFourMUBs.Step2.SOS.Canonical013
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical507
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.Canonical513
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

def targetPsiChild35_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild35_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 0 =
      Integer.Sparse.eval targetPsiChild35_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 0) false) = canonicalInput873.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound873 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 0) true) = canonicalInput23752.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23752 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_1 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 1 =
      Integer.Sparse.eval targetPsiChild35_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 1) false) = canonicalInput875.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound875 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 1) true) = canonicalInput23751.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23751 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_2 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 2 =
      Integer.Sparse.eval targetPsiChild35_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 2) false) = canonicalInput12207.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12207 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 2) true) = canonicalInput23748.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23748 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 3 =
      Integer.Sparse.eval targetPsiChild35_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 3) false) = canonicalInput12212.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12212 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 3) true) = canonicalInput23745.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23745 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 4 =
      Integer.Sparse.eval targetPsiChild35_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 4) false) = canonicalInput12301.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12301 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 4) true) = canonicalInput23742.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23742 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_5 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 5 =
      Integer.Sparse.eval targetPsiChild35_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 5) false) = canonicalInput12304.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12304 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 5) true) = canonicalInput23739.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23739 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_6 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 6 =
      Integer.Sparse.eval targetPsiChild35_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 6) false) = canonicalInput876.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound876 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 6) true) = canonicalInput23750.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23750 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_7 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 7 =
      Integer.Sparse.eval targetPsiChild35_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 7) false) = canonicalInput12208.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12208 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 7) true) = canonicalInput23747.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23747 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_8 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 8 =
      Integer.Sparse.eval targetPsiChild35_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 8) false) = canonicalInput12213.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12213 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 8) true) = canonicalInput23744.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23744 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_9 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 9 =
      Integer.Sparse.eval targetPsiChild35_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 9) false) = canonicalInput12302.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12302 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 9) true) = canonicalInput23741.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23741 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_10 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 10 =
      Integer.Sparse.eval targetPsiChild35_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 10) false) = canonicalInput12305.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12305 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 10) true) = canonicalInput23738.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23738 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_11 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 11 =
      Integer.Sparse.eval targetPsiChild35_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 11) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 11) true) = canonicalInput23736.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23736 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_12 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 12 =
      Integer.Sparse.eval targetPsiChild35_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 12) false) = canonicalInput23286.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23286 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 12) true) = canonicalInput23734.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23734 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_13 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 13 =
      Integer.Sparse.eval targetPsiChild35_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 13) false) = canonicalInput23660.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23660 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 13) true) = canonicalInput23730.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23730 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_14 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 14 =
      Integer.Sparse.eval targetPsiChild35_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 14) false) = canonicalInput23694.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23694 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 14) true) = canonicalInput23728.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23728 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_15 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 15 =
      Integer.Sparse.eval targetPsiChild35_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 15) false) = canonicalInput23319.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23319 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 15) true) = canonicalInput23732.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23732 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild35_16 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 35 16 =
      Integer.Sparse.eval targetPsiChild35_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 16) false) = canonicalInput23727.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23727 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 16) true) = canonicalInput23727.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23727 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild35_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_17 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 17 =
      Integer.Sparse.eval targetPsiChild35_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 17) false) = canonicalInput23758.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23758 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 17) true) = canonicalInput23725.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23725 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 18 =
      Integer.Sparse.eval targetPsiChild35_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 18) false) = canonicalInput23793.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23793 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 18) true) = canonicalInput23723.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23723 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_19 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 19 =
      Integer.Sparse.eval targetPsiChild35_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 19) false) = canonicalInput23796.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23796 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 19) true) = canonicalInput23721.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23721 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_20 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 20 =
      Integer.Sparse.eval targetPsiChild35_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 20) false) = canonicalInput23798.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23798 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 20) true) = canonicalInput23719.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23719 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild35_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 21 =
      Integer.Sparse.eval targetPsiChild35_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 21) false) = canonicalInput877.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound877 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 21) true) = canonicalInput23749.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23749 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 22 =
      Integer.Sparse.eval targetPsiChild35_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 22) false) = canonicalInput12209.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12209 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 22) true) = canonicalInput23746.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23746 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_23 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 23 =
      Integer.Sparse.eval targetPsiChild35_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 23) false) = canonicalInput12214.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12214 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 23) true) = canonicalInput23743.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23743 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_24 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 24 =
      Integer.Sparse.eval targetPsiChild35_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 24) false) = canonicalInput12303.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12303 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 24) true) = canonicalInput23740.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23740 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 25 =
      Integer.Sparse.eval targetPsiChild35_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 25) false) = canonicalInput12306.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12306 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 25) true) = canonicalInput23737.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23737 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_26 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 26 =
      Integer.Sparse.eval targetPsiChild35_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 26) false) = canonicalInput23221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23221 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 26) true) = canonicalInput23735.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23735 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_27 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 27 =
      Integer.Sparse.eval targetPsiChild35_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 27) false) = canonicalInput23315.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23315 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 27) true) = canonicalInput23733.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23733 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_28 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 28 =
      Integer.Sparse.eval targetPsiChild35_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 28) false) = canonicalInput23689.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23689 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 28) true) = canonicalInput23729.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23729 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_29 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 29 =
      Integer.Sparse.eval targetPsiChild35_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 29) false) = canonicalInput23320.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23320 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 29) true) = canonicalInput23731.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23731 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_30 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 30 =
      Integer.Sparse.eval targetPsiChild35_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 30) false) = canonicalInput23756.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23756 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 30) true) = canonicalInput23726.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23726 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_31 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 31 =
      Integer.Sparse.eval targetPsiChild35_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 31) false) = canonicalInput23759.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23759 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 31) true) = canonicalInput23724.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23724 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_32 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 32 =
      Integer.Sparse.eval targetPsiChild35_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 32) false) = canonicalInput23794.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23794 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 32) true) = canonicalInput23722.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23722 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_33 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 33 =
      Integer.Sparse.eval targetPsiChild35_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 33) false) = canonicalInput23797.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23797 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 33) true) = canonicalInput23720.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23720 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 34 =
      Integer.Sparse.eval targetPsiChild35_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 34) false) = canonicalInput23799.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23799 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 34) true) = canonicalInput23718.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23718 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild35_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 35 =
      Integer.Sparse.eval targetPsiChild35_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 35) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 35) true) = canonicalInput23717.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23717 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_36 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 36 =
      Integer.Sparse.eval targetPsiChild35_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 36) false) = canonicalInput30991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30991 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 36) true) = canonicalInput23716.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23716 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_37 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 37 =
      Integer.Sparse.eval targetPsiChild35_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 37) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 37) true) = canonicalInput23713.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23713 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 38 =
      Integer.Sparse.eval targetPsiChild35_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 38) false) = canonicalInput32417.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32417 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 38) true) = canonicalInput23712.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23712 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_39 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 39 =
      Integer.Sparse.eval targetPsiChild35_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 39) false) = canonicalInput31025.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31025 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 39) true) = canonicalInput23715.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23715 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_40 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 40 =
      Integer.Sparse.eval targetPsiChild35_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 40) false) = canonicalInput32478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32478 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 40) true) = canonicalInput23711.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23711 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_41 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 41 =
      Integer.Sparse.eval targetPsiChild35_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 41) false) = canonicalInput32510.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32510 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 41) true) = canonicalInput23710.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23710 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_42 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 42 =
      Integer.Sparse.eval targetPsiChild35_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 42) false) = canonicalInput32802.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32802 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 42) true) = canonicalInput23707.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23707 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_43 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 43 =
      Integer.Sparse.eval targetPsiChild35_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 43) false) = canonicalInput32806.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32806 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 43) true) = canonicalInput23706.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23706 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 44 =
      Integer.Sparse.eval targetPsiChild35_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 44) false) = canonicalInput32809.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32809 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 44) true) = canonicalInput23704.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23704 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild35_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 45 =
      Integer.Sparse.eval targetPsiChild35_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 45) false) = canonicalInput31030.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31030 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 45) true) = canonicalInput23714.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23714 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 46 =
      Integer.Sparse.eval targetPsiChild35_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 46) false) = canonicalInput32511.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32511 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 46) true) = canonicalInput23709.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23709 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_47 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 47 =
      Integer.Sparse.eval targetPsiChild35_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 47) false) = canonicalInput32514.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32514 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 47) true) = canonicalInput23708.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23708 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild35_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 35 48 =
      Integer.Sparse.eval targetPsiChild35_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 48) false) = canonicalInput32807.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32807 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 48) true) = canonicalInput23705.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23705 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild35_49 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 49 =
      Integer.Sparse.eval targetPsiChild35_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 49) false) = canonicalInput32810.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32810 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 49) true) = canonicalInput23703.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23703 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_50 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 50 =
      Integer.Sparse.eval targetPsiChild35_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 50) false) = canonicalInput32812.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32812 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 50) true) = canonicalInput23702.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23702 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild35_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 51 =
      Integer.Sparse.eval targetPsiChild35_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 51) false) = canonicalInput32826.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32826 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 51) true) = canonicalInput23701.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23701 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild35_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_52 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 52 =
      Integer.Sparse.eval targetPsiChild35_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 52) false) = canonicalInput32829.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32829 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 52) true) = canonicalInput23700.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23700 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild35_53 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 35 53 =
      Integer.Sparse.eval targetPsiChild35_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 53) false) = canonicalInput32831.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32831 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 53) true) = canonicalInput23699.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23699 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild35_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild35_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 35 54 =
      Integer.Sparse.eval targetPsiChild35_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 35) false - blockExponent (psiExponent 54) false) = canonicalInput32832.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32832 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 35) false + blockExponent (psiExponent 54) true) = canonicalInput23698.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 35) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23698 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild35_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow35Projection : Integer.Sparse (Fin 1613) := [(0, 504), (60, 960), (87, 1440), (94, 1320), (145, -17280), (169, -8640), (287, 6480), (365, -34560), (366, -51840), (367, -17280), (426, 12960), (478, -17280), (483, -8640), (489, -8640), (515, -17280), (523, -51840), (524, -17280), (602, -69120), (610, -8640), (618, -8640), (638, -8640), (666, -21600), (668, -8640), (697, 1440), (698, -21600), (700, -2880), (821, 28800), (823, 34560), (826, 17280), (828, -8640), (829, -17280), (848, -25920), (850, 8640), (853, 8640), (854, 8640), (857, 8640), (865, -12960), (875, 8640), (890, -21600), (903, 17280), (936, 17280), (943, -95040), (952, 17280), (955, 17280), (973, 17280), (986, 17280), (1015, 25920), (1016, 8640), (1055, 7200), (1058, 2880), (1059, -6240), (1171, 17280), (1190, 51840), (1212, -2880), (1219, 2880), (1220, -2880), (1223, 1440), (1227, -1680), (1251, 4560), (1389, 14400)]

theorem targetPsiRow35 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 35) i) =
      Integer.Sparse.eval targetPsiRow35Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 35) i) =
      Integer.Sparse.eval (![targetPsiChild35_0Projection, targetPsiChild35_1Projection, targetPsiChild35_2Projection, targetPsiChild35_3Projection, targetPsiChild35_4Projection, targetPsiChild35_5Projection, targetPsiChild35_6Projection, targetPsiChild35_7Projection, targetPsiChild35_8Projection, targetPsiChild35_9Projection, targetPsiChild35_10Projection, targetPsiChild35_11Projection, targetPsiChild35_12Projection, targetPsiChild35_13Projection, targetPsiChild35_14Projection, targetPsiChild35_15Projection, targetPsiChild35_16Projection, targetPsiChild35_17Projection, targetPsiChild35_18Projection, targetPsiChild35_19Projection, targetPsiChild35_20Projection, targetPsiChild35_21Projection, targetPsiChild35_22Projection, targetPsiChild35_23Projection, targetPsiChild35_24Projection, targetPsiChild35_25Projection, targetPsiChild35_26Projection, targetPsiChild35_27Projection, targetPsiChild35_28Projection, targetPsiChild35_29Projection, targetPsiChild35_30Projection, targetPsiChild35_31Projection, targetPsiChild35_32Projection, targetPsiChild35_33Projection, targetPsiChild35_34Projection, targetPsiChild35_35Projection, targetPsiChild35_36Projection, targetPsiChild35_37Projection, targetPsiChild35_38Projection, targetPsiChild35_39Projection, targetPsiChild35_40Projection, targetPsiChild35_41Projection, targetPsiChild35_42Projection, targetPsiChild35_43Projection, targetPsiChild35_44Projection, targetPsiChild35_45Projection, targetPsiChild35_46Projection, targetPsiChild35_47Projection, targetPsiChild35_48Projection, targetPsiChild35_49Projection, targetPsiChild35_50Projection, targetPsiChild35_51Projection, targetPsiChild35_52Projection, targetPsiChild35_53Projection, targetPsiChild35_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild35_0 hH
    · exact targetPsiChild35_1 hH
    · exact targetPsiChild35_2 hH
    · exact targetPsiChild35_3 hH
    · exact targetPsiChild35_4 hH
    · exact targetPsiChild35_5 hH
    · exact targetPsiChild35_6 hH
    · exact targetPsiChild35_7 hH
    · exact targetPsiChild35_8 hH
    · exact targetPsiChild35_9 hH
    · exact targetPsiChild35_10 hH
    · exact targetPsiChild35_11 hH
    · exact targetPsiChild35_12 hH
    · exact targetPsiChild35_13 hH
    · exact targetPsiChild35_14 hH
    · exact targetPsiChild35_15 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 35) 16) =
        Integer.Sparse.eval targetPsiChild35_16Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild35_16 hH
    · exact targetPsiChild35_17 hH
    · exact targetPsiChild35_18 hH
    · exact targetPsiChild35_19 hH
    · exact targetPsiChild35_20 hH
    · exact targetPsiChild35_21 hH
    · exact targetPsiChild35_22 hH
    · exact targetPsiChild35_23 hH
    · exact targetPsiChild35_24 hH
    · exact targetPsiChild35_25 hH
    · exact targetPsiChild35_26 hH
    · exact targetPsiChild35_27 hH
    · exact targetPsiChild35_28 hH
    · exact targetPsiChild35_29 hH
    · exact targetPsiChild35_30 hH
    · exact targetPsiChild35_31 hH
    · exact targetPsiChild35_32 hH
    · exact targetPsiChild35_33 hH
    · exact targetPsiChild35_34 hH
    · exact targetPsiChild35_35 hH
    · exact targetPsiChild35_36 hH
    · exact targetPsiChild35_37 hH
    · exact targetPsiChild35_38 hH
    · exact targetPsiChild35_39 hH
    · exact targetPsiChild35_40 hH
    · exact targetPsiChild35_41 hH
    · exact targetPsiChild35_42 hH
    · exact targetPsiChild35_43 hH
    · exact targetPsiChild35_44 hH
    · exact targetPsiChild35_45 hH
    · exact targetPsiChild35_46 hH
    · exact targetPsiChild35_47 hH
    · exact targetPsiChild35_48 hH
    · exact targetPsiChild35_49 hH
    · exact targetPsiChild35_50 hH
    · exact targetPsiChild35_51 hH
    · exact targetPsiChild35_52 hH
    · exact targetPsiChild35_53 hH
    · exact targetPsiChild35_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 35) i) (targetPsiTerm H 35)
    (-1) 240 240 (-1) ![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] ![2, 6, 6, 3, 3, 6, 6, 2, 2, 2, 2, 6, 2, 2, 2, 3, 240, 2, 3, 2, 6, 2, 3, 6, 6, 3, 3, 2, 2, 6, 2, 2, 6, 2, 3, 2, 6, 6, 3, 6, 2, 2, 6, 2, 3, 2, 3, 6, 3, 2, 6, 2, 6, 6, 2] targetPsiRow35Projection ![targetPsiChild35_0Projection, targetPsiChild35_1Projection, targetPsiChild35_2Projection, targetPsiChild35_3Projection, targetPsiChild35_4Projection, targetPsiChild35_5Projection, targetPsiChild35_6Projection, targetPsiChild35_7Projection, targetPsiChild35_8Projection, targetPsiChild35_9Projection, targetPsiChild35_10Projection, targetPsiChild35_11Projection, targetPsiChild35_12Projection, targetPsiChild35_13Projection, targetPsiChild35_14Projection, targetPsiChild35_15Projection, targetPsiChild35_16Projection, targetPsiChild35_17Projection, targetPsiChild35_18Projection, targetPsiChild35_19Projection, targetPsiChild35_20Projection, targetPsiChild35_21Projection, targetPsiChild35_22Projection, targetPsiChild35_23Projection, targetPsiChild35_24Projection, targetPsiChild35_25Projection, targetPsiChild35_26Projection, targetPsiChild35_27Projection, targetPsiChild35_28Projection, targetPsiChild35_29Projection, targetPsiChild35_30Projection, targetPsiChild35_31Projection, targetPsiChild35_32Projection, targetPsiChild35_33Projection, targetPsiChild35_34Projection, targetPsiChild35_35Projection, targetPsiChild35_36Projection, targetPsiChild35_37Projection, targetPsiChild35_38Projection, targetPsiChild35_39Projection, targetPsiChild35_40Projection, targetPsiChild35_41Projection, targetPsiChild35_42Projection, targetPsiChild35_43Projection, targetPsiChild35_44Projection, targetPsiChild35_45Projection, targetPsiChild35_46Projection, targetPsiChild35_47Projection, targetPsiChild35_48Projection, targetPsiChild35_49Projection, targetPsiChild35_50Projection, targetPsiChild35_51Projection, targetPsiChild35_52Projection, targetPsiChild35_53Projection, targetPsiChild35_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

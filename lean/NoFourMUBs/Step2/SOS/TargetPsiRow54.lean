import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical478
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

def targetPsiChild54_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild54_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 0 =
      Integer.Sparse.eval targetPsiChild54_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 0) false) = canonicalInput619.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound619 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 0) true) = canonicalInput18872.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18872 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_1 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 1 =
      Integer.Sparse.eval targetPsiChild54_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 1) false) = canonicalInput620.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound620 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 1) true) = canonicalInput18871.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18871 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_2 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 2 =
      Integer.Sparse.eval targetPsiChild54_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 2) false) = canonicalInput5923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5923 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 2) true) = canonicalInput18868.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18868 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 3 =
      Integer.Sparse.eval targetPsiChild54_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 3) false) = canonicalInput5927.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5927 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 3) true) = canonicalInput18865.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18865 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 4 =
      Integer.Sparse.eval targetPsiChild54_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 4) false) = canonicalInput9473.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9473 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 4) true) = canonicalInput18862.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18862 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_5 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 5 =
      Integer.Sparse.eval targetPsiChild54_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 5) false) = canonicalInput9477.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9477 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 5) true) = canonicalInput18859.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18859 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_6 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 6 =
      Integer.Sparse.eval targetPsiChild54_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 6) false) = canonicalInput621.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound621 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 6) true) = canonicalInput18870.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18870 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_7 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 7 =
      Integer.Sparse.eval targetPsiChild54_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 7) false) = canonicalInput5924.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5924 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 7) true) = canonicalInput18867.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18867 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_8 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 8 =
      Integer.Sparse.eval targetPsiChild54_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 8) false) = canonicalInput5928.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5928 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 8) true) = canonicalInput18864.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18864 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_9 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 9 =
      Integer.Sparse.eval targetPsiChild54_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 9) false) = canonicalInput9474.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9474 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 9) true) = canonicalInput18861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18861 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_10 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 10 =
      Integer.Sparse.eval targetPsiChild54_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 10) false) = canonicalInput9478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 10) true) = canonicalInput18858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18858 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_11 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 11 =
      Integer.Sparse.eval targetPsiChild54_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 11) false) = canonicalInput14183.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14183 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 11) true) = canonicalInput18856.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18856 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_12 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 12 =
      Integer.Sparse.eval targetPsiChild54_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 12) false) = canonicalInput14186.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14186 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 12) true) = canonicalInput18854.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18854 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_13 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 13 =
      Integer.Sparse.eval targetPsiChild54_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 13) false) = canonicalInput18809.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18809 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 13) true) = canonicalInput18850.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18850 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_14 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 14 =
      Integer.Sparse.eval targetPsiChild54_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 14) false) = canonicalInput18814.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18814 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 14) true) = canonicalInput18848.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18848 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_15 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 15 =
      Integer.Sparse.eval targetPsiChild54_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 15) false) = canonicalInput14190.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14190 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 15) true) = canonicalInput18852.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18852 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild54_16 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 54 16 =
      Integer.Sparse.eval targetPsiChild54_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 16) false) = canonicalInput18847.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18847 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 16) true) = canonicalInput18847.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18847 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild54_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_17 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 17 =
      Integer.Sparse.eval targetPsiChild54_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 17) false) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 17) true) = canonicalInput18845.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18845 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 18 =
      Integer.Sparse.eval targetPsiChild54_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 18) false) = canonicalInput21822.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21822 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 18) true) = canonicalInput18843.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18843 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_19 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 19 =
      Integer.Sparse.eval targetPsiChild54_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 19) false) = canonicalInput21858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21858 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 19) true) = canonicalInput18841.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18841 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_20 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 20 =
      Integer.Sparse.eval targetPsiChild54_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 20) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 20) true) = canonicalInput18839.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18839 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild54_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 21 =
      Integer.Sparse.eval targetPsiChild54_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 21) false) = canonicalInput622.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound622 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 21) true) = canonicalInput18869.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18869 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 22 =
      Integer.Sparse.eval targetPsiChild54_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 22) false) = canonicalInput5925.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5925 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 22) true) = canonicalInput18866.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18866 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_23 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 23 =
      Integer.Sparse.eval targetPsiChild54_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 23) false) = canonicalInput5929.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5929 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 23) true) = canonicalInput18863.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18863 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_24 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 24 =
      Integer.Sparse.eval targetPsiChild54_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 24) false) = canonicalInput9475.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9475 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 24) true) = canonicalInput18860.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18860 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 25 =
      Integer.Sparse.eval targetPsiChild54_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 25) false) = canonicalInput9479.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9479 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 25) true) = canonicalInput18857.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18857 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_26 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 26 =
      Integer.Sparse.eval targetPsiChild54_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 26) false) = canonicalInput14184.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14184 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 26) true) = canonicalInput18855.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18855 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_27 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 27 =
      Integer.Sparse.eval targetPsiChild54_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 27) false) = canonicalInput14187.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14187 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 27) true) = canonicalInput18853.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18853 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_28 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 28 =
      Integer.Sparse.eval targetPsiChild54_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 28) false) = canonicalInput18810.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18810 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 28) true) = canonicalInput18849.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18849 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_29 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 29 =
      Integer.Sparse.eval targetPsiChild54_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 29) false) = canonicalInput14191.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14191 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 29) true) = canonicalInput18851.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18851 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_30 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 30 =
      Integer.Sparse.eval targetPsiChild54_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 30) false) = canonicalInput18876.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18876 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 30) true) = canonicalInput18846.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18846 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_31 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 31 =
      Integer.Sparse.eval targetPsiChild54_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 31) false) = canonicalInput18940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18940 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 31) true) = canonicalInput18844.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18844 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_32 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 32 =
      Integer.Sparse.eval targetPsiChild54_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 32) false) = canonicalInput21823.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21823 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 32) true) = canonicalInput18842.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18842 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_33 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 33 =
      Integer.Sparse.eval targetPsiChild54_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 33) false) = canonicalInput21887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21887 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 33) true) = canonicalInput18840.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18840 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 34 =
      Integer.Sparse.eval targetPsiChild54_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 34) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 34) true) = canonicalInput18838.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18838 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild54_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 35 =
      Integer.Sparse.eval targetPsiChild54_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 35) false) = canonicalInput23914.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23914 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 35) true) = canonicalInput18837.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18837 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_36 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 36 =
      Integer.Sparse.eval targetPsiChild54_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 36) false) = canonicalInput23916.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23916 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 36) true) = canonicalInput18836.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18836 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_37 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 37 =
      Integer.Sparse.eval targetPsiChild54_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 37) false) = canonicalInput24451.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24451 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 37) true) = canonicalInput18833.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18833 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 38 =
      Integer.Sparse.eval targetPsiChild54_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 38) false) = canonicalInput24453.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24453 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 38) true) = canonicalInput18832.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18832 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_39 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 39 =
      Integer.Sparse.eval targetPsiChild54_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 39) false) = canonicalInput23919.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23919 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 39) true) = canonicalInput18835.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18835 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_40 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 40 =
      Integer.Sparse.eval targetPsiChild54_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 40) false) = canonicalInput24454.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24454 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 40) true) = canonicalInput18831.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18831 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_41 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 41 =
      Integer.Sparse.eval targetPsiChild54_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 41) false) = canonicalInput24457.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24457 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 41) true) = canonicalInput18830.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18830 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_42 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 42 =
      Integer.Sparse.eval targetPsiChild54_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 42) false) = canonicalInput26945.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26945 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 42) true) = canonicalInput18827.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18827 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_43 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 43 =
      Integer.Sparse.eval targetPsiChild54_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 43) false) = canonicalInput26948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26948 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 43) true) = canonicalInput18826.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18826 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 44 =
      Integer.Sparse.eval targetPsiChild54_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 44) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 44) true) = canonicalInput18824.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18824 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild54_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 45 =
      Integer.Sparse.eval targetPsiChild54_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 45) false) = canonicalInput23923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23923 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 45) true) = canonicalInput18834.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18834 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 46 =
      Integer.Sparse.eval targetPsiChild54_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 46) false) = canonicalInput24458.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24458 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 46) true) = canonicalInput18829.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18829 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_47 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 47 =
      Integer.Sparse.eval targetPsiChild54_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 47) false) = canonicalInput24462.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24462 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 47) true) = canonicalInput18828.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18828 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild54_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 54 48 =
      Integer.Sparse.eval targetPsiChild54_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 48) false) = canonicalInput26949.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26949 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 48) true) = canonicalInput18825.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18825 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild54_49 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 49 =
      Integer.Sparse.eval targetPsiChild54_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 49) false) = canonicalInput27045.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27045 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 49) true) = canonicalInput18823.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18823 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_50 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 50 =
      Integer.Sparse.eval targetPsiChild54_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 50) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 50) true) = canonicalInput18822.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18822 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild54_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 51 =
      Integer.Sparse.eval targetPsiChild54_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 51) false) = canonicalInput30240.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30240 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 51) true) = canonicalInput18821.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18821 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild54_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_52 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 52 =
      Integer.Sparse.eval targetPsiChild54_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 52) false) = canonicalInput30244.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30244 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 52) true) = canonicalInput18820.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18820 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild54_53 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 54 53 =
      Integer.Sparse.eval targetPsiChild54_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 53) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 53) true) = canonicalInput18819.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18819 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild54_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild54_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 54 54 =
      Integer.Sparse.eval targetPsiChild54_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 54) false - blockExponent (psiExponent 54) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 54) false + blockExponent (psiExponent 54) true) = canonicalInput18818.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 54) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18818 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild54_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow54Projection : Integer.Sparse (Fin 1613) := [(0, 504), (60, 960), (87, 1440), (94, 1320), (145, -17280), (169, -8640), (287, 6480), (365, -34560), (366, -51840), (367, -17280), (426, 12960), (478, -17280), (483, -8640), (489, -8640), (515, -17280), (523, -51840), (524, -17280), (602, -69120), (610, -8640), (618, -8640), (638, -8640), (666, -21600), (668, -8640), (697, 1440), (698, -21600), (700, -2880), (821, 28800), (823, 34560), (826, 17280), (828, -8640), (829, -17280), (848, -25920), (850, 8640), (853, 8640), (854, 8640), (857, 8640), (865, -12960), (875, 8640), (890, -21600), (903, 17280), (936, 17280), (943, -95040), (952, 17280), (955, 17280), (973, 17280), (986, 17280), (1015, 25920), (1016, 8640), (1055, 7200), (1058, 2880), (1059, -6240), (1171, 17280), (1190, 51840), (1212, -2880), (1219, 2880), (1220, -2880), (1223, 1440), (1227, -1680), (1251, 4560), (1389, 14400)]

theorem targetPsiRow54 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 54) i) =
      Integer.Sparse.eval targetPsiRow54Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 54) i) =
      Integer.Sparse.eval (![targetPsiChild54_0Projection, targetPsiChild54_1Projection, targetPsiChild54_2Projection, targetPsiChild54_3Projection, targetPsiChild54_4Projection, targetPsiChild54_5Projection, targetPsiChild54_6Projection, targetPsiChild54_7Projection, targetPsiChild54_8Projection, targetPsiChild54_9Projection, targetPsiChild54_10Projection, targetPsiChild54_11Projection, targetPsiChild54_12Projection, targetPsiChild54_13Projection, targetPsiChild54_14Projection, targetPsiChild54_15Projection, targetPsiChild54_16Projection, targetPsiChild54_17Projection, targetPsiChild54_18Projection, targetPsiChild54_19Projection, targetPsiChild54_20Projection, targetPsiChild54_21Projection, targetPsiChild54_22Projection, targetPsiChild54_23Projection, targetPsiChild54_24Projection, targetPsiChild54_25Projection, targetPsiChild54_26Projection, targetPsiChild54_27Projection, targetPsiChild54_28Projection, targetPsiChild54_29Projection, targetPsiChild54_30Projection, targetPsiChild54_31Projection, targetPsiChild54_32Projection, targetPsiChild54_33Projection, targetPsiChild54_34Projection, targetPsiChild54_35Projection, targetPsiChild54_36Projection, targetPsiChild54_37Projection, targetPsiChild54_38Projection, targetPsiChild54_39Projection, targetPsiChild54_40Projection, targetPsiChild54_41Projection, targetPsiChild54_42Projection, targetPsiChild54_43Projection, targetPsiChild54_44Projection, targetPsiChild54_45Projection, targetPsiChild54_46Projection, targetPsiChild54_47Projection, targetPsiChild54_48Projection, targetPsiChild54_49Projection, targetPsiChild54_50Projection, targetPsiChild54_51Projection, targetPsiChild54_52Projection, targetPsiChild54_53Projection, targetPsiChild54_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild54_0 hH
    · exact targetPsiChild54_1 hH
    · exact targetPsiChild54_2 hH
    · exact targetPsiChild54_3 hH
    · exact targetPsiChild54_4 hH
    · exact targetPsiChild54_5 hH
    · exact targetPsiChild54_6 hH
    · exact targetPsiChild54_7 hH
    · exact targetPsiChild54_8 hH
    · exact targetPsiChild54_9 hH
    · exact targetPsiChild54_10 hH
    · exact targetPsiChild54_11 hH
    · exact targetPsiChild54_12 hH
    · exact targetPsiChild54_13 hH
    · exact targetPsiChild54_14 hH
    · exact targetPsiChild54_15 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 54) 16) =
        Integer.Sparse.eval targetPsiChild54_16Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild54_16 hH
    · exact targetPsiChild54_17 hH
    · exact targetPsiChild54_18 hH
    · exact targetPsiChild54_19 hH
    · exact targetPsiChild54_20 hH
    · exact targetPsiChild54_21 hH
    · exact targetPsiChild54_22 hH
    · exact targetPsiChild54_23 hH
    · exact targetPsiChild54_24 hH
    · exact targetPsiChild54_25 hH
    · exact targetPsiChild54_26 hH
    · exact targetPsiChild54_27 hH
    · exact targetPsiChild54_28 hH
    · exact targetPsiChild54_29 hH
    · exact targetPsiChild54_30 hH
    · exact targetPsiChild54_31 hH
    · exact targetPsiChild54_32 hH
    · exact targetPsiChild54_33 hH
    · exact targetPsiChild54_34 hH
    · exact targetPsiChild54_35 hH
    · exact targetPsiChild54_36 hH
    · exact targetPsiChild54_37 hH
    · exact targetPsiChild54_38 hH
    · exact targetPsiChild54_39 hH
    · exact targetPsiChild54_40 hH
    · exact targetPsiChild54_41 hH
    · exact targetPsiChild54_42 hH
    · exact targetPsiChild54_43 hH
    · exact targetPsiChild54_44 hH
    · exact targetPsiChild54_45 hH
    · exact targetPsiChild54_46 hH
    · exact targetPsiChild54_47 hH
    · exact targetPsiChild54_48 hH
    · exact targetPsiChild54_49 hH
    · exact targetPsiChild54_50 hH
    · exact targetPsiChild54_51 hH
    · exact targetPsiChild54_52 hH
    · exact targetPsiChild54_53 hH
    · exact targetPsiChild54_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 54) i) (targetPsiTerm H 54)
    (-1) 240 240 (-1) ![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] ![2, 6, 6, 3, 3, 6, 6, 2, 2, 2, 2, 6, 2, 2, 2, 3, 240, 2, 3, 2, 6, 2, 3, 6, 6, 3, 3, 2, 2, 6, 2, 2, 6, 2, 3, 2, 6, 6, 3, 6, 2, 2, 6, 2, 3, 2, 3, 6, 3, 2, 6, 2, 6, 6, 2] targetPsiRow54Projection ![targetPsiChild54_0Projection, targetPsiChild54_1Projection, targetPsiChild54_2Projection, targetPsiChild54_3Projection, targetPsiChild54_4Projection, targetPsiChild54_5Projection, targetPsiChild54_6Projection, targetPsiChild54_7Projection, targetPsiChild54_8Projection, targetPsiChild54_9Projection, targetPsiChild54_10Projection, targetPsiChild54_11Projection, targetPsiChild54_12Projection, targetPsiChild54_13Projection, targetPsiChild54_14Projection, targetPsiChild54_15Projection, targetPsiChild54_16Projection, targetPsiChild54_17Projection, targetPsiChild54_18Projection, targetPsiChild54_19Projection, targetPsiChild54_20Projection, targetPsiChild54_21Projection, targetPsiChild54_22Projection, targetPsiChild54_23Projection, targetPsiChild54_24Projection, targetPsiChild54_25Projection, targetPsiChild54_26Projection, targetPsiChild54_27Projection, targetPsiChild54_28Projection, targetPsiChild54_29Projection, targetPsiChild54_30Projection, targetPsiChild54_31Projection, targetPsiChild54_32Projection, targetPsiChild54_33Projection, targetPsiChild54_34Projection, targetPsiChild54_35Projection, targetPsiChild54_36Projection, targetPsiChild54_37Projection, targetPsiChild54_38Projection, targetPsiChild54_39Projection, targetPsiChild54_40Projection, targetPsiChild54_41Projection, targetPsiChild54_42Projection, targetPsiChild54_43Projection, targetPsiChild54_44Projection, targetPsiChild54_45Projection, targetPsiChild54_46Projection, targetPsiChild54_47Projection, targetPsiChild54_48Projection, targetPsiChild54_49Projection, targetPsiChild54_50Projection, targetPsiChild54_51Projection, targetPsiChild54_52Projection, targetPsiChild54_53Projection, targetPsiChild54_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

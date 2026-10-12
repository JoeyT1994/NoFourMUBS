import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical175
import NoFourMUBs.Step2.SOS.Canonical177
import NoFourMUBs.Step2.SOS.Canonical178
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical502
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical506
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

def targetPsiChild49_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild49_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 49 0 =
      Integer.Sparse.eval targetPsiChild49_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 0) false) = canonicalInput785.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound785 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 0) true) = canonicalInput21948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21948 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_1 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 1 =
      Integer.Sparse.eval targetPsiChild49_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 1) false) = canonicalInput786.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound786 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 1) true) = canonicalInput21947.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21947 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_2 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 2 =
      Integer.Sparse.eval targetPsiChild49_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 2) false) = canonicalInput9476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9476 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 2) true) = canonicalInput21944.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21944 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 3 =
      Integer.Sparse.eval targetPsiChild49_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 3) false) = canonicalInput9482.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9482 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 3) true) = canonicalInput21941.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21941 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 4 =
      Integer.Sparse.eval targetPsiChild49_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 4) false) = canonicalInput11208.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11208 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 4) true) = canonicalInput21938.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21938 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_5 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 5 =
      Integer.Sparse.eval targetPsiChild49_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 5) false) = canonicalInput11340.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11340 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 5) true) = canonicalInput21935.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21935 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_6 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 6 =
      Integer.Sparse.eval targetPsiChild49_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 6) false) = canonicalInput787.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound787 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 6) true) = canonicalInput21946.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21946 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection4)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_7 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 7 =
      Integer.Sparse.eval targetPsiChild49_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 7) false) = canonicalInput9477.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9477 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 7) true) = canonicalInput21943.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21943 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_8 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 8 =
      Integer.Sparse.eval targetPsiChild49_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 8) false) = canonicalInput9483.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9483 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 8) true) = canonicalInput21940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21940 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_9 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 9 =
      Integer.Sparse.eval targetPsiChild49_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 9) false) = canonicalInput11212.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11212 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 9) true) = canonicalInput21937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21937 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild49_10 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 49 10 =
      Integer.Sparse.eval targetPsiChild49_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 10) false) = canonicalInput11441.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11441 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 10) true) = canonicalInput21934.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21934 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild49_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_11 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 11 =
      Integer.Sparse.eval targetPsiChild49_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 11) false) = canonicalInput18813.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18813 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 11) true) = canonicalInput21932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21932 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_12 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 12 =
      Integer.Sparse.eval targetPsiChild49_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 12) false) = canonicalInput18878.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18878 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 12) true) = canonicalInput21930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21930 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_13 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 13 =
      Integer.Sparse.eval targetPsiChild49_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 13) false) = canonicalInput21825.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21825 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 13) true) = canonicalInput21926.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21926 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild49_14 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 49 14 =
      Integer.Sparse.eval targetPsiChild49_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 14) false) = canonicalInput21890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21890 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 14) true) = canonicalInput21924.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21924 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild49_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 15 =
      Integer.Sparse.eval targetPsiChild49_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 15) false) = canonicalInput18980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18980 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 15) true) = canonicalInput21928.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21928 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild49_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 49 16 =
      Integer.Sparse.eval targetPsiChild49_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 16) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 16) true) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild49_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_17 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 17 =
      Integer.Sparse.eval targetPsiChild49_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 17) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 17) true) = canonicalInput21921.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21921 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_18 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 18 =
      Integer.Sparse.eval targetPsiChild49_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 18) false) = canonicalInput22969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22969 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 18) true) = canonicalInput21919.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21919 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_19 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 19 =
      Integer.Sparse.eval targetPsiChild49_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 19) false) = canonicalInput23034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23034 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 19) true) = canonicalInput21917.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21917 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_20 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 20 =
      Integer.Sparse.eval targetPsiChild49_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 20) false) = canonicalInput23127.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23127 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 20) true) = canonicalInput21915.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21915 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild49_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 49 21 =
      Integer.Sparse.eval targetPsiChild49_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 21) false) = canonicalInput788.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound788 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 21) true) = canonicalInput21945.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21945 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_22 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 22 =
      Integer.Sparse.eval targetPsiChild49_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 22) false) = canonicalInput9478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 22) true) = canonicalInput21942.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21942 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_23 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 23 =
      Integer.Sparse.eval targetPsiChild49_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 23) false) = canonicalInput9484.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9484 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 23) true) = canonicalInput21939.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21939 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_24 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 24 =
      Integer.Sparse.eval targetPsiChild49_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 24) false) = canonicalInput11218.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11218 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 24) true) = canonicalInput21936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21936 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_25 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 25 =
      Integer.Sparse.eval targetPsiChild49_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 25) false) = canonicalInput11455.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11455 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 25) true) = canonicalInput21933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21933 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_26 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 26 =
      Integer.Sparse.eval targetPsiChild49_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 26) false) = canonicalInput18814.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18814 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 26) true) = canonicalInput21931.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21931 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild49_27 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 49 27 =
      Integer.Sparse.eval targetPsiChild49_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 27) false) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 27) true) = canonicalInput21929.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21929 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild49_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild49_28 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 49 28 =
      Integer.Sparse.eval targetPsiChild49_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 28) false) = canonicalInput21858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21858 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 28) true) = canonicalInput21925.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21925 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild49_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_29 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 29 =
      Integer.Sparse.eval targetPsiChild49_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 29) false) = canonicalInput19009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19009 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 29) true) = canonicalInput21927.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21927 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_30 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 30 =
      Integer.Sparse.eval targetPsiChild49_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 30) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 30) true) = canonicalInput21922.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21922 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_31 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 31 =
      Integer.Sparse.eval targetPsiChild49_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 31) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 31) true) = canonicalInput21920.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21920 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_32 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 32 =
      Integer.Sparse.eval targetPsiChild49_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 32) false) = canonicalInput22998.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22998 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 32) true) = canonicalInput21918.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21918 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_33 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 33 =
      Integer.Sparse.eval targetPsiChild49_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 33) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 33) true) = canonicalInput21916.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21916 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild49_34 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 49 34 =
      Integer.Sparse.eval targetPsiChild49_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 34) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 34) true) = canonicalInput21914.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21914 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild49_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 49 35 =
      Integer.Sparse.eval targetPsiChild49_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 35) false) = canonicalInput24452.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24452 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 35) true) = canonicalInput21913.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21913 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_36 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 36 =
      Integer.Sparse.eval targetPsiChild49_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 36) false) = canonicalInput24456.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24456 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 36) true) = canonicalInput21912.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21912 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_37 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 37 =
      Integer.Sparse.eval targetPsiChild49_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 37) false) = canonicalInput26947.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26947 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 37) true) = canonicalInput21909.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21909 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild49_38 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 49 38 =
      Integer.Sparse.eval targetPsiChild49_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 38) false) = canonicalInput26951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26951 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 38) true) = canonicalInput21908.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21908 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild49_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_39 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 39 =
      Integer.Sparse.eval targetPsiChild49_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 39) false) = canonicalInput24461.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24461 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 39) true) = canonicalInput21911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21911 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_40 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 40 =
      Integer.Sparse.eval targetPsiChild49_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 40) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 40) true) = canonicalInput21907.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21907 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_41 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 41 =
      Integer.Sparse.eval targetPsiChild49_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 41) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 41) true) = canonicalInput21906.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21906 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_42 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 42 =
      Integer.Sparse.eval targetPsiChild49_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 42) false) = canonicalInput30243.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30243 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 42) true) = canonicalInput21903.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21903 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_43 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 43 =
      Integer.Sparse.eval targetPsiChild49_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 43) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 43) true) = canonicalInput21902.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21902 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild49_44 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 49 44 =
      Integer.Sparse.eval targetPsiChild49_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 44) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 44) true) = canonicalInput21900.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21900 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild49_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 49 45 =
      Integer.Sparse.eval targetPsiChild49_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 45) false) = canonicalInput24466.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24466 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 45) true) = canonicalInput21910.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21910 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild49_46 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 49 46 =
      Integer.Sparse.eval targetPsiChild49_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 46) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 46) true) = canonicalInput21905.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21905 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_47 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 47 =
      Integer.Sparse.eval targetPsiChild49_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 47) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 47) true) = canonicalInput21904.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21904 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild49_48 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 49 48 =
      Integer.Sparse.eval targetPsiChild49_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 48) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 48) true) = canonicalInput21901.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21901 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild49_49 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 49 49 =
      Integer.Sparse.eval targetPsiChild49_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 49) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 49) true) = canonicalInput21899.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21899 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_50 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 50 =
      Integer.Sparse.eval targetPsiChild49_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 50) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 50) true) = canonicalInput21898.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21898 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild49_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 49 51 =
      Integer.Sparse.eval targetPsiChild49_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 51) false) = canonicalInput32130.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32130 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 51) true) = canonicalInput21897.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21897 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild49_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_52 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 52 =
      Integer.Sparse.eval targetPsiChild49_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 52) false) = canonicalInput32226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32226 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 52) true) = canonicalInput21896.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21896 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild49_53 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 49 53 =
      Integer.Sparse.eval targetPsiChild49_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 53) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 53) true) = canonicalInput21895.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21895 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild49_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild49_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 49 54 =
      Integer.Sparse.eval targetPsiChild49_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 49) false - blockExponent (psiExponent 54) false) = canonicalInput32384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32384 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 49) false + blockExponent (psiExponent 54) true) = canonicalInput21894.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 49) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21894 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild49_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow49Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow49 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 49) i) =
      Integer.Sparse.eval targetPsiRow49Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 360, 360, 20, 20, 360, 360, 45, 45, 45, 90, 360, 45, 45, 90, 20, 5, 45, 20, 45, 360, 120, 20, 360, 360, 20, 20, 90, 90, 360, 45, 45, 360, 45, 10, 120, 360, 360, 20, 360, 45, 45, 360, 45, 10, 120, 10, 360, 10, 45, 360, 120, 360, 360, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 49) i) =
      Integer.Sparse.eval (![targetPsiChild49_0Projection, targetPsiChild49_1Projection, targetPsiChild49_2Projection, targetPsiChild49_3Projection, targetPsiChild49_4Projection, targetPsiChild49_5Projection, targetPsiChild49_6Projection, targetPsiChild49_7Projection, targetPsiChild49_8Projection, targetPsiChild49_9Projection, targetPsiChild49_10Projection, targetPsiChild49_11Projection, targetPsiChild49_12Projection, targetPsiChild49_13Projection, targetPsiChild49_14Projection, targetPsiChild49_15Projection, targetPsiChild49_16Projection, targetPsiChild49_17Projection, targetPsiChild49_18Projection, targetPsiChild49_19Projection, targetPsiChild49_20Projection, targetPsiChild49_21Projection, targetPsiChild49_22Projection, targetPsiChild49_23Projection, targetPsiChild49_24Projection, targetPsiChild49_25Projection, targetPsiChild49_26Projection, targetPsiChild49_27Projection, targetPsiChild49_28Projection, targetPsiChild49_29Projection, targetPsiChild49_30Projection, targetPsiChild49_31Projection, targetPsiChild49_32Projection, targetPsiChild49_33Projection, targetPsiChild49_34Projection, targetPsiChild49_35Projection, targetPsiChild49_36Projection, targetPsiChild49_37Projection, targetPsiChild49_38Projection, targetPsiChild49_39Projection, targetPsiChild49_40Projection, targetPsiChild49_41Projection, targetPsiChild49_42Projection, targetPsiChild49_43Projection, targetPsiChild49_44Projection, targetPsiChild49_45Projection, targetPsiChild49_46Projection, targetPsiChild49_47Projection, targetPsiChild49_48Projection, targetPsiChild49_49Projection, targetPsiChild49_50Projection, targetPsiChild49_51Projection, targetPsiChild49_52Projection, targetPsiChild49_53Projection, targetPsiChild49_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild49_0 hH
    · exact targetPsiChild49_1 hH
    · exact targetPsiChild49_2 hH
    · exact targetPsiChild49_3 hH
    · exact targetPsiChild49_4 hH
    · exact targetPsiChild49_5 hH
    · exact targetPsiChild49_6 hH
    · exact targetPsiChild49_7 hH
    · exact targetPsiChild49_8 hH
    · exact targetPsiChild49_9 hH
    · exact targetPsiChild49_10 hH
    · exact targetPsiChild49_11 hH
    · exact targetPsiChild49_12 hH
    · exact targetPsiChild49_13 hH
    · exact targetPsiChild49_14 hH
    · exact targetPsiChild49_15 hH
    · exact targetPsiChild49_16 hH
    · exact targetPsiChild49_17 hH
    · exact targetPsiChild49_18 hH
    · exact targetPsiChild49_19 hH
    · exact targetPsiChild49_20 hH
    · exact targetPsiChild49_21 hH
    · exact targetPsiChild49_22 hH
    · exact targetPsiChild49_23 hH
    · exact targetPsiChild49_24 hH
    · exact targetPsiChild49_25 hH
    · exact targetPsiChild49_26 hH
    · exact targetPsiChild49_27 hH
    · exact targetPsiChild49_28 hH
    · exact targetPsiChild49_29 hH
    · exact targetPsiChild49_30 hH
    · exact targetPsiChild49_31 hH
    · exact targetPsiChild49_32 hH
    · exact targetPsiChild49_33 hH
    · exact targetPsiChild49_34 hH
    · exact targetPsiChild49_35 hH
    · exact targetPsiChild49_36 hH
    · exact targetPsiChild49_37 hH
    · exact targetPsiChild49_38 hH
    · exact targetPsiChild49_39 hH
    · exact targetPsiChild49_40 hH
    · exact targetPsiChild49_41 hH
    · exact targetPsiChild49_42 hH
    · exact targetPsiChild49_43 hH
    · exact targetPsiChild49_44 hH
    · exact targetPsiChild49_45 hH
    · exact targetPsiChild49_46 hH
    · exact targetPsiChild49_47 hH
    · exact targetPsiChild49_48 hH
    · exact targetPsiChild49_49 hH
    · exact targetPsiChild49_50 hH
    · exact targetPsiChild49_51 hH
    · exact targetPsiChild49_52 hH
    · exact targetPsiChild49_53 hH
    · exact targetPsiChild49_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 49) i) (targetPsiTerm H 49)
    (-1) 360 360 (-1) ![120, 360, 360, 20, 20, 360, 360, 45, 45, 45, 90, 360, 45, 45, 90, 20, 5, 45, 20, 45, 360, 120, 20, 360, 360, 20, 20, 90, 90, 360, 45, 45, 360, 45, 10, 120, 360, 360, 20, 360, 45, 45, 360, 45, 10, 120, 10, 360, 10, 45, 360, 120, 360, 360, 120] ![3, 1, 1, 18, 18, 1, 1, 8, 8, 8, 4, 1, 8, 8, 4, 18, 72, 8, 18, 8, 1, 3, 18, 1, 1, 18, 18, 4, 4, 1, 8, 8, 1, 8, 36, 3, 1, 1, 18, 1, 8, 8, 1, 8, 36, 3, 36, 1, 36, 8, 1, 3, 1, 1, 3] targetPsiRow49Projection ![targetPsiChild49_0Projection, targetPsiChild49_1Projection, targetPsiChild49_2Projection, targetPsiChild49_3Projection, targetPsiChild49_4Projection, targetPsiChild49_5Projection, targetPsiChild49_6Projection, targetPsiChild49_7Projection, targetPsiChild49_8Projection, targetPsiChild49_9Projection, targetPsiChild49_10Projection, targetPsiChild49_11Projection, targetPsiChild49_12Projection, targetPsiChild49_13Projection, targetPsiChild49_14Projection, targetPsiChild49_15Projection, targetPsiChild49_16Projection, targetPsiChild49_17Projection, targetPsiChild49_18Projection, targetPsiChild49_19Projection, targetPsiChild49_20Projection, targetPsiChild49_21Projection, targetPsiChild49_22Projection, targetPsiChild49_23Projection, targetPsiChild49_24Projection, targetPsiChild49_25Projection, targetPsiChild49_26Projection, targetPsiChild49_27Projection, targetPsiChild49_28Projection, targetPsiChild49_29Projection, targetPsiChild49_30Projection, targetPsiChild49_31Projection, targetPsiChild49_32Projection, targetPsiChild49_33Projection, targetPsiChild49_34Projection, targetPsiChild49_35Projection, targetPsiChild49_36Projection, targetPsiChild49_37Projection, targetPsiChild49_38Projection, targetPsiChild49_39Projection, targetPsiChild49_40Projection, targetPsiChild49_41Projection, targetPsiChild49_42Projection, targetPsiChild49_43Projection, targetPsiChild49_44Projection, targetPsiChild49_45Projection, targetPsiChild49_46Projection, targetPsiChild49_47Projection, targetPsiChild49_48Projection, targetPsiChild49_49Projection, targetPsiChild49_50Projection, targetPsiChild49_51Projection, targetPsiChild49_52Projection, targetPsiChild49_53Projection, targetPsiChild49_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

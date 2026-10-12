import NoFourMUBs.Step2.SOS.Canonical013
import NoFourMUBs.Step2.SOS.Canonical177
import NoFourMUBs.Step2.SOS.Canonical178
import NoFourMUBs.Step2.SOS.Canonical179
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical346
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical368
import NoFourMUBs.Step2.SOS.Canonical369
import NoFourMUBs.Step2.SOS.Canonical370
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical504
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical507
import NoFourMUBs.Step2.SOS.Canonical512
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

def targetPsiChild40_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild40_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 40 0 =
      Integer.Sparse.eval targetPsiChild40_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 0) false) = canonicalInput845.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound845 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 0) true) = canonicalInput23185.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23185 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_1 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 1 =
      Integer.Sparse.eval targetPsiChild40_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 1) false) = canonicalInput846.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound846 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 1) true) = canonicalInput23184.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23184 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_2 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 2 =
      Integer.Sparse.eval targetPsiChild40_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 2) false) = canonicalInput11340.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11340 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 2) true) = canonicalInput23181.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23181 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 3 =
      Integer.Sparse.eval targetPsiChild40_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 3) false) = canonicalInput11478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 3) true) = canonicalInput23178.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23178 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 4 =
      Integer.Sparse.eval targetPsiChild40_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 4) false) = canonicalInput12202.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12202 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 4) true) = canonicalInput23175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23175 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_5 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 5 =
      Integer.Sparse.eval targetPsiChild40_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 5) false) = canonicalInput12206.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12206 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 5) true) = canonicalInput23172.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23172 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_6 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 6 =
      Integer.Sparse.eval targetPsiChild40_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 6) false) = canonicalInput847.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound847 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 6) true) = canonicalInput23183.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23183 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild40_7 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 40 7 =
      Integer.Sparse.eval targetPsiChild40_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 7) false) = canonicalInput11441.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11441 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 7) true) = canonicalInput23180.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23180 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild40_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_8 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 8 =
      Integer.Sparse.eval targetPsiChild40_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 8) false) = canonicalInput11492.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11492 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 8) true) = canonicalInput23177.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23177 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_9 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 9 =
      Integer.Sparse.eval targetPsiChild40_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 9) false) = canonicalInput12203.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12203 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 9) true) = canonicalInput23174.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23174 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection4)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_10 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 10 =
      Integer.Sparse.eval targetPsiChild40_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 10) false) = canonicalInput12207.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12207 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 10) true) = canonicalInput23171.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23171 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_11 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 11 =
      Integer.Sparse.eval targetPsiChild40_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 11) false) = canonicalInput21890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21890 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 11) true) = canonicalInput23169.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23169 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_12 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 12 =
      Integer.Sparse.eval targetPsiChild40_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 12) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 12) true) = canonicalInput23167.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23167 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_13 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 13 =
      Integer.Sparse.eval targetPsiChild40_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 13) false) = canonicalInput23034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23034 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 13) true) = canonicalInput23163.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23163 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild40_14 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 40 14 =
      Integer.Sparse.eval targetPsiChild40_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 14) false) = canonicalInput23127.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23127 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 14) true) = canonicalInput23161.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23161 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild40_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 15 =
      Integer.Sparse.eval targetPsiChild40_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 15) false) = canonicalInput22175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22175 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 15) true) = canonicalInput23165.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23165 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild40_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 40 16 =
      Integer.Sparse.eval targetPsiChild40_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 16) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 16) true) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild40_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_17 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 17 =
      Integer.Sparse.eval targetPsiChild40_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 17) false) = canonicalInput23253.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23253 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 17) true) = canonicalInput23158.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23158 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_18 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 18 =
      Integer.Sparse.eval targetPsiChild40_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 18) false) = canonicalInput23591.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23591 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 18) true) = canonicalInput23156.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23156 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_19 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 19 =
      Integer.Sparse.eval targetPsiChild40_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 19) false) = canonicalInput23624.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23624 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 19) true) = canonicalInput23154.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23154 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_20 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 20 =
      Integer.Sparse.eval targetPsiChild40_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 20) false) = canonicalInput23693.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23693 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 20) true) = canonicalInput23152.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23152 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild40_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 40 21 =
      Integer.Sparse.eval targetPsiChild40_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 21) false) = canonicalInput848.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound848 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 21) true) = canonicalInput23182.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23182 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_22 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 22 =
      Integer.Sparse.eval targetPsiChild40_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 22) false) = canonicalInput11455.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11455 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 22) true) = canonicalInput23179.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23179 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_23 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 23 =
      Integer.Sparse.eval targetPsiChild40_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 23) false) = canonicalInput11500.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11500 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 23) true) = canonicalInput23176.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23176 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_24 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 24 =
      Integer.Sparse.eval targetPsiChild40_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 24) false) = canonicalInput12204.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12204 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 24) true) = canonicalInput23173.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23173 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_25 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 25 =
      Integer.Sparse.eval targetPsiChild40_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 25) false) = canonicalInput12208.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound12208 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 25) true) = canonicalInput23170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23170 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild40_26 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 40 26 =
      Integer.Sparse.eval targetPsiChild40_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 26) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 26) true) = canonicalInput23168.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23168 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_27 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 27 =
      Integer.Sparse.eval targetPsiChild40_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 27) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 27) true) = canonicalInput23166.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23166 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_28 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 28 =
      Integer.Sparse.eval targetPsiChild40_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 28) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 28) true) = canonicalInput23162.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23162 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_29 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 29 =
      Integer.Sparse.eval targetPsiChild40_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 29) false) = canonicalInput22204.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22204 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 29) true) = canonicalInput23164.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23164 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_30 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 30 =
      Integer.Sparse.eval targetPsiChild40_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 30) false) = canonicalInput23221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23221 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 30) true) = canonicalInput23159.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23159 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild40_31 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 40 31 =
      Integer.Sparse.eval targetPsiChild40_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 31) false) = canonicalInput23286.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23286 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 31) true) = canonicalInput23157.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23157 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild40_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_32 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 32 =
      Integer.Sparse.eval targetPsiChild40_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 32) false) = canonicalInput23620.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23620 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 32) true) = canonicalInput23155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23155 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild40_33 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 40 33 =
      Integer.Sparse.eval targetPsiChild40_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 33) false) = canonicalInput23660.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23660 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 33) true) = canonicalInput23153.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23153 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild40_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_34 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 34 =
      Integer.Sparse.eval targetPsiChild40_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 34) false) = canonicalInput23694.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23694 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 34) true) = canonicalInput23151.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23151 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild40_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 40 35 =
      Integer.Sparse.eval targetPsiChild40_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 35) false) = canonicalInput26951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26951 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 35) true) = canonicalInput23150.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23150 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_36 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 36 =
      Integer.Sparse.eval targetPsiChild40_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 36) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 36) true) = canonicalInput23149.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23149 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_37 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 37 =
      Integer.Sparse.eval targetPsiChild40_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 37) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 37) true) = canonicalInput23146.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23146 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild40_38 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 40 38 =
      Integer.Sparse.eval targetPsiChild40_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 38) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 38) true) = canonicalInput23145.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23145 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_39 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 39 =
      Integer.Sparse.eval targetPsiChild40_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 39) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 39) true) = canonicalInput23148.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23148 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_40 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 40 =
      Integer.Sparse.eval targetPsiChild40_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 40) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 40) true) = canonicalInput23144.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23144 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_41 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 41 =
      Integer.Sparse.eval targetPsiChild40_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 41) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 41) true) = canonicalInput23143.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23143 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_42 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 42 =
      Integer.Sparse.eval targetPsiChild40_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 42) false) = canonicalInput32226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32226 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 42) true) = canonicalInput23140.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23140 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_43 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 43 =
      Integer.Sparse.eval targetPsiChild40_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 43) false) = canonicalInput32291.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32291 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 43) true) = canonicalInput23139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23139 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild40_44 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 40 44 =
      Integer.Sparse.eval targetPsiChild40_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 44) false) = canonicalInput32384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32384 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 44) true) = canonicalInput23137.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23137 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild40_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild40_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 40 45 =
      Integer.Sparse.eval targetPsiChild40_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 45) false) = canonicalInput27328.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27328 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 45) true) = canonicalInput23147.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23147 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild40_46 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 40 46 =
      Integer.Sparse.eval targetPsiChild40_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 46) false) = canonicalInput30991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30991 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 46) true) = canonicalInput23142.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23142 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_47 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 47 =
      Integer.Sparse.eval targetPsiChild40_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 47) false) = canonicalInput31024.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31024 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 47) true) = canonicalInput23141.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23141 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild40_48 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 40 48 =
      Integer.Sparse.eval targetPsiChild40_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 48) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 48) true) = canonicalInput23138.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23138 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild40_49 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 40 49 =
      Integer.Sparse.eval targetPsiChild40_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 49) false) = canonicalInput32417.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32417 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 49) true) = canonicalInput23136.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23136 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_50 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 50 =
      Integer.Sparse.eval targetPsiChild40_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 50) false) = canonicalInput32509.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32509 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 50) true) = canonicalInput23135.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23135 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild40_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 40 51 =
      Integer.Sparse.eval targetPsiChild40_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 51) false) = canonicalInput32797.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32797 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 51) true) = canonicalInput23134.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23134 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild40_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_52 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 52 =
      Integer.Sparse.eval targetPsiChild40_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 52) false) = canonicalInput32801.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32801 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 52) true) = canonicalInput23133.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23133 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild40_53 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 40 53 =
      Integer.Sparse.eval targetPsiChild40_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 53) false) = canonicalInput32805.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32805 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 53) true) = canonicalInput23132.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23132 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild40_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild40_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 40 54 =
      Integer.Sparse.eval targetPsiChild40_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 40) false - blockExponent (psiExponent 54) false) = canonicalInput32808.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32808 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 40) false + blockExponent (psiExponent 54) true) = canonicalInput23131.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 40) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound23131 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild40_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow40Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow40 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 40) i) =
      Integer.Sparse.eval targetPsiRow40Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 360, 360, 20, 20, 360, 360, 90, 45, 45, 45, 360, 45, 45, 90, 20, 5, 45, 20, 45, 360, 120, 20, 360, 360, 20, 10, 45, 45, 360, 45, 90, 360, 90, 20, 120, 360, 360, 10, 360, 45, 45, 360, 45, 20, 120, 10, 360, 10, 45, 360, 120, 360, 360, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 40) i) =
      Integer.Sparse.eval (![targetPsiChild40_0Projection, targetPsiChild40_1Projection, targetPsiChild40_2Projection, targetPsiChild40_3Projection, targetPsiChild40_4Projection, targetPsiChild40_5Projection, targetPsiChild40_6Projection, targetPsiChild40_7Projection, targetPsiChild40_8Projection, targetPsiChild40_9Projection, targetPsiChild40_10Projection, targetPsiChild40_11Projection, targetPsiChild40_12Projection, targetPsiChild40_13Projection, targetPsiChild40_14Projection, targetPsiChild40_15Projection, targetPsiChild40_16Projection, targetPsiChild40_17Projection, targetPsiChild40_18Projection, targetPsiChild40_19Projection, targetPsiChild40_20Projection, targetPsiChild40_21Projection, targetPsiChild40_22Projection, targetPsiChild40_23Projection, targetPsiChild40_24Projection, targetPsiChild40_25Projection, targetPsiChild40_26Projection, targetPsiChild40_27Projection, targetPsiChild40_28Projection, targetPsiChild40_29Projection, targetPsiChild40_30Projection, targetPsiChild40_31Projection, targetPsiChild40_32Projection, targetPsiChild40_33Projection, targetPsiChild40_34Projection, targetPsiChild40_35Projection, targetPsiChild40_36Projection, targetPsiChild40_37Projection, targetPsiChild40_38Projection, targetPsiChild40_39Projection, targetPsiChild40_40Projection, targetPsiChild40_41Projection, targetPsiChild40_42Projection, targetPsiChild40_43Projection, targetPsiChild40_44Projection, targetPsiChild40_45Projection, targetPsiChild40_46Projection, targetPsiChild40_47Projection, targetPsiChild40_48Projection, targetPsiChild40_49Projection, targetPsiChild40_50Projection, targetPsiChild40_51Projection, targetPsiChild40_52Projection, targetPsiChild40_53Projection, targetPsiChild40_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild40_0 hH
    · exact targetPsiChild40_1 hH
    · exact targetPsiChild40_2 hH
    · exact targetPsiChild40_3 hH
    · exact targetPsiChild40_4 hH
    · exact targetPsiChild40_5 hH
    · exact targetPsiChild40_6 hH
    · exact targetPsiChild40_7 hH
    · exact targetPsiChild40_8 hH
    · exact targetPsiChild40_9 hH
    · exact targetPsiChild40_10 hH
    · exact targetPsiChild40_11 hH
    · exact targetPsiChild40_12 hH
    · exact targetPsiChild40_13 hH
    · exact targetPsiChild40_14 hH
    · exact targetPsiChild40_15 hH
    · exact targetPsiChild40_16 hH
    · exact targetPsiChild40_17 hH
    · exact targetPsiChild40_18 hH
    · exact targetPsiChild40_19 hH
    · exact targetPsiChild40_20 hH
    · exact targetPsiChild40_21 hH
    · exact targetPsiChild40_22 hH
    · exact targetPsiChild40_23 hH
    · exact targetPsiChild40_24 hH
    · exact targetPsiChild40_25 hH
    · exact targetPsiChild40_26 hH
    · exact targetPsiChild40_27 hH
    · exact targetPsiChild40_28 hH
    · exact targetPsiChild40_29 hH
    · exact targetPsiChild40_30 hH
    · exact targetPsiChild40_31 hH
    · exact targetPsiChild40_32 hH
    · exact targetPsiChild40_33 hH
    · exact targetPsiChild40_34 hH
    · exact targetPsiChild40_35 hH
    · exact targetPsiChild40_36 hH
    · exact targetPsiChild40_37 hH
    · exact targetPsiChild40_38 hH
    · exact targetPsiChild40_39 hH
    · exact targetPsiChild40_40 hH
    · exact targetPsiChild40_41 hH
    · exact targetPsiChild40_42 hH
    · exact targetPsiChild40_43 hH
    · exact targetPsiChild40_44 hH
    · exact targetPsiChild40_45 hH
    · exact targetPsiChild40_46 hH
    · exact targetPsiChild40_47 hH
    · exact targetPsiChild40_48 hH
    · exact targetPsiChild40_49 hH
    · exact targetPsiChild40_50 hH
    · exact targetPsiChild40_51 hH
    · exact targetPsiChild40_52 hH
    · exact targetPsiChild40_53 hH
    · exact targetPsiChild40_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 40) i) (targetPsiTerm H 40)
    (-1) 360 360 (-1) ![120, 360, 360, 20, 20, 360, 360, 90, 45, 45, 45, 360, 45, 45, 90, 20, 5, 45, 20, 45, 360, 120, 20, 360, 360, 20, 10, 45, 45, 360, 45, 90, 360, 90, 20, 120, 360, 360, 10, 360, 45, 45, 360, 45, 20, 120, 10, 360, 10, 45, 360, 120, 360, 360, 120] ![3, 1, 1, 18, 18, 1, 1, 4, 8, 8, 8, 1, 8, 8, 4, 18, 72, 8, 18, 8, 1, 3, 18, 1, 1, 18, 36, 8, 8, 1, 8, 4, 1, 4, 18, 3, 1, 1, 36, 1, 8, 8, 1, 8, 18, 3, 36, 1, 36, 8, 1, 3, 1, 1, 3] targetPsiRow40Projection ![targetPsiChild40_0Projection, targetPsiChild40_1Projection, targetPsiChild40_2Projection, targetPsiChild40_3Projection, targetPsiChild40_4Projection, targetPsiChild40_5Projection, targetPsiChild40_6Projection, targetPsiChild40_7Projection, targetPsiChild40_8Projection, targetPsiChild40_9Projection, targetPsiChild40_10Projection, targetPsiChild40_11Projection, targetPsiChild40_12Projection, targetPsiChild40_13Projection, targetPsiChild40_14Projection, targetPsiChild40_15Projection, targetPsiChild40_16Projection, targetPsiChild40_17Projection, targetPsiChild40_18Projection, targetPsiChild40_19Projection, targetPsiChild40_20Projection, targetPsiChild40_21Projection, targetPsiChild40_22Projection, targetPsiChild40_23Projection, targetPsiChild40_24Projection, targetPsiChild40_25Projection, targetPsiChild40_26Projection, targetPsiChild40_27Projection, targetPsiChild40_28Projection, targetPsiChild40_29Projection, targetPsiChild40_30Projection, targetPsiChild40_31Projection, targetPsiChild40_32Projection, targetPsiChild40_33Projection, targetPsiChild40_34Projection, targetPsiChild40_35Projection, targetPsiChild40_36Projection, targetPsiChild40_37Projection, targetPsiChild40_38Projection, targetPsiChild40_39Projection, targetPsiChild40_40Projection, targetPsiChild40_41Projection, targetPsiChild40_42Projection, targetPsiChild40_43Projection, targetPsiChild40_44Projection, targetPsiChild40_45Projection, targetPsiChild40_46Projection, targetPsiChild40_47Projection, targetPsiChild40_48Projection, targetPsiChild40_49Projection, targetPsiChild40_50Projection, targetPsiChild40_51Projection, targetPsiChild40_52Projection, targetPsiChild40_53Projection, targetPsiChild40_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

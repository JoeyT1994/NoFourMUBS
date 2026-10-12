import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical178
import NoFourMUBs.Step2.SOS.Canonical179
import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical346
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical363
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
import NoFourMUBs.Step2.SOS.Canonical507
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

def targetPsiChild43_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild43_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 43 0 =
      Integer.Sparse.eval targetPsiChild43_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 0) false) = canonicalInput791.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound791 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 0) true) = canonicalInput22135.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22135 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_1 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 1 =
      Integer.Sparse.eval targetPsiChild43_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 1) false) = canonicalInput792.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound792 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 1) true) = canonicalInput22134.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22134 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_2 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 2 =
      Integer.Sparse.eval targetPsiChild43_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 2) false) = canonicalInput9482.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9482 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 2) true) = canonicalInput22131.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22131 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 3 =
      Integer.Sparse.eval targetPsiChild43_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 3) false) = canonicalInput9488.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9488 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 3) true) = canonicalInput22128.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22128 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 4 =
      Integer.Sparse.eval targetPsiChild43_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 4) false) = canonicalInput11441.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11441 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 4) true) = canonicalInput22125.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22125 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_5 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 5 =
      Integer.Sparse.eval targetPsiChild43_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 5) false) = canonicalInput11478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 5) true) = canonicalInput22122.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22122 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_6 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 6 =
      Integer.Sparse.eval targetPsiChild43_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 6) false) = canonicalInput793.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound793 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 6) true) = canonicalInput22133.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22133 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_7 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 7 =
      Integer.Sparse.eval targetPsiChild43_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 7) false) = canonicalInput9483.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9483 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 7) true) = canonicalInput22130.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22130 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection4)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_8 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 8 =
      Integer.Sparse.eval targetPsiChild43_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 8) false) = canonicalInput9489.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9489 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 8) true) = canonicalInput22127.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22127 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild43_9 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 43 9 =
      Integer.Sparse.eval targetPsiChild43_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 9) false) = canonicalInput11455.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11455 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 9) true) = canonicalInput22124.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22124 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild43_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_10 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 10 =
      Integer.Sparse.eval targetPsiChild43_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 10) false) = canonicalInput11492.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11492 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 10) true) = canonicalInput22121.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22121 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_11 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 11 =
      Integer.Sparse.eval targetPsiChild43_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 11) false) = canonicalInput18878.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18878 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 11) true) = canonicalInput22119.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22119 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild43_12 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 43 12 =
      Integer.Sparse.eval targetPsiChild43_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 12) false) = canonicalInput18980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18980 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 12) true) = canonicalInput22117.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22117 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild43_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_13 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 13 =
      Integer.Sparse.eval targetPsiChild43_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 13) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 13) true) = canonicalInput22113.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22113 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_14 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 14 =
      Integer.Sparse.eval targetPsiChild43_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 14) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 14) true) = canonicalInput22111.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22111 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 15 =
      Integer.Sparse.eval targetPsiChild43_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 15) false) = canonicalInput19074.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19074 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 15) true) = canonicalInput22115.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22115 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild43_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 43 16 =
      Integer.Sparse.eval targetPsiChild43_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 16) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 16) true) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild43_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild43_17 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 43 17 =
      Integer.Sparse.eval targetPsiChild43_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 17) false) = canonicalInput22175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22175 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 17) true) = canonicalInput22108.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22108 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild43_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild43_18 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 43 18 =
      Integer.Sparse.eval targetPsiChild43_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 18) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 18) true) = canonicalInput22106.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22106 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_19 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 19 =
      Integer.Sparse.eval targetPsiChild43_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 19) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 19) true) = canonicalInput22104.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22104 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_20 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 20 =
      Integer.Sparse.eval targetPsiChild43_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 20) false) = canonicalInput23253.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23253 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 20) true) = canonicalInput22102.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22102 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild43_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 43 21 =
      Integer.Sparse.eval targetPsiChild43_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 21) false) = canonicalInput794.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound794 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 21) true) = canonicalInput22132.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22132 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_22 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 22 =
      Integer.Sparse.eval targetPsiChild43_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 22) false) = canonicalInput9484.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9484 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 22) true) = canonicalInput22129.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22129 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_23 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 23 =
      Integer.Sparse.eval targetPsiChild43_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 23) false) = canonicalInput9490.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9490 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 23) true) = canonicalInput22126.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22126 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_24 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 24 =
      Integer.Sparse.eval targetPsiChild43_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 24) false) = canonicalInput11463.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11463 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 24) true) = canonicalInput22123.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22123 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_25 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 25 =
      Integer.Sparse.eval targetPsiChild43_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 25) false) = canonicalInput11500.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11500 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 25) true) = canonicalInput22120.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22120 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_26 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 26 =
      Integer.Sparse.eval targetPsiChild43_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 26) false) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 26) true) = canonicalInput22118.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22118 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_27 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 27 =
      Integer.Sparse.eval targetPsiChild43_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 27) false) = canonicalInput19009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19009 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 27) true) = canonicalInput22116.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22116 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_28 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 28 =
      Integer.Sparse.eval targetPsiChild43_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 28) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 28) true) = canonicalInput22112.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22112 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_29 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 29 =
      Integer.Sparse.eval targetPsiChild43_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 29) false) = canonicalInput19075.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19075 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 29) true) = canonicalInput22114.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22114 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild43_30 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 43 30 =
      Integer.Sparse.eval targetPsiChild43_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 30) false) = canonicalInput22139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22139 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 30) true) = canonicalInput22109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22109 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild43_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_31 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 31 =
      Integer.Sparse.eval targetPsiChild43_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 31) false) = canonicalInput22204.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22204 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 31) true) = canonicalInput22107.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22107 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_32 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 32 =
      Integer.Sparse.eval targetPsiChild43_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 32) false) = canonicalInput23124.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23124 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 32) true) = canonicalInput22105.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22105 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_33 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 33 =
      Integer.Sparse.eval targetPsiChild43_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 33) false) = canonicalInput23221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23221 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 33) true) = canonicalInput22103.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22103 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_34 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 34 =
      Integer.Sparse.eval targetPsiChild43_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 34) false) = canonicalInput23286.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23286 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 34) true) = canonicalInput22101.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22101 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild43_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 43 35 =
      Integer.Sparse.eval targetPsiChild43_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 35) false) = canonicalInput24456.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24456 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 35) true) = canonicalInput22100.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22100 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_36 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 36 =
      Integer.Sparse.eval targetPsiChild43_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 36) false) = canonicalInput24461.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24461 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 36) true) = canonicalInput22099.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22099 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_37 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 37 =
      Integer.Sparse.eval targetPsiChild43_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 37) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 37) true) = canonicalInput22096.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22096 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild43_38 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 43 38 =
      Integer.Sparse.eval targetPsiChild43_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 38) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 38) true) = canonicalInput22095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22095 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_39 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 39 =
      Integer.Sparse.eval targetPsiChild43_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 39) false) = canonicalInput24466.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24466 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 39) true) = canonicalInput22098.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22098 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_40 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 40 =
      Integer.Sparse.eval targetPsiChild43_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 40) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 40) true) = canonicalInput22094.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22094 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_41 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 41 =
      Integer.Sparse.eval targetPsiChild43_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 41) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 41) true) = canonicalInput22093.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22093 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_42 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 42 =
      Integer.Sparse.eval targetPsiChild43_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 42) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 42) true) = canonicalInput22090.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22090 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_43 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 43 =
      Integer.Sparse.eval targetPsiChild43_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 43) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 43) true) = canonicalInput22089.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22089 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild43_44 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 43 44 =
      Integer.Sparse.eval targetPsiChild43_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 44) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 44) true) = canonicalInput22087.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22087 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild43_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 43 45 =
      Integer.Sparse.eval targetPsiChild43_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 45) false) = canonicalInput24470.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24470 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 45) true) = canonicalInput22097.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22097 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild43_46 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 43 46 =
      Integer.Sparse.eval targetPsiChild43_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 46) false) = canonicalInput27324.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27324 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 46) true) = canonicalInput22092.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22092 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild43_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_47 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 47 =
      Integer.Sparse.eval targetPsiChild43_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 47) false) = canonicalInput27328.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27328 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 47) true) = canonicalInput22091.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22091 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild43_48 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 43 48 =
      Integer.Sparse.eval targetPsiChild43_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 48) false) = canonicalInput30861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30861 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 48) true) = canonicalInput22088.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22088 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild43_49 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 43 49 =
      Integer.Sparse.eval targetPsiChild43_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 49) false) = canonicalInput30991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30991 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 49) true) = canonicalInput22086.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22086 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_50 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 50 =
      Integer.Sparse.eval targetPsiChild43_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 50) false) = canonicalInput31024.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31024 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 50) true) = canonicalInput22085.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22085 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild43_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 43 51 =
      Integer.Sparse.eval targetPsiChild43_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 51) false) = canonicalInput32255.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32255 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 51) true) = canonicalInput22084.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22084 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild43_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_52 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 52 =
      Integer.Sparse.eval targetPsiChild43_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 52) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 52) true) = canonicalInput22083.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22083 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild43_53 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 43 53 =
      Integer.Sparse.eval targetPsiChild43_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 53) false) = canonicalInput32417.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32417 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 53) true) = canonicalInput22082.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22082 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild43_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild43_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 43 54 =
      Integer.Sparse.eval targetPsiChild43_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 43) false - blockExponent (psiExponent 54) false) = canonicalInput32509.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32509 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 43) false + blockExponent (psiExponent 54) true) = canonicalInput22081.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 43) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22081 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild43_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow43Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow43 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 43) i) =
      Integer.Sparse.eval targetPsiRow43Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 360, 360, 20, 20, 360, 360, 45, 45, 90, 45, 360, 90, 45, 45, 20, 5, 90, 10, 45, 360, 120, 20, 360, 360, 20, 20, 45, 45, 360, 90, 45, 360, 45, 20, 120, 360, 360, 10, 360, 45, 45, 360, 45, 10, 120, 20, 360, 10, 45, 360, 120, 360, 360, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 43) i) =
      Integer.Sparse.eval (![targetPsiChild43_0Projection, targetPsiChild43_1Projection, targetPsiChild43_2Projection, targetPsiChild43_3Projection, targetPsiChild43_4Projection, targetPsiChild43_5Projection, targetPsiChild43_6Projection, targetPsiChild43_7Projection, targetPsiChild43_8Projection, targetPsiChild43_9Projection, targetPsiChild43_10Projection, targetPsiChild43_11Projection, targetPsiChild43_12Projection, targetPsiChild43_13Projection, targetPsiChild43_14Projection, targetPsiChild43_15Projection, targetPsiChild43_16Projection, targetPsiChild43_17Projection, targetPsiChild43_18Projection, targetPsiChild43_19Projection, targetPsiChild43_20Projection, targetPsiChild43_21Projection, targetPsiChild43_22Projection, targetPsiChild43_23Projection, targetPsiChild43_24Projection, targetPsiChild43_25Projection, targetPsiChild43_26Projection, targetPsiChild43_27Projection, targetPsiChild43_28Projection, targetPsiChild43_29Projection, targetPsiChild43_30Projection, targetPsiChild43_31Projection, targetPsiChild43_32Projection, targetPsiChild43_33Projection, targetPsiChild43_34Projection, targetPsiChild43_35Projection, targetPsiChild43_36Projection, targetPsiChild43_37Projection, targetPsiChild43_38Projection, targetPsiChild43_39Projection, targetPsiChild43_40Projection, targetPsiChild43_41Projection, targetPsiChild43_42Projection, targetPsiChild43_43Projection, targetPsiChild43_44Projection, targetPsiChild43_45Projection, targetPsiChild43_46Projection, targetPsiChild43_47Projection, targetPsiChild43_48Projection, targetPsiChild43_49Projection, targetPsiChild43_50Projection, targetPsiChild43_51Projection, targetPsiChild43_52Projection, targetPsiChild43_53Projection, targetPsiChild43_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild43_0 hH
    · exact targetPsiChild43_1 hH
    · exact targetPsiChild43_2 hH
    · exact targetPsiChild43_3 hH
    · exact targetPsiChild43_4 hH
    · exact targetPsiChild43_5 hH
    · exact targetPsiChild43_6 hH
    · exact targetPsiChild43_7 hH
    · exact targetPsiChild43_8 hH
    · exact targetPsiChild43_9 hH
    · exact targetPsiChild43_10 hH
    · exact targetPsiChild43_11 hH
    · exact targetPsiChild43_12 hH
    · exact targetPsiChild43_13 hH
    · exact targetPsiChild43_14 hH
    · exact targetPsiChild43_15 hH
    · exact targetPsiChild43_16 hH
    · exact targetPsiChild43_17 hH
    · exact targetPsiChild43_18 hH
    · exact targetPsiChild43_19 hH
    · exact targetPsiChild43_20 hH
    · exact targetPsiChild43_21 hH
    · exact targetPsiChild43_22 hH
    · exact targetPsiChild43_23 hH
    · exact targetPsiChild43_24 hH
    · exact targetPsiChild43_25 hH
    · exact targetPsiChild43_26 hH
    · exact targetPsiChild43_27 hH
    · exact targetPsiChild43_28 hH
    · exact targetPsiChild43_29 hH
    · exact targetPsiChild43_30 hH
    · exact targetPsiChild43_31 hH
    · exact targetPsiChild43_32 hH
    · exact targetPsiChild43_33 hH
    · exact targetPsiChild43_34 hH
    · exact targetPsiChild43_35 hH
    · exact targetPsiChild43_36 hH
    · exact targetPsiChild43_37 hH
    · exact targetPsiChild43_38 hH
    · exact targetPsiChild43_39 hH
    · exact targetPsiChild43_40 hH
    · exact targetPsiChild43_41 hH
    · exact targetPsiChild43_42 hH
    · exact targetPsiChild43_43 hH
    · exact targetPsiChild43_44 hH
    · exact targetPsiChild43_45 hH
    · exact targetPsiChild43_46 hH
    · exact targetPsiChild43_47 hH
    · exact targetPsiChild43_48 hH
    · exact targetPsiChild43_49 hH
    · exact targetPsiChild43_50 hH
    · exact targetPsiChild43_51 hH
    · exact targetPsiChild43_52 hH
    · exact targetPsiChild43_53 hH
    · exact targetPsiChild43_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 43) i) (targetPsiTerm H 43)
    (-1) 360 360 (-1) ![120, 360, 360, 20, 20, 360, 360, 45, 45, 90, 45, 360, 90, 45, 45, 20, 5, 90, 10, 45, 360, 120, 20, 360, 360, 20, 20, 45, 45, 360, 90, 45, 360, 45, 20, 120, 360, 360, 10, 360, 45, 45, 360, 45, 10, 120, 20, 360, 10, 45, 360, 120, 360, 360, 120] ![3, 1, 1, 18, 18, 1, 1, 8, 8, 4, 8, 1, 4, 8, 8, 18, 72, 4, 36, 8, 1, 3, 18, 1, 1, 18, 18, 8, 8, 1, 4, 8, 1, 8, 18, 3, 1, 1, 36, 1, 8, 8, 1, 8, 36, 3, 18, 1, 36, 8, 1, 3, 1, 1, 3] targetPsiRow43Projection ![targetPsiChild43_0Projection, targetPsiChild43_1Projection, targetPsiChild43_2Projection, targetPsiChild43_3Projection, targetPsiChild43_4Projection, targetPsiChild43_5Projection, targetPsiChild43_6Projection, targetPsiChild43_7Projection, targetPsiChild43_8Projection, targetPsiChild43_9Projection, targetPsiChild43_10Projection, targetPsiChild43_11Projection, targetPsiChild43_12Projection, targetPsiChild43_13Projection, targetPsiChild43_14Projection, targetPsiChild43_15Projection, targetPsiChild43_16Projection, targetPsiChild43_17Projection, targetPsiChild43_18Projection, targetPsiChild43_19Projection, targetPsiChild43_20Projection, targetPsiChild43_21Projection, targetPsiChild43_22Projection, targetPsiChild43_23Projection, targetPsiChild43_24Projection, targetPsiChild43_25Projection, targetPsiChild43_26Projection, targetPsiChild43_27Projection, targetPsiChild43_28Projection, targetPsiChild43_29Projection, targetPsiChild43_30Projection, targetPsiChild43_31Projection, targetPsiChild43_32Projection, targetPsiChild43_33Projection, targetPsiChild43_34Projection, targetPsiChild43_35Projection, targetPsiChild43_36Projection, targetPsiChild43_37Projection, targetPsiChild43_38Projection, targetPsiChild43_39Projection, targetPsiChild43_40Projection, targetPsiChild43_41Projection, targetPsiChild43_42Projection, targetPsiChild43_43Projection, targetPsiChild43_44Projection, targetPsiChild43_45Projection, targetPsiChild43_46Projection, targetPsiChild43_47Projection, targetPsiChild43_48Projection, targetPsiChild43_49Projection, targetPsiChild43_50Projection, targetPsiChild43_51Projection, targetPsiChild43_52Projection, targetPsiChild43_53Projection, targetPsiChild43_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

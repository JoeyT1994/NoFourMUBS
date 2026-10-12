import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical175
import NoFourMUBs.Step2.SOS.Canonical178
import NoFourMUBs.Step2.SOS.Canonical179
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical359
import NoFourMUBs.Step2.SOS.Canonical360
import NoFourMUBs.Step2.SOS.Canonical361
import NoFourMUBs.Step2.SOS.Canonical362
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical502
import NoFourMUBs.Step2.SOS.Canonical503
import NoFourMUBs.Step2.SOS.Canonical505
import NoFourMUBs.Step2.SOS.Canonical506
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

def targetPsiChild44_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild44_0 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 0 =
      Integer.Sparse.eval targetPsiChild44_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 0) false) = canonicalInput786.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound786 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 0) true) = canonicalInput22009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22009 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild44_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_1 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 1 =
      Integer.Sparse.eval targetPsiChild44_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 1) false) = canonicalInput787.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound787 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 1) true) = canonicalInput22008.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22008 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild44_2 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 44 2 =
      Integer.Sparse.eval targetPsiChild44_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 2) false) = canonicalInput9477.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9477 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 2) true) = canonicalInput22005.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22005 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 3 =
      Integer.Sparse.eval targetPsiChild44_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 3) false) = canonicalInput9483.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9483 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 3) true) = canonicalInput22002.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22002 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 4 =
      Integer.Sparse.eval targetPsiChild44_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 4) false) = canonicalInput11212.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11212 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 4) true) = canonicalInput21999.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21999 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_5 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 5 =
      Integer.Sparse.eval targetPsiChild44_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 5) false) = canonicalInput11441.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11441 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 5) true) = canonicalInput21996.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21996 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild44_6 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 44 6 =
      Integer.Sparse.eval targetPsiChild44_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 6) false) = canonicalInput788.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound788 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 6) true) = canonicalInput22007.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22007 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_7 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 7 =
      Integer.Sparse.eval targetPsiChild44_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 7) false) = canonicalInput9478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 7) true) = canonicalInput22004.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22004 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_8 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 8 =
      Integer.Sparse.eval targetPsiChild44_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 8) false) = canonicalInput9484.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9484 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 8) true) = canonicalInput22001.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22001 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_9 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 9 =
      Integer.Sparse.eval targetPsiChild44_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 9) false) = canonicalInput11218.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11218 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 9) true) = canonicalInput21998.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21998 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_10 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 10 =
      Integer.Sparse.eval targetPsiChild44_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 10) false) = canonicalInput11455.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11455 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 10) true) = canonicalInput21995.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21995 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_11 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 11 =
      Integer.Sparse.eval targetPsiChild44_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 11) false) = canonicalInput18814.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18814 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 11) true) = canonicalInput21993.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21993 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_12 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 12 =
      Integer.Sparse.eval targetPsiChild44_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 12) false) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 12) true) = canonicalInput21991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21991 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_13 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 13 =
      Integer.Sparse.eval targetPsiChild44_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 13) false) = canonicalInput21858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21858 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 13) true) = canonicalInput21987.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21987 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild44_14 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 44 14 =
      Integer.Sparse.eval targetPsiChild44_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 14) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 14) true) = canonicalInput21985.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21985 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 15 =
      Integer.Sparse.eval targetPsiChild44_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 15) false) = canonicalInput19009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19009 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 15) true) = canonicalInput21989.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21989 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild44_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 44 16 =
      Integer.Sparse.eval targetPsiChild44_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 16) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 16) true) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild44_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild44_17 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 44 17 =
      Integer.Sparse.eval targetPsiChild44_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 17) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 17) true) = canonicalInput21982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21982 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_18 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 18 =
      Integer.Sparse.eval targetPsiChild44_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 18) false) = canonicalInput22998.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22998 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 18) true) = canonicalInput21980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21980 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild44_19 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 44 19 =
      Integer.Sparse.eval targetPsiChild44_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 19) false) = canonicalInput23095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23095 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 19) true) = canonicalInput21978.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21978 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_20 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 20 =
      Integer.Sparse.eval targetPsiChild44_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 20) false) = canonicalInput23160.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23160 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 20) true) = canonicalInput21976.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21976 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild44_21 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 21 =
      Integer.Sparse.eval targetPsiChild44_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 21) false) = canonicalInput789.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound789 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 21) true) = canonicalInput22006.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22006 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild44_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection41)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild44_22 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 44 22 =
      Integer.Sparse.eval targetPsiChild44_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 22) false) = canonicalInput9479.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9479 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 22) true) = canonicalInput22003.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22003 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild44_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild44_23 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 44 23 =
      Integer.Sparse.eval targetPsiChild44_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 23) false) = canonicalInput9485.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9485 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 23) true) = canonicalInput22000.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound22000 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild44_24 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 44 24 =
      Integer.Sparse.eval targetPsiChild44_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 24) false) = canonicalInput11219.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11219 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 24) true) = canonicalInput21997.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21997 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild44_25 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 44 25 =
      Integer.Sparse.eval targetPsiChild44_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 25) false) = canonicalInput11463.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound11463 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 25) true) = canonicalInput21994.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21994 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild44_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild44_26 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 44 26 =
      Integer.Sparse.eval targetPsiChild44_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 26) false) = canonicalInput18847.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18847 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 26) true) = canonicalInput21992.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21992 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild44_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_27 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 27 =
      Integer.Sparse.eval targetPsiChild44_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 27) false) = canonicalInput18940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18940 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 27) true) = canonicalInput21990.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21990 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_28 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 28 =
      Integer.Sparse.eval targetPsiChild44_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 28) false) = canonicalInput21887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21887 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 28) true) = canonicalInput21986.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21986 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_29 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 29 =
      Integer.Sparse.eval targetPsiChild44_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 29) false) = canonicalInput19010.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19010 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 29) true) = canonicalInput21988.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21988 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_30 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 30 =
      Integer.Sparse.eval targetPsiChild44_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 30) false) = canonicalInput22013.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22013 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 30) true) = canonicalInput21983.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21983 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_31 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 31 =
      Integer.Sparse.eval targetPsiChild44_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 31) false) = canonicalInput22139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22139 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 31) true) = canonicalInput21981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21981 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_32 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 32 =
      Integer.Sparse.eval targetPsiChild44_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 32) false) = canonicalInput22999.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22999 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 32) true) = canonicalInput21979.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21979 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_33 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 33 =
      Integer.Sparse.eval targetPsiChild44_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 33) false) = canonicalInput23124.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23124 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 33) true) = canonicalInput21977.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21977 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_34 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 34 =
      Integer.Sparse.eval targetPsiChild44_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 34) false) = canonicalInput23221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23221 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 34) true) = canonicalInput21975.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21975 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild44_35 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 35 =
      Integer.Sparse.eval targetPsiChild44_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 35) false) = canonicalInput24453.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24453 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 35) true) = canonicalInput21974.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21974 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild44_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_36 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 36 =
      Integer.Sparse.eval targetPsiChild44_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 36) false) = canonicalInput24457.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24457 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 36) true) = canonicalInput21973.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21973 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_37 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 37 =
      Integer.Sparse.eval targetPsiChild44_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 37) false) = canonicalInput26948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26948 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 37) true) = canonicalInput21970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21970 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_38 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 38 =
      Integer.Sparse.eval targetPsiChild44_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 38) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 38) true) = canonicalInput21969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21969 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild44_39 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 44 39 =
      Integer.Sparse.eval targetPsiChild44_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 39) false) = canonicalInput24462.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24462 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 39) true) = canonicalInput21972.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21972 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild44_40 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 40 =
      Integer.Sparse.eval targetPsiChild44_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 40) false) = canonicalInput27045.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27045 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 40) true) = canonicalInput21968.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21968 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild44_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild44_41 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 44 41 =
      Integer.Sparse.eval targetPsiChild44_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 41) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 41) true) = canonicalInput21967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21967 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild44_42 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 44 42 =
      Integer.Sparse.eval targetPsiChild44_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 42) false) = canonicalInput30244.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30244 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 42) true) = canonicalInput21964.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21964 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild44_43 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 44 43 =
      Integer.Sparse.eval targetPsiChild44_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 43) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 43) true) = canonicalInput21963.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21963 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection0)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild44_44 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 44 44 =
      Integer.Sparse.eval targetPsiChild44_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 44) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 44) true) = canonicalInput21961.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21961 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild44_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild44_45 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 45 =
      Integer.Sparse.eval targetPsiChild44_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 45) false) = canonicalInput24467.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24467 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 45) true) = canonicalInput21971.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21971 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild44_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_46 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 46 =
      Integer.Sparse.eval targetPsiChild44_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 46) false) = canonicalInput27199.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27199 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 46) true) = canonicalInput21966.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21966 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_47 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 47 =
      Integer.Sparse.eval targetPsiChild44_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 47) false) = canonicalInput27324.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27324 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 47) true) = canonicalInput21965.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21965 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild44_48 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 44 48 =
      Integer.Sparse.eval targetPsiChild44_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 48) false) = canonicalInput30370.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30370 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 48) true) = canonicalInput21962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21962 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild44_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild44_49 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 44 49 =
      Integer.Sparse.eval targetPsiChild44_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 49) false) = canonicalInput30861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30861 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 49) true) = canonicalInput21960.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21960 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild44_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_50 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 50 =
      Integer.Sparse.eval targetPsiChild44_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 50) false) = canonicalInput30991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30991 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 50) true) = canonicalInput21959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21959 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild44_51 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 51 =
      Integer.Sparse.eval targetPsiChild44_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 51) false) = canonicalInput32131.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32131 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 51) true) = canonicalInput21958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21958 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild44_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_52 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 52 =
      Integer.Sparse.eval targetPsiChild44_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 52) false) = canonicalInput32255.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32255 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 52) true) = canonicalInput21957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21957 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild44_53 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 53 =
      Integer.Sparse.eval targetPsiChild44_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 53) false) = canonicalInput32352.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32352 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 53) true) = canonicalInput21956.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21956 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild44_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild44_54 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 44 54 =
      Integer.Sparse.eval targetPsiChild44_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 44) false - blockExponent (psiExponent 54) false) = canonicalInput32417.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32417 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 44) false + blockExponent (psiExponent 54) true) = canonicalInput21955.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 44) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound21955 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild44_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow44Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 44) i) =
      Integer.Sparse.eval targetPsiRow44Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![80, 80, 16, 20, 20, 80, 16, 20, 20, 20, 20, 80, 20, 20, 10, 20, 5, 10, 20, 10, 80, 80, 4, 16, 16, 4, 4, 20, 20, 80, 20, 20, 80, 20, 20, 80, 80, 80, 20, 16, 20, 10, 16, 10, 4, 80, 20, 80, 20, 10, 80, 80, 80, 80, 80] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 44) i) =
      Integer.Sparse.eval (![targetPsiChild44_0Projection, targetPsiChild44_1Projection, targetPsiChild44_2Projection, targetPsiChild44_3Projection, targetPsiChild44_4Projection, targetPsiChild44_5Projection, targetPsiChild44_6Projection, targetPsiChild44_7Projection, targetPsiChild44_8Projection, targetPsiChild44_9Projection, targetPsiChild44_10Projection, targetPsiChild44_11Projection, targetPsiChild44_12Projection, targetPsiChild44_13Projection, targetPsiChild44_14Projection, targetPsiChild44_15Projection, targetPsiChild44_16Projection, targetPsiChild44_17Projection, targetPsiChild44_18Projection, targetPsiChild44_19Projection, targetPsiChild44_20Projection, targetPsiChild44_21Projection, targetPsiChild44_22Projection, targetPsiChild44_23Projection, targetPsiChild44_24Projection, targetPsiChild44_25Projection, targetPsiChild44_26Projection, targetPsiChild44_27Projection, targetPsiChild44_28Projection, targetPsiChild44_29Projection, targetPsiChild44_30Projection, targetPsiChild44_31Projection, targetPsiChild44_32Projection, targetPsiChild44_33Projection, targetPsiChild44_34Projection, targetPsiChild44_35Projection, targetPsiChild44_36Projection, targetPsiChild44_37Projection, targetPsiChild44_38Projection, targetPsiChild44_39Projection, targetPsiChild44_40Projection, targetPsiChild44_41Projection, targetPsiChild44_42Projection, targetPsiChild44_43Projection, targetPsiChild44_44Projection, targetPsiChild44_45Projection, targetPsiChild44_46Projection, targetPsiChild44_47Projection, targetPsiChild44_48Projection, targetPsiChild44_49Projection, targetPsiChild44_50Projection, targetPsiChild44_51Projection, targetPsiChild44_52Projection, targetPsiChild44_53Projection, targetPsiChild44_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild44_0 hH
    · exact targetPsiChild44_1 hH
    · exact targetPsiChild44_2 hH
    · exact targetPsiChild44_3 hH
    · exact targetPsiChild44_4 hH
    · exact targetPsiChild44_5 hH
    · exact targetPsiChild44_6 hH
    · exact targetPsiChild44_7 hH
    · exact targetPsiChild44_8 hH
    · exact targetPsiChild44_9 hH
    · exact targetPsiChild44_10 hH
    · exact targetPsiChild44_11 hH
    · exact targetPsiChild44_12 hH
    · exact targetPsiChild44_13 hH
    · exact targetPsiChild44_14 hH
    · exact targetPsiChild44_15 hH
    · exact targetPsiChild44_16 hH
    · exact targetPsiChild44_17 hH
    · exact targetPsiChild44_18 hH
    · exact targetPsiChild44_19 hH
    · exact targetPsiChild44_20 hH
    · exact targetPsiChild44_21 hH
    · exact targetPsiChild44_22 hH
    · exact targetPsiChild44_23 hH
    · exact targetPsiChild44_24 hH
    · exact targetPsiChild44_25 hH
    · exact targetPsiChild44_26 hH
    · exact targetPsiChild44_27 hH
    · exact targetPsiChild44_28 hH
    · exact targetPsiChild44_29 hH
    · exact targetPsiChild44_30 hH
    · exact targetPsiChild44_31 hH
    · exact targetPsiChild44_32 hH
    · exact targetPsiChild44_33 hH
    · exact targetPsiChild44_34 hH
    · exact targetPsiChild44_35 hH
    · exact targetPsiChild44_36 hH
    · exact targetPsiChild44_37 hH
    · exact targetPsiChild44_38 hH
    · exact targetPsiChild44_39 hH
    · exact targetPsiChild44_40 hH
    · exact targetPsiChild44_41 hH
    · exact targetPsiChild44_42 hH
    · exact targetPsiChild44_43 hH
    · exact targetPsiChild44_44 hH
    · exact targetPsiChild44_45 hH
    · exact targetPsiChild44_46 hH
    · exact targetPsiChild44_47 hH
    · exact targetPsiChild44_48 hH
    · exact targetPsiChild44_49 hH
    · exact targetPsiChild44_50 hH
    · exact targetPsiChild44_51 hH
    · exact targetPsiChild44_52 hH
    · exact targetPsiChild44_53 hH
    · exact targetPsiChild44_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 44) i) (targetPsiTerm H 44)
    (-1) 80 80 (-1) ![80, 80, 16, 20, 20, 80, 16, 20, 20, 20, 20, 80, 20, 20, 10, 20, 5, 10, 20, 10, 80, 80, 4, 16, 16, 4, 4, 20, 20, 80, 20, 20, 80, 20, 20, 80, 80, 80, 20, 16, 20, 10, 16, 10, 4, 80, 20, 80, 20, 10, 80, 80, 80, 80, 80] ![1, 1, 5, 4, 4, 1, 5, 4, 4, 4, 4, 1, 4, 4, 8, 4, 16, 8, 4, 8, 1, 1, 20, 5, 5, 20, 20, 4, 4, 1, 4, 4, 1, 4, 4, 1, 1, 1, 4, 5, 4, 8, 5, 8, 20, 1, 4, 1, 4, 8, 1, 1, 1, 1, 1] targetPsiRow44Projection ![targetPsiChild44_0Projection, targetPsiChild44_1Projection, targetPsiChild44_2Projection, targetPsiChild44_3Projection, targetPsiChild44_4Projection, targetPsiChild44_5Projection, targetPsiChild44_6Projection, targetPsiChild44_7Projection, targetPsiChild44_8Projection, targetPsiChild44_9Projection, targetPsiChild44_10Projection, targetPsiChild44_11Projection, targetPsiChild44_12Projection, targetPsiChild44_13Projection, targetPsiChild44_14Projection, targetPsiChild44_15Projection, targetPsiChild44_16Projection, targetPsiChild44_17Projection, targetPsiChild44_18Projection, targetPsiChild44_19Projection, targetPsiChild44_20Projection, targetPsiChild44_21Projection, targetPsiChild44_22Projection, targetPsiChild44_23Projection, targetPsiChild44_24Projection, targetPsiChild44_25Projection, targetPsiChild44_26Projection, targetPsiChild44_27Projection, targetPsiChild44_28Projection, targetPsiChild44_29Projection, targetPsiChild44_30Projection, targetPsiChild44_31Projection, targetPsiChild44_32Projection, targetPsiChild44_33Projection, targetPsiChild44_34Projection, targetPsiChild44_35Projection, targetPsiChild44_36Projection, targetPsiChild44_37Projection, targetPsiChild44_38Projection, targetPsiChild44_39Projection, targetPsiChild44_40Projection, targetPsiChild44_41Projection, targetPsiChild44_42Projection, targetPsiChild44_43Projection, targetPsiChild44_44Projection, targetPsiChild44_45Projection, targetPsiChild44_46Projection, targetPsiChild44_47Projection, targetPsiChild44_48Projection, targetPsiChild44_49Projection, targetPsiChild44_50Projection, targetPsiChild44_51Projection, targetPsiChild44_52Projection, targetPsiChild44_53Projection, targetPsiChild44_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

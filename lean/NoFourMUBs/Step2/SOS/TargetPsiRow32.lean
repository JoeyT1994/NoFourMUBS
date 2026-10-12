import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical296
import NoFourMUBs.Step2.SOS.Canonical297
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical344
import NoFourMUBs.Step2.SOS.Canonical345
import NoFourMUBs.Step2.SOS.Canonical346
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical518
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical527
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

def targetPsiChild32_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild32_0 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 32 0 =
      Integer.Sparse.eval targetPsiChild32_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 0) false) = canonicalInput9486.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9486 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 0) true) = canonicalInput27259.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27259 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_1 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 1 =
      Integer.Sparse.eval targetPsiChild32_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 1) false) = canonicalInput9487.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9487 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 1) true) = canonicalInput27258.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27258 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_2 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 2 =
      Integer.Sparse.eval targetPsiChild32_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 2) false) = canonicalInput18943.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18943 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 2) true) = canonicalInput27255.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27255 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild32_3 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 32 3 =
      Integer.Sparse.eval targetPsiChild32_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 3) false) = canonicalInput19011.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19011 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 3) true) = canonicalInput27252.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27252 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 4 =
      Integer.Sparse.eval targetPsiChild32_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 4) false) = canonicalInput22016.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22016 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 4) true) = canonicalInput27249.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27249 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_5 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 5 =
      Integer.Sparse.eval targetPsiChild32_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 5) false) = canonicalInput22141.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22141 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 5) true) = canonicalInput27246.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27246 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_6 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 6 =
      Integer.Sparse.eval targetPsiChild32_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 6) false) = canonicalInput9488.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9488 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 6) true) = canonicalInput27257.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27257 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_7 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 7 =
      Integer.Sparse.eval targetPsiChild32_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 7) false) = canonicalInput18947.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18947 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 7) true) = canonicalInput27254.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27254 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_8 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 8 =
      Integer.Sparse.eval targetPsiChild32_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 8) false) = canonicalInput19044.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19044 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 8) true) = canonicalInput27251.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27251 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_9 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 9 =
      Integer.Sparse.eval targetPsiChild32_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 9) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 9) true) = canonicalInput27248.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27248 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_10 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 10 =
      Integer.Sparse.eval targetPsiChild32_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 10) false) = canonicalInput22142.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22142 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 10) true) = canonicalInput27245.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27245 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_11 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 11 =
      Integer.Sparse.eval targetPsiChild32_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 11) false) = canonicalInput24459.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24459 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 11) true) = canonicalInput27243.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27243 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_12 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 12 =
      Integer.Sparse.eval targetPsiChild32_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 12) false) = canonicalInput24464.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24464 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 12) true) = canonicalInput27241.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27241 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_13 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 13 =
      Integer.Sparse.eval targetPsiChild32_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 13) false) = canonicalInput27076.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27076 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 13) true) = canonicalInput27237.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27237 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_14 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 14 =
      Integer.Sparse.eval targetPsiChild32_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 14) false) = canonicalInput27201.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27201 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 14) true) = canonicalInput27235.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27235 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild32_15 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 32 15 =
      Integer.Sparse.eval targetPsiChild32_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 15) false) = canonicalInput24468.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24468 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 15) true) = canonicalInput27239.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27239 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild32_16 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 32 16 =
      Integer.Sparse.eval targetPsiChild32_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 16) false) = canonicalInput27234.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27234 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 16) true) = canonicalInput27234.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27234 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild32_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_17 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 17 =
      Integer.Sparse.eval targetPsiChild32_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 17) false) = canonicalInput27326.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27326 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 17) true) = canonicalInput27232.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27232 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 18 =
      Integer.Sparse.eval targetPsiChild32_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 18) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 18) true) = canonicalInput27230.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27230 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_19 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 19 =
      Integer.Sparse.eval targetPsiChild32_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 19) false) = canonicalInput30893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30893 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 19) true) = canonicalInput27228.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27228 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_20 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 20 =
      Integer.Sparse.eval targetPsiChild32_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 20) false) = canonicalInput31022.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31022 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 20) true) = canonicalInput27226.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27226 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild32_21 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 32 21 =
      Integer.Sparse.eval targetPsiChild32_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 21) false) = canonicalInput9489.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9489 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 21) true) = canonicalInput27256.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27256 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 22 =
      Integer.Sparse.eval targetPsiChild32_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 22) false) = canonicalInput18980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18980 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 22) true) = canonicalInput27253.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27253 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_23 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 23 =
      Integer.Sparse.eval targetPsiChild32_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 23) false) = canonicalInput19074.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19074 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 23) true) = canonicalInput27250.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27250 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (576) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_24 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 24 =
      Integer.Sparse.eval targetPsiChild32_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 24) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 24) true) = canonicalInput27247.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27247 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (576 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 25 =
      Integer.Sparse.eval targetPsiChild32_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 25) false) = canonicalInput22175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22175 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 25) true) = canonicalInput27244.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27244 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild32_26 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 32 26 =
      Integer.Sparse.eval targetPsiChild32_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 26) false) = canonicalInput24460.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24460 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 26) true) = canonicalInput27242.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27242 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_27 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 27 =
      Integer.Sparse.eval targetPsiChild32_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 27) false) = canonicalInput24465.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24465 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 27) true) = canonicalInput27240.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27240 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_28 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 28 =
      Integer.Sparse.eval targetPsiChild32_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 28) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 28) true) = canonicalInput27236.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27236 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_29 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 29 =
      Integer.Sparse.eval targetPsiChild32_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 29) false) = canonicalInput24469.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24469 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 29) true) = canonicalInput27238.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27238 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_30 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 30 =
      Integer.Sparse.eval targetPsiChild32_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 30) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 30) true) = canonicalInput27233.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27233 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_31 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 31 =
      Integer.Sparse.eval targetPsiChild32_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 31) false) = canonicalInput27327.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27327 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 31) true) = canonicalInput27231.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27231 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_32 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 32 =
      Integer.Sparse.eval targetPsiChild32_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 32) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 32) true) = canonicalInput27229.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27229 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_33 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 33 =
      Integer.Sparse.eval targetPsiChild32_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 33) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 33) true) = canonicalInput27227.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27227 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild32_34 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 32 34 =
      Integer.Sparse.eval targetPsiChild32_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 34) false) = canonicalInput31023.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31023 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 34) true) = canonicalInput27225.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27225 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild32_35 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 32 35 =
      Integer.Sparse.eval targetPsiChild32_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 35) false) = canonicalInput32856.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32856 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 35) true) = canonicalInput27224.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27224 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_36 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 36 =
      Integer.Sparse.eval targetPsiChild32_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 36) false) = canonicalInput32860.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32860 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 36) true) = canonicalInput27223.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27223 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_37 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 37 =
      Integer.Sparse.eval targetPsiChild32_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 37) false) = canonicalInput32887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32887 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 37) true) = canonicalInput27220.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27220 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 38 =
      Integer.Sparse.eval targetPsiChild32_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 38) false) = canonicalInput32891.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32891 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 38) true) = canonicalInput27219.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27219 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_39 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 39 =
      Integer.Sparse.eval targetPsiChild32_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 39) false) = canonicalInput32864.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32864 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 39) true) = canonicalInput27222.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27222 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_40 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 40 =
      Integer.Sparse.eval targetPsiChild32_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 40) false) = canonicalInput32892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32892 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 40) true) = canonicalInput27218.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27218 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_41 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 41 =
      Integer.Sparse.eval targetPsiChild32_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 41) false) = canonicalInput32896.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32896 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 41) true) = canonicalInput27217.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27217 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 42 =
      Integer.Sparse.eval targetPsiChild32_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 42) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 42) true) = canonicalInput27214.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27214 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_43 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 43 =
      Integer.Sparse.eval targetPsiChild32_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 43) false) = canonicalInput33155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33155 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 43) true) = canonicalInput27213.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27213 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 44 =
      Integer.Sparse.eval targetPsiChild32_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 44) false) = canonicalInput33308.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33308 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 44) true) = canonicalInput27211.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27211 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild32_45 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 32 45 =
      Integer.Sparse.eval targetPsiChild32_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 45) false) = canonicalInput32867.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32867 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 45) true) = canonicalInput27221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27221 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 46 =
      Integer.Sparse.eval targetPsiChild32_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 46) false) = canonicalInput32897.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32897 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 46) true) = canonicalInput27216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27216 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 47 =
      Integer.Sparse.eval targetPsiChild32_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 47) false) = canonicalInput32900.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32900 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 47) true) = canonicalInput27215.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27215 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild32_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 32 48 =
      Integer.Sparse.eval targetPsiChild32_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 48) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 48) true) = canonicalInput27212.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27212 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild32_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild32_49 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 32 49 =
      Integer.Sparse.eval targetPsiChild32_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 49) false) = canonicalInput33309.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33309 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 49) true) = canonicalInput27210.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27210 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 50 =
      Integer.Sparse.eval targetPsiChild32_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 50) false) = canonicalInput33313.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33313 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 50) true) = canonicalInput27209.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27209 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild32_51 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 32 51 =
      Integer.Sparse.eval targetPsiChild32_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 51) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 51) true) = canonicalInput27208.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27208 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild32_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_52 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 52 =
      Integer.Sparse.eval targetPsiChild32_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 52) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 52) true) = canonicalInput27207.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27207 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild32_53 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 32 53 =
      Integer.Sparse.eval targetPsiChild32_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 53) false) = canonicalInput33755.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33755 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 53) true) = canonicalInput27206.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27206 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild32_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild32_54 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 32 54 =
      Integer.Sparse.eval targetPsiChild32_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 32) false - blockExponent (psiExponent 54) false) = canonicalInput33759.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33759 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 32) false + blockExponent (psiExponent 54) true) = canonicalInput27205.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 32) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27205 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild32_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow32Projection : Integer.Sparse (Fin 1613) := [(0, -738), (19, 1440), (20, -90), (94, -11160), (241, -18720), (287, 12960), (426, 103680), (666, 25920), (698, -172800), (700, -5760), (821, 17280), (848, -51840), (864, -12960), (869, -51840), (890, 51840), (943, -103680), (955, 25920), (957, -25920), (1015, 51840), (1016, 51840), (1050, 43200), (1055, 51840), (1059, -69120), (1221, 69120), (1226, -11520), (1227, -102240), (1250, -2160), (1251, 56340), (1389, 34560)]

theorem targetPsiRow32 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 32) i) =
      Integer.Sparse.eval targetPsiRow32Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![40, 1440, 1440, 16, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 16, 10, 360, 80, 360, 1440, 40, 80, 1440, 1440, 80, 16, 360, 360, 1440, 360, 360, 1440, 360, 16, 40, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 32) i) =
      Integer.Sparse.eval (![targetPsiChild32_0Projection, targetPsiChild32_1Projection, targetPsiChild32_2Projection, targetPsiChild32_3Projection, targetPsiChild32_4Projection, targetPsiChild32_5Projection, targetPsiChild32_6Projection, targetPsiChild32_7Projection, targetPsiChild32_8Projection, targetPsiChild32_9Projection, targetPsiChild32_10Projection, targetPsiChild32_11Projection, targetPsiChild32_12Projection, targetPsiChild32_13Projection, targetPsiChild32_14Projection, targetPsiChild32_15Projection, targetPsiChild32_16Projection, targetPsiChild32_17Projection, targetPsiChild32_18Projection, targetPsiChild32_19Projection, targetPsiChild32_20Projection, targetPsiChild32_21Projection, targetPsiChild32_22Projection, targetPsiChild32_23Projection, targetPsiChild32_24Projection, targetPsiChild32_25Projection, targetPsiChild32_26Projection, targetPsiChild32_27Projection, targetPsiChild32_28Projection, targetPsiChild32_29Projection, targetPsiChild32_30Projection, targetPsiChild32_31Projection, targetPsiChild32_32Projection, targetPsiChild32_33Projection, targetPsiChild32_34Projection, targetPsiChild32_35Projection, targetPsiChild32_36Projection, targetPsiChild32_37Projection, targetPsiChild32_38Projection, targetPsiChild32_39Projection, targetPsiChild32_40Projection, targetPsiChild32_41Projection, targetPsiChild32_42Projection, targetPsiChild32_43Projection, targetPsiChild32_44Projection, targetPsiChild32_45Projection, targetPsiChild32_46Projection, targetPsiChild32_47Projection, targetPsiChild32_48Projection, targetPsiChild32_49Projection, targetPsiChild32_50Projection, targetPsiChild32_51Projection, targetPsiChild32_52Projection, targetPsiChild32_53Projection, targetPsiChild32_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild32_0 hH
    · exact targetPsiChild32_1 hH
    · exact targetPsiChild32_2 hH
    · exact targetPsiChild32_3 hH
    · exact targetPsiChild32_4 hH
    · exact targetPsiChild32_5 hH
    · exact targetPsiChild32_6 hH
    · exact targetPsiChild32_7 hH
    · exact targetPsiChild32_8 hH
    · exact targetPsiChild32_9 hH
    · exact targetPsiChild32_10 hH
    · exact targetPsiChild32_11 hH
    · exact targetPsiChild32_12 hH
    · exact targetPsiChild32_13 hH
    · exact targetPsiChild32_14 hH
    · exact targetPsiChild32_15 hH
    · exact targetPsiChild32_16 hH
    · exact targetPsiChild32_17 hH
    · exact targetPsiChild32_18 hH
    · exact targetPsiChild32_19 hH
    · exact targetPsiChild32_20 hH
    · exact targetPsiChild32_21 hH
    · exact targetPsiChild32_22 hH
    · exact targetPsiChild32_23 hH
    · exact targetPsiChild32_24 hH
    · exact targetPsiChild32_25 hH
    · exact targetPsiChild32_26 hH
    · exact targetPsiChild32_27 hH
    · exact targetPsiChild32_28 hH
    · exact targetPsiChild32_29 hH
    · exact targetPsiChild32_30 hH
    · exact targetPsiChild32_31 hH
    · exact targetPsiChild32_32 hH
    · exact targetPsiChild32_33 hH
    · exact targetPsiChild32_34 hH
    · exact targetPsiChild32_35 hH
    · exact targetPsiChild32_36 hH
    · exact targetPsiChild32_37 hH
    · exact targetPsiChild32_38 hH
    · exact targetPsiChild32_39 hH
    · exact targetPsiChild32_40 hH
    · exact targetPsiChild32_41 hH
    · exact targetPsiChild32_42 hH
    · exact targetPsiChild32_43 hH
    · exact targetPsiChild32_44 hH
    · exact targetPsiChild32_45 hH
    · exact targetPsiChild32_46 hH
    · exact targetPsiChild32_47 hH
    · exact targetPsiChild32_48 hH
    · exact targetPsiChild32_49 hH
    · exact targetPsiChild32_50 hH
    · exact targetPsiChild32_51 hH
    · exact targetPsiChild32_52 hH
    · exact targetPsiChild32_53 hH
    · exact targetPsiChild32_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 32) i) (targetPsiTerm H 32)
    (-1) 1440 1440 (-1) ![40, 1440, 1440, 16, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 16, 10, 360, 80, 360, 1440, 40, 80, 1440, 1440, 80, 16, 360, 360, 1440, 360, 360, 1440, 360, 16, 40, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] ![36, 1, 1, 90, 18, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 90, 144, 4, 18, 4, 1, 36, 18, 1, 1, 18, 90, 4, 4, 1, 4, 4, 1, 4, 90, 36, 1, 1, 18, 1, 4, 4, 1, 4, 18, 36, 18, 1, 18, 4, 1, 36, 1, 1, 36] targetPsiRow32Projection ![targetPsiChild32_0Projection, targetPsiChild32_1Projection, targetPsiChild32_2Projection, targetPsiChild32_3Projection, targetPsiChild32_4Projection, targetPsiChild32_5Projection, targetPsiChild32_6Projection, targetPsiChild32_7Projection, targetPsiChild32_8Projection, targetPsiChild32_9Projection, targetPsiChild32_10Projection, targetPsiChild32_11Projection, targetPsiChild32_12Projection, targetPsiChild32_13Projection, targetPsiChild32_14Projection, targetPsiChild32_15Projection, targetPsiChild32_16Projection, targetPsiChild32_17Projection, targetPsiChild32_18Projection, targetPsiChild32_19Projection, targetPsiChild32_20Projection, targetPsiChild32_21Projection, targetPsiChild32_22Projection, targetPsiChild32_23Projection, targetPsiChild32_24Projection, targetPsiChild32_25Projection, targetPsiChild32_26Projection, targetPsiChild32_27Projection, targetPsiChild32_28Projection, targetPsiChild32_29Projection, targetPsiChild32_30Projection, targetPsiChild32_31Projection, targetPsiChild32_32Projection, targetPsiChild32_33Projection, targetPsiChild32_34Projection, targetPsiChild32_35Projection, targetPsiChild32_36Projection, targetPsiChild32_37Projection, targetPsiChild32_38Projection, targetPsiChild32_39Projection, targetPsiChild32_40Projection, targetPsiChild32_41Projection, targetPsiChild32_42Projection, targetPsiChild32_43Projection, targetPsiChild32_44Projection, targetPsiChild32_45Projection, targetPsiChild32_46Projection, targetPsiChild32_47Projection, targetPsiChild32_48Projection, targetPsiChild32_49Projection, targetPsiChild32_50Projection, targetPsiChild32_51Projection, targetPsiChild32_52Projection, targetPsiChild32_53Projection, targetPsiChild32_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

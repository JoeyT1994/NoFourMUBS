import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical221
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
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical483
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

def targetPsiChild53_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild53_0 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 53 0 =
      Integer.Sparse.eval targetPsiChild53_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 0) false) = canonicalInput627.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound627 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 0) true) = canonicalInput18936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18936 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_1 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 1 =
      Integer.Sparse.eval targetPsiChild53_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 1) false) = canonicalInput628.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound628 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 1) true) = canonicalInput18935.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18935 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_2 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 2 =
      Integer.Sparse.eval targetPsiChild53_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 2) false) = canonicalInput5926.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5926 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 2) true) = canonicalInput18932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18932 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 3 =
      Integer.Sparse.eval targetPsiChild53_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 3) false) = canonicalInput5931.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5931 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 3) true) = canonicalInput18929.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18929 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild53_4 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 53 4 =
      Integer.Sparse.eval targetPsiChild53_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 4) false) = canonicalInput9477.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9477 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 4) true) = canonicalInput18926.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18926 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_5 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 5 =
      Integer.Sparse.eval targetPsiChild53_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 5) false) = canonicalInput9482.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9482 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 5) true) = canonicalInput18923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18923 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_6 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 6 =
      Integer.Sparse.eval targetPsiChild53_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 6) false) = canonicalInput629.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound629 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 6) true) = canonicalInput18934.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18934 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_7 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 7 =
      Integer.Sparse.eval targetPsiChild53_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 7) false) = canonicalInput5927.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5927 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 7) true) = canonicalInput18931.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18931 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_8 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 8 =
      Integer.Sparse.eval targetPsiChild53_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 8) false) = canonicalInput5932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5932 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 8) true) = canonicalInput18928.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18928 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_9 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 9 =
      Integer.Sparse.eval targetPsiChild53_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 9) false) = canonicalInput9478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 9) true) = canonicalInput18925.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18925 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_10 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 10 =
      Integer.Sparse.eval targetPsiChild53_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 10) false) = canonicalInput9483.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9483 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 10) true) = canonicalInput18922.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18922 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_11 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 11 =
      Integer.Sparse.eval targetPsiChild53_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 11) false) = canonicalInput14185.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14185 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 11) true) = canonicalInput18920.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18920 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_12 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 12 =
      Integer.Sparse.eval targetPsiChild53_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 12) false) = canonicalInput14189.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14189 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 12) true) = canonicalInput18918.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18918 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_13 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 13 =
      Integer.Sparse.eval targetPsiChild53_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 13) false) = canonicalInput18814.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18814 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 13) true) = canonicalInput18914.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18914 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_14 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 14 =
      Integer.Sparse.eval targetPsiChild53_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 14) false) = canonicalInput18878.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18878 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 14) true) = canonicalInput18912.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18912 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_15 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 15 =
      Integer.Sparse.eval targetPsiChild53_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 15) false) = canonicalInput14194.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14194 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 15) true) = canonicalInput18916.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18916 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild53_16 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 53 16 =
      Integer.Sparse.eval targetPsiChild53_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 16) false) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 16) true) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild53_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_17 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 17 =
      Integer.Sparse.eval targetPsiChild53_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 17) false) = canonicalInput18980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18980 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 17) true) = canonicalInput18909.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18909 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 18 =
      Integer.Sparse.eval targetPsiChild53_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 18) false) = canonicalInput21858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21858 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 18) true) = canonicalInput18907.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18907 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_19 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 19 =
      Integer.Sparse.eval targetPsiChild53_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 19) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 19) true) = canonicalInput18905.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18905 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_20 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 20 =
      Integer.Sparse.eval targetPsiChild53_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 20) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 20) true) = canonicalInput18903.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18903 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild53_21 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 53 21 =
      Integer.Sparse.eval targetPsiChild53_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 21) false) = canonicalInput630.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound630 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 21) true) = canonicalInput18933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18933 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild53_22 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 53 22 =
      Integer.Sparse.eval targetPsiChild53_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 22) false) = canonicalInput5928.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5928 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 22) true) = canonicalInput18930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18930 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_23 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 23 =
      Integer.Sparse.eval targetPsiChild53_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 23) false) = canonicalInput5933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5933 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 23) true) = canonicalInput18927.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18927 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_24 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 24 =
      Integer.Sparse.eval targetPsiChild53_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 24) false) = canonicalInput9479.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9479 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 24) true) = canonicalInput18924.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18924 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 25 =
      Integer.Sparse.eval targetPsiChild53_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 25) false) = canonicalInput9484.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9484 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 25) true) = canonicalInput18921.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18921 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild53_26 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 53 26 =
      Integer.Sparse.eval targetPsiChild53_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 26) false) = canonicalInput14186.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14186 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 26) true) = canonicalInput18919.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18919 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_27 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 27 =
      Integer.Sparse.eval targetPsiChild53_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 27) false) = canonicalInput14190.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14190 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 27) true) = canonicalInput18917.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18917 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_28 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 28 =
      Integer.Sparse.eval targetPsiChild53_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 28) false) = canonicalInput18847.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18847 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 28) true) = canonicalInput18913.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18913 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_29 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 29 =
      Integer.Sparse.eval targetPsiChild53_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 29) false) = canonicalInput14195.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14195 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 29) true) = canonicalInput18915.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18915 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_30 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 30 =
      Integer.Sparse.eval targetPsiChild53_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 30) false) = canonicalInput18940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18940 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 30) true) = canonicalInput18910.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18910 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_31 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 31 =
      Integer.Sparse.eval targetPsiChild53_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 31) false) = canonicalInput19009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19009 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 31) true) = canonicalInput18908.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18908 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_32 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 32 =
      Integer.Sparse.eval targetPsiChild53_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 32) false) = canonicalInput21887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21887 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 32) true) = canonicalInput18906.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18906 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_33 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 33 =
      Integer.Sparse.eval targetPsiChild53_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 33) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 33) true) = canonicalInput18904.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18904 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 34 =
      Integer.Sparse.eval targetPsiChild53_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 34) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 34) true) = canonicalInput18902.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18902 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild53_35 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 53 35 =
      Integer.Sparse.eval targetPsiChild53_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 35) false) = canonicalInput23915.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23915 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 35) true) = canonicalInput18901.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18901 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_36 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 36 =
      Integer.Sparse.eval targetPsiChild53_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 36) false) = canonicalInput23918.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23918 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 36) true) = canonicalInput18900.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18900 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_37 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 37 =
      Integer.Sparse.eval targetPsiChild53_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 37) false) = canonicalInput24453.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24453 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 37) true) = canonicalInput18897.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18897 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 38 =
      Integer.Sparse.eval targetPsiChild53_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 38) false) = canonicalInput24456.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24456 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 38) true) = canonicalInput18896.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18896 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_39 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 39 =
      Integer.Sparse.eval targetPsiChild53_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 39) false) = canonicalInput23922.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23922 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 39) true) = canonicalInput18899.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18899 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_40 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 40 =
      Integer.Sparse.eval targetPsiChild53_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 40) false) = canonicalInput24457.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24457 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 40) true) = canonicalInput18895.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18895 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_41 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 41 =
      Integer.Sparse.eval targetPsiChild53_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 41) false) = canonicalInput24461.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24461 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 41) true) = canonicalInput18894.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18894 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 42 =
      Integer.Sparse.eval targetPsiChild53_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 42) false) = canonicalInput26948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26948 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 42) true) = canonicalInput18891.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18891 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_43 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 43 =
      Integer.Sparse.eval targetPsiChild53_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 43) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 43) true) = canonicalInput18890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18890 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 44 =
      Integer.Sparse.eval targetPsiChild53_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 44) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 44) true) = canonicalInput18888.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18888 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild53_45 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 53 45 =
      Integer.Sparse.eval targetPsiChild53_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 45) false) = canonicalInput23926.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23926 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 45) true) = canonicalInput18898.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18898 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild53_46 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 53 46 =
      Integer.Sparse.eval targetPsiChild53_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 46) false) = canonicalInput24462.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24462 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 46) true) = canonicalInput18893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18893 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 47 =
      Integer.Sparse.eval targetPsiChild53_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 47) false) = canonicalInput24466.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24466 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 47) true) = canonicalInput18892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18892 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild53_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 53 48 =
      Integer.Sparse.eval targetPsiChild53_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 48) false) = canonicalInput27045.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27045 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 48) true) = canonicalInput18889.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18889 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild53_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild53_49 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 53 49 =
      Integer.Sparse.eval targetPsiChild53_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 49) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 49) true) = canonicalInput18887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18887 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 50 =
      Integer.Sparse.eval targetPsiChild53_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 50) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 50) true) = canonicalInput18886.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18886 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild53_51 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 53 51 =
      Integer.Sparse.eval targetPsiChild53_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 51) false) = canonicalInput30244.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30244 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 51) true) = canonicalInput18885.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18885 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild53_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (576) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_52 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 52 =
      Integer.Sparse.eval targetPsiChild53_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 52) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 52) true) = canonicalInput18884.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18884 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (576 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild53_53 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 53 53 =
      Integer.Sparse.eval targetPsiChild53_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 53) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 53) true) = canonicalInput18883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18883 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild53_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild53_54 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 53 54 =
      Integer.Sparse.eval targetPsiChild53_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 53) false - blockExponent (psiExponent 54) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 53) false + blockExponent (psiExponent 54) true) = canonicalInput18882.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 53) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18882 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild53_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow53Projection : Integer.Sparse (Fin 1613) := [(0, -738), (19, 1440), (20, -90), (94, -11160), (241, -18720), (287, 12960), (426, 103680), (666, 25920), (698, -172800), (700, -5760), (821, 17280), (848, -51840), (864, -12960), (869, -51840), (890, 51840), (943, -103680), (955, 25920), (957, -25920), (1015, 51840), (1016, 51840), (1050, 43200), (1055, 51840), (1059, -69120), (1221, 69120), (1226, -11520), (1227, -102240), (1250, -2160), (1251, 56340), (1389, 34560)]

theorem targetPsiRow53 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 53) i) =
      Integer.Sparse.eval targetPsiRow53Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![40, 1440, 1440, 80, 16, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 80, 10, 360, 80, 360, 1440, 40, 16, 1440, 1440, 80, 16, 360, 360, 1440, 360, 360, 1440, 360, 80, 40, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 40, 16, 1440, 80, 360, 1440, 40, 1440, 1440, 40] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 53) i) =
      Integer.Sparse.eval (![targetPsiChild53_0Projection, targetPsiChild53_1Projection, targetPsiChild53_2Projection, targetPsiChild53_3Projection, targetPsiChild53_4Projection, targetPsiChild53_5Projection, targetPsiChild53_6Projection, targetPsiChild53_7Projection, targetPsiChild53_8Projection, targetPsiChild53_9Projection, targetPsiChild53_10Projection, targetPsiChild53_11Projection, targetPsiChild53_12Projection, targetPsiChild53_13Projection, targetPsiChild53_14Projection, targetPsiChild53_15Projection, targetPsiChild53_16Projection, targetPsiChild53_17Projection, targetPsiChild53_18Projection, targetPsiChild53_19Projection, targetPsiChild53_20Projection, targetPsiChild53_21Projection, targetPsiChild53_22Projection, targetPsiChild53_23Projection, targetPsiChild53_24Projection, targetPsiChild53_25Projection, targetPsiChild53_26Projection, targetPsiChild53_27Projection, targetPsiChild53_28Projection, targetPsiChild53_29Projection, targetPsiChild53_30Projection, targetPsiChild53_31Projection, targetPsiChild53_32Projection, targetPsiChild53_33Projection, targetPsiChild53_34Projection, targetPsiChild53_35Projection, targetPsiChild53_36Projection, targetPsiChild53_37Projection, targetPsiChild53_38Projection, targetPsiChild53_39Projection, targetPsiChild53_40Projection, targetPsiChild53_41Projection, targetPsiChild53_42Projection, targetPsiChild53_43Projection, targetPsiChild53_44Projection, targetPsiChild53_45Projection, targetPsiChild53_46Projection, targetPsiChild53_47Projection, targetPsiChild53_48Projection, targetPsiChild53_49Projection, targetPsiChild53_50Projection, targetPsiChild53_51Projection, targetPsiChild53_52Projection, targetPsiChild53_53Projection, targetPsiChild53_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild53_0 hH
    · exact targetPsiChild53_1 hH
    · exact targetPsiChild53_2 hH
    · exact targetPsiChild53_3 hH
    · exact targetPsiChild53_4 hH
    · exact targetPsiChild53_5 hH
    · exact targetPsiChild53_6 hH
    · exact targetPsiChild53_7 hH
    · exact targetPsiChild53_8 hH
    · exact targetPsiChild53_9 hH
    · exact targetPsiChild53_10 hH
    · exact targetPsiChild53_11 hH
    · exact targetPsiChild53_12 hH
    · exact targetPsiChild53_13 hH
    · exact targetPsiChild53_14 hH
    · exact targetPsiChild53_15 hH
    · exact targetPsiChild53_16 hH
    · exact targetPsiChild53_17 hH
    · exact targetPsiChild53_18 hH
    · exact targetPsiChild53_19 hH
    · exact targetPsiChild53_20 hH
    · exact targetPsiChild53_21 hH
    · exact targetPsiChild53_22 hH
    · exact targetPsiChild53_23 hH
    · exact targetPsiChild53_24 hH
    · exact targetPsiChild53_25 hH
    · exact targetPsiChild53_26 hH
    · exact targetPsiChild53_27 hH
    · exact targetPsiChild53_28 hH
    · exact targetPsiChild53_29 hH
    · exact targetPsiChild53_30 hH
    · exact targetPsiChild53_31 hH
    · exact targetPsiChild53_32 hH
    · exact targetPsiChild53_33 hH
    · exact targetPsiChild53_34 hH
    · exact targetPsiChild53_35 hH
    · exact targetPsiChild53_36 hH
    · exact targetPsiChild53_37 hH
    · exact targetPsiChild53_38 hH
    · exact targetPsiChild53_39 hH
    · exact targetPsiChild53_40 hH
    · exact targetPsiChild53_41 hH
    · exact targetPsiChild53_42 hH
    · exact targetPsiChild53_43 hH
    · exact targetPsiChild53_44 hH
    · exact targetPsiChild53_45 hH
    · exact targetPsiChild53_46 hH
    · exact targetPsiChild53_47 hH
    · exact targetPsiChild53_48 hH
    · exact targetPsiChild53_49 hH
    · exact targetPsiChild53_50 hH
    · exact targetPsiChild53_51 hH
    · exact targetPsiChild53_52 hH
    · exact targetPsiChild53_53 hH
    · exact targetPsiChild53_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 53) i) (targetPsiTerm H 53)
    (-1) 1440 1440 (-1) ![40, 1440, 1440, 80, 16, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 80, 10, 360, 80, 360, 1440, 40, 16, 1440, 1440, 80, 16, 360, 360, 1440, 360, 360, 1440, 360, 80, 40, 1440, 1440, 80, 1440, 360, 360, 1440, 360, 80, 40, 16, 1440, 80, 360, 1440, 40, 1440, 1440, 40] ![36, 1, 1, 18, 90, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 18, 144, 4, 18, 4, 1, 36, 90, 1, 1, 18, 90, 4, 4, 1, 4, 4, 1, 4, 18, 36, 1, 1, 18, 1, 4, 4, 1, 4, 18, 36, 90, 1, 18, 4, 1, 36, 1, 1, 36] targetPsiRow53Projection ![targetPsiChild53_0Projection, targetPsiChild53_1Projection, targetPsiChild53_2Projection, targetPsiChild53_3Projection, targetPsiChild53_4Projection, targetPsiChild53_5Projection, targetPsiChild53_6Projection, targetPsiChild53_7Projection, targetPsiChild53_8Projection, targetPsiChild53_9Projection, targetPsiChild53_10Projection, targetPsiChild53_11Projection, targetPsiChild53_12Projection, targetPsiChild53_13Projection, targetPsiChild53_14Projection, targetPsiChild53_15Projection, targetPsiChild53_16Projection, targetPsiChild53_17Projection, targetPsiChild53_18Projection, targetPsiChild53_19Projection, targetPsiChild53_20Projection, targetPsiChild53_21Projection, targetPsiChild53_22Projection, targetPsiChild53_23Projection, targetPsiChild53_24Projection, targetPsiChild53_25Projection, targetPsiChild53_26Projection, targetPsiChild53_27Projection, targetPsiChild53_28Projection, targetPsiChild53_29Projection, targetPsiChild53_30Projection, targetPsiChild53_31Projection, targetPsiChild53_32Projection, targetPsiChild53_33Projection, targetPsiChild53_34Projection, targetPsiChild53_35Projection, targetPsiChild53_36Projection, targetPsiChild53_37Projection, targetPsiChild53_38Projection, targetPsiChild53_39Projection, targetPsiChild53_40Projection, targetPsiChild53_41Projection, targetPsiChild53_42Projection, targetPsiChild53_43Projection, targetPsiChild53_44Projection, targetPsiChild53_45Projection, targetPsiChild53_46Projection, targetPsiChild53_47Projection, targetPsiChild53_48Projection, targetPsiChild53_49Projection, targetPsiChild53_50Projection, targetPsiChild53_51Projection, targetPsiChild53_52Projection, targetPsiChild53_53Projection, targetPsiChild53_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

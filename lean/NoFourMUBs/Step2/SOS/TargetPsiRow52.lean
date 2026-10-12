import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical221
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
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical425
import NoFourMUBs.Step2.SOS.Canonical426
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical483
import NoFourMUBs.Step2.SOS.Canonical484
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

def targetPsiChild52_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild52_0 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 52 0 =
      Integer.Sparse.eval targetPsiChild52_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 0) false) = canonicalInput631.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound631 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 0) true) = canonicalInput19005.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound19005 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_1 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 1 =
      Integer.Sparse.eval targetPsiChild52_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 1) false) = canonicalInput632.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound632 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 1) true) = canonicalInput19004.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound19004 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_2 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 2 =
      Integer.Sparse.eval targetPsiChild52_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 2) false) = canonicalInput5930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5930 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 2) true) = canonicalInput19001.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound19001 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild52_3 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 52 3 =
      Integer.Sparse.eval targetPsiChild52_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 3) false) = canonicalInput5935.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5935 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 3) true) = canonicalInput18998.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18998 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 4 =
      Integer.Sparse.eval targetPsiChild52_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 4) false) = canonicalInput9482.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9482 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 4) true) = canonicalInput18995.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18995 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_5 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 5 =
      Integer.Sparse.eval targetPsiChild52_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 5) false) = canonicalInput9487.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9487 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 5) true) = canonicalInput18992.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18992 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_6 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 6 =
      Integer.Sparse.eval targetPsiChild52_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 6) false) = canonicalInput633.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound633 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 6) true) = canonicalInput19003.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound19003 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_7 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 7 =
      Integer.Sparse.eval targetPsiChild52_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 7) false) = canonicalInput5931.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5931 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 7) true) = canonicalInput19000.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound19000 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_8 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 8 =
      Integer.Sparse.eval targetPsiChild52_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 8) false) = canonicalInput5936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5936 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 8) true) = canonicalInput18997.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18997 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_9 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 9 =
      Integer.Sparse.eval targetPsiChild52_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 9) false) = canonicalInput9483.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9483 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 9) true) = canonicalInput18994.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18994 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_10 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 10 =
      Integer.Sparse.eval targetPsiChild52_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 10) false) = canonicalInput9488.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9488 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 10) true) = canonicalInput18991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18991 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_11 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 11 =
      Integer.Sparse.eval targetPsiChild52_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 11) false) = canonicalInput14188.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14188 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 11) true) = canonicalInput18989.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18989 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_12 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 12 =
      Integer.Sparse.eval targetPsiChild52_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 12) false) = canonicalInput14193.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14193 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 12) true) = canonicalInput18987.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18987 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_13 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 13 =
      Integer.Sparse.eval targetPsiChild52_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 13) false) = canonicalInput18878.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18878 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 13) true) = canonicalInput18983.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18983 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_14 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 14 =
      Integer.Sparse.eval targetPsiChild52_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 14) false) = canonicalInput18947.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18947 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 14) true) = canonicalInput18981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18981 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild52_15 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 52 15 =
      Integer.Sparse.eval targetPsiChild52_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 15) false) = canonicalInput14197.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14197 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 15) true) = canonicalInput18985.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18985 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild52_16 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 52 16 =
      Integer.Sparse.eval targetPsiChild52_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 16) false) = canonicalInput18980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18980 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 16) true) = canonicalInput18980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18980 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild52_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_17 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 17 =
      Integer.Sparse.eval targetPsiChild52_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 17) false) = canonicalInput19044.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19044 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 17) true) = canonicalInput18978.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18978 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 18 =
      Integer.Sparse.eval targetPsiChild52_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 18) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 18) true) = canonicalInput18976.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18976 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_19 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 19 =
      Integer.Sparse.eval targetPsiChild52_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 19) false) = canonicalInput22049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22049 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 19) true) = canonicalInput18974.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18974 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_20 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 20 =
      Integer.Sparse.eval targetPsiChild52_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 20) false) = canonicalInput22142.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22142 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 20) true) = canonicalInput18972.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18972 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild52_21 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 52 21 =
      Integer.Sparse.eval targetPsiChild52_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 21) false) = canonicalInput634.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound634 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 21) true) = canonicalInput19002.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound19002 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 22 =
      Integer.Sparse.eval targetPsiChild52_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 22) false) = canonicalInput5932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5932 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 22) true) = canonicalInput18999.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18999 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_23 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 23 =
      Integer.Sparse.eval targetPsiChild52_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 23) false) = canonicalInput5937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound5937 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 23) true) = canonicalInput18996.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18996 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_24 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 24 =
      Integer.Sparse.eval targetPsiChild52_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 24) false) = canonicalInput9484.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9484 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 24) true) = canonicalInput18993.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18993 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild52_25 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 52 25 =
      Integer.Sparse.eval targetPsiChild52_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 25) false) = canonicalInput9489.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9489 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 25) true) = canonicalInput18990.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18990 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_26 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 26 =
      Integer.Sparse.eval targetPsiChild52_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 26) false) = canonicalInput14189.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14189 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 26) true) = canonicalInput18988.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18988 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_27 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 27 =
      Integer.Sparse.eval targetPsiChild52_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 27) false) = canonicalInput14194.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14194 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 27) true) = canonicalInput18986.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18986 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_28 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 28 =
      Integer.Sparse.eval targetPsiChild52_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 28) false) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 28) true) = canonicalInput18982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18982 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_29 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 29 =
      Integer.Sparse.eval targetPsiChild52_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 29) false) = canonicalInput14198.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound14198 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 29) true) = canonicalInput18984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18984 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_30 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 30 =
      Integer.Sparse.eval targetPsiChild52_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 30) false) = canonicalInput19009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19009 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 30) true) = canonicalInput18979.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18979 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_31 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 31 =
      Integer.Sparse.eval targetPsiChild52_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 31) false) = canonicalInput19074.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound19074 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 31) true) = canonicalInput18977.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18977 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_32 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 32 =
      Integer.Sparse.eval targetPsiChild52_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 32) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 32) true) = canonicalInput18975.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18975 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_33 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 33 =
      Integer.Sparse.eval targetPsiChild52_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 33) false) = canonicalInput22110.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22110 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 33) true) = canonicalInput18973.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18973 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 34 =
      Integer.Sparse.eval targetPsiChild52_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 34) false) = canonicalInput22175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22175 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 34) true) = canonicalInput18971.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18971 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild52_35 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 52 35 =
      Integer.Sparse.eval targetPsiChild52_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 35) false) = canonicalInput23917.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23917 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 35) true) = canonicalInput18970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18970 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_36 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 36 =
      Integer.Sparse.eval targetPsiChild52_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 36) false) = canonicalInput23921.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23921 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 36) true) = canonicalInput18969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18969 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_37 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 37 =
      Integer.Sparse.eval targetPsiChild52_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 37) false) = canonicalInput24456.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24456 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 37) true) = canonicalInput18966.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18966 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild52_38 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 52 38 =
      Integer.Sparse.eval targetPsiChild52_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 38) false) = canonicalInput24460.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24460 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 38) true) = canonicalInput18965.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18965 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_39 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 39 =
      Integer.Sparse.eval targetPsiChild52_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 39) false) = canonicalInput23925.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23925 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 39) true) = canonicalInput18968.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18968 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_40 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 40 =
      Integer.Sparse.eval targetPsiChild52_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 40) false) = canonicalInput24461.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24461 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 40) true) = canonicalInput18964.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18964 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_41 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 41 =
      Integer.Sparse.eval targetPsiChild52_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 41) false) = canonicalInput24465.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24465 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 41) true) = canonicalInput18963.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18963 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 42 =
      Integer.Sparse.eval targetPsiChild52_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 42) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 42) true) = canonicalInput18960.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18960 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_43 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 43 =
      Integer.Sparse.eval targetPsiChild52_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 43) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 43) true) = canonicalInput18959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18959 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 44 =
      Integer.Sparse.eval targetPsiChild52_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 44) false) = canonicalInput27234.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27234 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 44) true) = canonicalInput18957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18957 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild52_45 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 52 45 =
      Integer.Sparse.eval targetPsiChild52_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 45) false) = canonicalInput23928.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound23928 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 45) true) = canonicalInput18967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18967 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 46 =
      Integer.Sparse.eval targetPsiChild52_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 46) false) = canonicalInput24466.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24466 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 46) true) = canonicalInput18962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18962 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 47 =
      Integer.Sparse.eval targetPsiChild52_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 47) false) = canonicalInput24469.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24469 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 47) true) = canonicalInput18961.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18961 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild52_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 52 48 =
      Integer.Sparse.eval targetPsiChild52_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 48) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 48) true) = canonicalInput18958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18958 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild52_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild52_49 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 52 49 =
      Integer.Sparse.eval targetPsiChild52_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 49) false) = canonicalInput27295.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27295 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 49) true) = canonicalInput18956.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18956 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 50 =
      Integer.Sparse.eval targetPsiChild52_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 50) false) = canonicalInput27327.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27327 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 50) true) = canonicalInput18955.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18955 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild52_51 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 52 51 =
      Integer.Sparse.eval targetPsiChild52_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 51) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 51) true) = canonicalInput18954.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18954 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild52_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_52 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 52 =
      Integer.Sparse.eval targetPsiChild52_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 52) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 52) true) = canonicalInput18953.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18953 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (576) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild52_53 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 52 53 =
      Integer.Sparse.eval targetPsiChild52_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 53) false) = canonicalInput30930.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30930 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 53) true) = canonicalInput18952.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18952 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (576 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild52_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild52_54 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 52 54 =
      Integer.Sparse.eval targetPsiChild52_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 52) false - blockExponent (psiExponent 54) false) = canonicalInput31023.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound31023 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 52) false + blockExponent (psiExponent 54) true) = canonicalInput18951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 52) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound18951 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild52_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow52Projection : Integer.Sparse (Fin 1613) := [(0, -738), (19, 1440), (20, -90), (94, -11160), (241, -18720), (287, 12960), (426, 103680), (666, 25920), (698, -172800), (700, -5760), (821, 17280), (848, -51840), (864, -12960), (869, -51840), (890, 51840), (943, -103680), (955, 25920), (957, -25920), (1015, 51840), (1016, 51840), (1050, 43200), (1055, 51840), (1059, -69120), (1221, 69120), (1226, -11520), (1227, -102240), (1250, -2160), (1251, 56340), (1389, 34560)]

theorem targetPsiRow52 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 52) i) =
      Integer.Sparse.eval targetPsiRow52Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![40, 1440, 1440, 16, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 16, 10, 360, 80, 360, 1440, 40, 80, 1440, 1440, 16, 80, 360, 360, 1440, 360, 360, 1440, 360, 80, 40, 1440, 1440, 16, 1440, 360, 360, 1440, 360, 80, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 52) i) =
      Integer.Sparse.eval (![targetPsiChild52_0Projection, targetPsiChild52_1Projection, targetPsiChild52_2Projection, targetPsiChild52_3Projection, targetPsiChild52_4Projection, targetPsiChild52_5Projection, targetPsiChild52_6Projection, targetPsiChild52_7Projection, targetPsiChild52_8Projection, targetPsiChild52_9Projection, targetPsiChild52_10Projection, targetPsiChild52_11Projection, targetPsiChild52_12Projection, targetPsiChild52_13Projection, targetPsiChild52_14Projection, targetPsiChild52_15Projection, targetPsiChild52_16Projection, targetPsiChild52_17Projection, targetPsiChild52_18Projection, targetPsiChild52_19Projection, targetPsiChild52_20Projection, targetPsiChild52_21Projection, targetPsiChild52_22Projection, targetPsiChild52_23Projection, targetPsiChild52_24Projection, targetPsiChild52_25Projection, targetPsiChild52_26Projection, targetPsiChild52_27Projection, targetPsiChild52_28Projection, targetPsiChild52_29Projection, targetPsiChild52_30Projection, targetPsiChild52_31Projection, targetPsiChild52_32Projection, targetPsiChild52_33Projection, targetPsiChild52_34Projection, targetPsiChild52_35Projection, targetPsiChild52_36Projection, targetPsiChild52_37Projection, targetPsiChild52_38Projection, targetPsiChild52_39Projection, targetPsiChild52_40Projection, targetPsiChild52_41Projection, targetPsiChild52_42Projection, targetPsiChild52_43Projection, targetPsiChild52_44Projection, targetPsiChild52_45Projection, targetPsiChild52_46Projection, targetPsiChild52_47Projection, targetPsiChild52_48Projection, targetPsiChild52_49Projection, targetPsiChild52_50Projection, targetPsiChild52_51Projection, targetPsiChild52_52Projection, targetPsiChild52_53Projection, targetPsiChild52_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild52_0 hH
    · exact targetPsiChild52_1 hH
    · exact targetPsiChild52_2 hH
    · exact targetPsiChild52_3 hH
    · exact targetPsiChild52_4 hH
    · exact targetPsiChild52_5 hH
    · exact targetPsiChild52_6 hH
    · exact targetPsiChild52_7 hH
    · exact targetPsiChild52_8 hH
    · exact targetPsiChild52_9 hH
    · exact targetPsiChild52_10 hH
    · exact targetPsiChild52_11 hH
    · exact targetPsiChild52_12 hH
    · exact targetPsiChild52_13 hH
    · exact targetPsiChild52_14 hH
    · exact targetPsiChild52_15 hH
    · exact targetPsiChild52_16 hH
    · exact targetPsiChild52_17 hH
    · exact targetPsiChild52_18 hH
    · exact targetPsiChild52_19 hH
    · exact targetPsiChild52_20 hH
    · exact targetPsiChild52_21 hH
    · exact targetPsiChild52_22 hH
    · exact targetPsiChild52_23 hH
    · exact targetPsiChild52_24 hH
    · exact targetPsiChild52_25 hH
    · exact targetPsiChild52_26 hH
    · exact targetPsiChild52_27 hH
    · exact targetPsiChild52_28 hH
    · exact targetPsiChild52_29 hH
    · exact targetPsiChild52_30 hH
    · exact targetPsiChild52_31 hH
    · exact targetPsiChild52_32 hH
    · exact targetPsiChild52_33 hH
    · exact targetPsiChild52_34 hH
    · exact targetPsiChild52_35 hH
    · exact targetPsiChild52_36 hH
    · exact targetPsiChild52_37 hH
    · exact targetPsiChild52_38 hH
    · exact targetPsiChild52_39 hH
    · exact targetPsiChild52_40 hH
    · exact targetPsiChild52_41 hH
    · exact targetPsiChild52_42 hH
    · exact targetPsiChild52_43 hH
    · exact targetPsiChild52_44 hH
    · exact targetPsiChild52_45 hH
    · exact targetPsiChild52_46 hH
    · exact targetPsiChild52_47 hH
    · exact targetPsiChild52_48 hH
    · exact targetPsiChild52_49 hH
    · exact targetPsiChild52_50 hH
    · exact targetPsiChild52_51 hH
    · exact targetPsiChild52_52 hH
    · exact targetPsiChild52_53 hH
    · exact targetPsiChild52_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 52) i) (targetPsiTerm H 52)
    (-1) 1440 1440 (-1) ![40, 1440, 1440, 16, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 16, 10, 360, 80, 360, 1440, 40, 80, 1440, 1440, 16, 80, 360, 360, 1440, 360, 360, 1440, 360, 80, 40, 1440, 1440, 16, 1440, 360, 360, 1440, 360, 80, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] ![36, 1, 1, 90, 18, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 90, 144, 4, 18, 4, 1, 36, 18, 1, 1, 90, 18, 4, 4, 1, 4, 4, 1, 4, 18, 36, 1, 1, 90, 1, 4, 4, 1, 4, 18, 36, 18, 1, 18, 4, 1, 36, 1, 1, 36] targetPsiRow52Projection ![targetPsiChild52_0Projection, targetPsiChild52_1Projection, targetPsiChild52_2Projection, targetPsiChild52_3Projection, targetPsiChild52_4Projection, targetPsiChild52_5Projection, targetPsiChild52_6Projection, targetPsiChild52_7Projection, targetPsiChild52_8Projection, targetPsiChild52_9Projection, targetPsiChild52_10Projection, targetPsiChild52_11Projection, targetPsiChild52_12Projection, targetPsiChild52_13Projection, targetPsiChild52_14Projection, targetPsiChild52_15Projection, targetPsiChild52_16Projection, targetPsiChild52_17Projection, targetPsiChild52_18Projection, targetPsiChild52_19Projection, targetPsiChild52_20Projection, targetPsiChild52_21Projection, targetPsiChild52_22Projection, targetPsiChild52_23Projection, targetPsiChild52_24Projection, targetPsiChild52_25Projection, targetPsiChild52_26Projection, targetPsiChild52_27Projection, targetPsiChild52_28Projection, targetPsiChild52_29Projection, targetPsiChild52_30Projection, targetPsiChild52_31Projection, targetPsiChild52_32Projection, targetPsiChild52_33Projection, targetPsiChild52_34Projection, targetPsiChild52_35Projection, targetPsiChild52_36Projection, targetPsiChild52_37Projection, targetPsiChild52_38Projection, targetPsiChild52_39Projection, targetPsiChild52_40Projection, targetPsiChild52_41Projection, targetPsiChild52_42Projection, targetPsiChild52_43Projection, targetPsiChild52_44Projection, targetPsiChild52_45Projection, targetPsiChild52_46Projection, targetPsiChild52_47Projection, targetPsiChild52_48Projection, targetPsiChild52_49Projection, targetPsiChild52_50Projection, targetPsiChild52_51Projection, targetPsiChild52_52Projection, targetPsiChild52_53Projection, targetPsiChild52_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

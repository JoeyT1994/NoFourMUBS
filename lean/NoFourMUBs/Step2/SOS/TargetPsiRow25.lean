import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical516
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

def targetPsiChild25_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild25_0 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 0 =
      Integer.Sparse.eval targetPsiChild25_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 0) false) = canonicalInput21889.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21889 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 0) true) = canonicalInput32995.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32995 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild25_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_1 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 1 =
      Integer.Sparse.eval targetPsiChild25_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 1) false) = canonicalInput21890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21890 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 1) true) = canonicalInput32994.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32994 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_2 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 2 =
      Integer.Sparse.eval targetPsiChild25_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 2) false) = canonicalInput26950.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26950 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 2) true) = canonicalInput32991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32991 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 3 =
      Integer.Sparse.eval targetPsiChild25_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 3) false) = canonicalInput27076.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27076 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 3) true) = canonicalInput32988.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32988 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 4 =
      Integer.Sparse.eval targetPsiChild25_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 4) false) = canonicalInput30247.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30247 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 4) true) = canonicalInput32985.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32985 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild25_5 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 25 5 =
      Integer.Sparse.eval targetPsiChild25_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 5) false) = canonicalInput30374.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30374 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 5) true) = canonicalInput32982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32982 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_6 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 6 =
      Integer.Sparse.eval targetPsiChild25_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 6) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 6) true) = canonicalInput32993.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32993 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_7 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 7 =
      Integer.Sparse.eval targetPsiChild25_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 7) false) = canonicalInput26951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26951 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 7) true) = canonicalInput32990.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32990 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild25_8 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 25 8 =
      Integer.Sparse.eval targetPsiChild25_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 8) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 8) true) = canonicalInput32987.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32987 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild25_9 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 25 9 =
      Integer.Sparse.eval targetPsiChild25_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 9) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 9) true) = canonicalInput32984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32984 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild25_10 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 25 10 =
      Integer.Sparse.eval targetPsiChild25_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 10) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 10) true) = canonicalInput32981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32981 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild25_11 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 25 11 =
      Integer.Sparse.eval targetPsiChild25_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 11) false) = canonicalInput32882.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32882 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 11) true) = canonicalInput32979.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32979 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_12 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 12 =
      Integer.Sparse.eval targetPsiChild25_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 12) false) = canonicalInput32887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32887 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 12) true) = canonicalInput32977.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32977 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_13 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 13 =
      Integer.Sparse.eval targetPsiChild25_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 13) false) = canonicalInput32932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32932 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 13) true) = canonicalInput32973.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32973 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_14 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 14 =
      Integer.Sparse.eval targetPsiChild25_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 14) false) = canonicalInput32937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32937 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 14) true) = canonicalInput32971.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32971 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 15 =
      Integer.Sparse.eval targetPsiChild25_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 15) false) = canonicalInput32892.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32892 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 15) true) = canonicalInput32975.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32975 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild25_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 25 16 =
      Integer.Sparse.eval targetPsiChild25_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 16) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 16) true) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild25_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_17 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 17 =
      Integer.Sparse.eval targetPsiChild25_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 17) false) = canonicalInput33155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33155 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 17) true) = canonicalInput32968.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32968 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_18 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 18 =
      Integer.Sparse.eval targetPsiChild25_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 18) false) = canonicalInput33378.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33378 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 18) true) = canonicalInput32966.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32966 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_19 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 19 =
      Integer.Sparse.eval targetPsiChild25_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 19) false) = canonicalInput33415.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33415 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 19) true) = canonicalInput32964.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32964 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_20 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 20 =
      Integer.Sparse.eval targetPsiChild25_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 20) false) = canonicalInput33569.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33569 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 20) true) = canonicalInput32962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32962 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild25_21 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 21 =
      Integer.Sparse.eval targetPsiChild25_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 21) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 21) true) = canonicalInput32992.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32992 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild25_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_22 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 22 =
      Integer.Sparse.eval targetPsiChild25_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 22) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 22) true) = canonicalInput32989.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32989 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_23 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 23 =
      Integer.Sparse.eval targetPsiChild25_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 23) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 23) true) = canonicalInput32986.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32986 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_24 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 24 =
      Integer.Sparse.eval targetPsiChild25_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 24) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 24) true) = canonicalInput32983.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32983 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection0)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild25_25 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 25 25 =
      Integer.Sparse.eval targetPsiChild25_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 25) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 25) true) = canonicalInput32980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32980 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild25_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild25_26 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 25 26 =
      Integer.Sparse.eval targetPsiChild25_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 26) false) = canonicalInput32883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32883 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 26) true) = canonicalInput32978.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32978 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild25_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_27 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 27 =
      Integer.Sparse.eval targetPsiChild25_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 27) false) = canonicalInput32888.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32888 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 27) true) = canonicalInput32976.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32976 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_28 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 28 =
      Integer.Sparse.eval targetPsiChild25_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 28) false) = canonicalInput32933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32933 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 28) true) = canonicalInput32972.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32972 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_29 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 29 =
      Integer.Sparse.eval targetPsiChild25_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 29) false) = canonicalInput32893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32893 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 29) true) = canonicalInput32974.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32974 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild25_30 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 25 30 =
      Integer.Sparse.eval targetPsiChild25_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 30) false) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 30) true) = canonicalInput32969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32969 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild25_31 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 25 31 =
      Integer.Sparse.eval targetPsiChild25_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 31) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 31) true) = canonicalInput32967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32967 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_32 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 32 =
      Integer.Sparse.eval targetPsiChild25_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 32) false) = canonicalInput33379.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33379 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 32) true) = canonicalInput32965.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32965 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild25_33 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 25 33 =
      Integer.Sparse.eval targetPsiChild25_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 33) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 33) true) = canonicalInput32963.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32963 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_34 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 34 =
      Integer.Sparse.eval targetPsiChild25_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 34) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 34) true) = canonicalInput32961.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32961 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild25_35 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 35 =
      Integer.Sparse.eval targetPsiChild25_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 35) false) = canonicalInput33931.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33931 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 35) true) = canonicalInput32960.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32960 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild25_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild25_36 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 25 36 =
      Integer.Sparse.eval targetPsiChild25_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 36) false) = canonicalInput33935.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33935 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 36) true) = canonicalInput32959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32959 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild25_37 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 25 37 =
      Integer.Sparse.eval targetPsiChild25_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 37) false) = canonicalInput33953.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33953 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 37) true) = canonicalInput32956.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32956 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection41)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild25_38 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 25 38 =
      Integer.Sparse.eval targetPsiChild25_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 38) false) = canonicalInput33957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33957 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 38) true) = canonicalInput32955.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32955 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild25_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_39 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 39 =
      Integer.Sparse.eval targetPsiChild25_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 39) false) = canonicalInput33939.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33939 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 39) true) = canonicalInput32958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32958 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_40 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 40 =
      Integer.Sparse.eval targetPsiChild25_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 40) false) = canonicalInput33958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33958 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 40) true) = canonicalInput32954.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32954 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_41 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 41 =
      Integer.Sparse.eval targetPsiChild25_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 41) false) = canonicalInput33962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33962 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 41) true) = canonicalInput32953.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32953 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_42 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 42 =
      Integer.Sparse.eval targetPsiChild25_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 42) false) = canonicalInput33976.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33976 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 42) true) = canonicalInput32950.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32950 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_43 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 43 =
      Integer.Sparse.eval targetPsiChild25_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 43) false) = canonicalInput33980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33980 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 43) true) = canonicalInput32949.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32949 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild25_44 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 25 44 =
      Integer.Sparse.eval targetPsiChild25_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 44) false) = canonicalInput34017.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34017 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 44) true) = canonicalInput32947.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32947 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild25_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild25_45 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 45 =
      Integer.Sparse.eval targetPsiChild25_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 45) false) = canonicalInput33943.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33943 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 45) true) = canonicalInput32957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32957 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild25_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_46 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 46 =
      Integer.Sparse.eval targetPsiChild25_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 46) false) = canonicalInput33963.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33963 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 46) true) = canonicalInput32952.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32952 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild25_47 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 25 47 =
      Integer.Sparse.eval targetPsiChild25_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 47) false) = canonicalInput33967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33967 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 47) true) = canonicalInput32951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32951 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild25_48 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 48 =
      Integer.Sparse.eval targetPsiChild25_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 48) false) = canonicalInput33981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33981 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 48) true) = canonicalInput32948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32948 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild25_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild25_49 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 25 49 =
      Integer.Sparse.eval targetPsiChild25_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 49) false) = canonicalInput34078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34078 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 49) true) = canonicalInput32946.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32946 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild25_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_50 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 50 =
      Integer.Sparse.eval targetPsiChild25_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 50) false) = canonicalInput34231.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34231 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 50) true) = canonicalInput32945.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32945 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild25_51 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 51 =
      Integer.Sparse.eval targetPsiChild25_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 51) false) = canonicalInput34265.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34265 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 51) true) = canonicalInput32944.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32944 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild25_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild25_52 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 25 52 =
      Integer.Sparse.eval targetPsiChild25_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 52) false) = canonicalInput34269.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34269 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 52) true) = canonicalInput32943.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32943 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild25_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild25_53 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 53 =
      Integer.Sparse.eval targetPsiChild25_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 53) false) = canonicalInput34274.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34274 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 53) true) = canonicalInput32942.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32942 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild25_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild25_54 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 25 54 =
      Integer.Sparse.eval targetPsiChild25_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 25) false - blockExponent (psiExponent 54) false) = canonicalInput34279.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34279 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 25) false + blockExponent (psiExponent 54) true) = canonicalInput32941.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 25) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound32941 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild25_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow25Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 25) i) =
      Integer.Sparse.eval targetPsiRow25Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![80, 80, 80, 20, 20, 16, 80, 20, 10, 10, 10, 16, 20, 20, 20, 20, 5, 20, 20, 20, 80, 80, 20, 80, 80, 4, 4, 20, 20, 80, 10, 10, 80, 10, 20, 80, 16, 16, 4, 80, 20, 20, 80, 20, 4, 80, 20, 16, 20, 20, 80, 80, 16, 80, 80] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 25) i) =
      Integer.Sparse.eval (![targetPsiChild25_0Projection, targetPsiChild25_1Projection, targetPsiChild25_2Projection, targetPsiChild25_3Projection, targetPsiChild25_4Projection, targetPsiChild25_5Projection, targetPsiChild25_6Projection, targetPsiChild25_7Projection, targetPsiChild25_8Projection, targetPsiChild25_9Projection, targetPsiChild25_10Projection, targetPsiChild25_11Projection, targetPsiChild25_12Projection, targetPsiChild25_13Projection, targetPsiChild25_14Projection, targetPsiChild25_15Projection, targetPsiChild25_16Projection, targetPsiChild25_17Projection, targetPsiChild25_18Projection, targetPsiChild25_19Projection, targetPsiChild25_20Projection, targetPsiChild25_21Projection, targetPsiChild25_22Projection, targetPsiChild25_23Projection, targetPsiChild25_24Projection, targetPsiChild25_25Projection, targetPsiChild25_26Projection, targetPsiChild25_27Projection, targetPsiChild25_28Projection, targetPsiChild25_29Projection, targetPsiChild25_30Projection, targetPsiChild25_31Projection, targetPsiChild25_32Projection, targetPsiChild25_33Projection, targetPsiChild25_34Projection, targetPsiChild25_35Projection, targetPsiChild25_36Projection, targetPsiChild25_37Projection, targetPsiChild25_38Projection, targetPsiChild25_39Projection, targetPsiChild25_40Projection, targetPsiChild25_41Projection, targetPsiChild25_42Projection, targetPsiChild25_43Projection, targetPsiChild25_44Projection, targetPsiChild25_45Projection, targetPsiChild25_46Projection, targetPsiChild25_47Projection, targetPsiChild25_48Projection, targetPsiChild25_49Projection, targetPsiChild25_50Projection, targetPsiChild25_51Projection, targetPsiChild25_52Projection, targetPsiChild25_53Projection, targetPsiChild25_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild25_0 hH
    · exact targetPsiChild25_1 hH
    · exact targetPsiChild25_2 hH
    · exact targetPsiChild25_3 hH
    · exact targetPsiChild25_4 hH
    · exact targetPsiChild25_5 hH
    · exact targetPsiChild25_6 hH
    · exact targetPsiChild25_7 hH
    · exact targetPsiChild25_8 hH
    · exact targetPsiChild25_9 hH
    · exact targetPsiChild25_10 hH
    · exact targetPsiChild25_11 hH
    · exact targetPsiChild25_12 hH
    · exact targetPsiChild25_13 hH
    · exact targetPsiChild25_14 hH
    · exact targetPsiChild25_15 hH
    · exact targetPsiChild25_16 hH
    · exact targetPsiChild25_17 hH
    · exact targetPsiChild25_18 hH
    · exact targetPsiChild25_19 hH
    · exact targetPsiChild25_20 hH
    · exact targetPsiChild25_21 hH
    · exact targetPsiChild25_22 hH
    · exact targetPsiChild25_23 hH
    · exact targetPsiChild25_24 hH
    · exact targetPsiChild25_25 hH
    · exact targetPsiChild25_26 hH
    · exact targetPsiChild25_27 hH
    · exact targetPsiChild25_28 hH
    · exact targetPsiChild25_29 hH
    · exact targetPsiChild25_30 hH
    · exact targetPsiChild25_31 hH
    · exact targetPsiChild25_32 hH
    · exact targetPsiChild25_33 hH
    · exact targetPsiChild25_34 hH
    · exact targetPsiChild25_35 hH
    · exact targetPsiChild25_36 hH
    · exact targetPsiChild25_37 hH
    · exact targetPsiChild25_38 hH
    · exact targetPsiChild25_39 hH
    · exact targetPsiChild25_40 hH
    · exact targetPsiChild25_41 hH
    · exact targetPsiChild25_42 hH
    · exact targetPsiChild25_43 hH
    · exact targetPsiChild25_44 hH
    · exact targetPsiChild25_45 hH
    · exact targetPsiChild25_46 hH
    · exact targetPsiChild25_47 hH
    · exact targetPsiChild25_48 hH
    · exact targetPsiChild25_49 hH
    · exact targetPsiChild25_50 hH
    · exact targetPsiChild25_51 hH
    · exact targetPsiChild25_52 hH
    · exact targetPsiChild25_53 hH
    · exact targetPsiChild25_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 25) i) (targetPsiTerm H 25)
    (-1) 80 80 (-1) ![80, 80, 80, 20, 20, 16, 80, 20, 10, 10, 10, 16, 20, 20, 20, 20, 5, 20, 20, 20, 80, 80, 20, 80, 80, 4, 4, 20, 20, 80, 10, 10, 80, 10, 20, 80, 16, 16, 4, 80, 20, 20, 80, 20, 4, 80, 20, 16, 20, 20, 80, 80, 16, 80, 80] ![1, 1, 1, 4, 4, 5, 1, 4, 8, 8, 8, 5, 4, 4, 4, 4, 16, 4, 4, 4, 1, 1, 4, 1, 1, 20, 20, 4, 4, 1, 8, 8, 1, 8, 4, 1, 5, 5, 20, 1, 4, 4, 1, 4, 20, 1, 4, 5, 4, 4, 1, 1, 5, 1, 1] targetPsiRow25Projection ![targetPsiChild25_0Projection, targetPsiChild25_1Projection, targetPsiChild25_2Projection, targetPsiChild25_3Projection, targetPsiChild25_4Projection, targetPsiChild25_5Projection, targetPsiChild25_6Projection, targetPsiChild25_7Projection, targetPsiChild25_8Projection, targetPsiChild25_9Projection, targetPsiChild25_10Projection, targetPsiChild25_11Projection, targetPsiChild25_12Projection, targetPsiChild25_13Projection, targetPsiChild25_14Projection, targetPsiChild25_15Projection, targetPsiChild25_16Projection, targetPsiChild25_17Projection, targetPsiChild25_18Projection, targetPsiChild25_19Projection, targetPsiChild25_20Projection, targetPsiChild25_21Projection, targetPsiChild25_22Projection, targetPsiChild25_23Projection, targetPsiChild25_24Projection, targetPsiChild25_25Projection, targetPsiChild25_26Projection, targetPsiChild25_27Projection, targetPsiChild25_28Projection, targetPsiChild25_29Projection, targetPsiChild25_30Projection, targetPsiChild25_31Projection, targetPsiChild25_32Projection, targetPsiChild25_33Projection, targetPsiChild25_34Projection, targetPsiChild25_35Projection, targetPsiChild25_36Projection, targetPsiChild25_37Projection, targetPsiChild25_38Projection, targetPsiChild25_39Projection, targetPsiChild25_40Projection, targetPsiChild25_41Projection, targetPsiChild25_42Projection, targetPsiChild25_43Projection, targetPsiChild25_44Projection, targetPsiChild25_45Projection, targetPsiChild25_46Projection, targetPsiChild25_47Projection, targetPsiChild25_48Projection, targetPsiChild25_49Projection, targetPsiChild25_50Projection, targetPsiChild25_51Projection, targetPsiChild25_52Projection, targetPsiChild25_53Projection, targetPsiChild25_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

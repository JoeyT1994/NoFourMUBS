import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical422
import NoFourMUBs.Step2.SOS.Canonical423
import NoFourMUBs.Step2.SOS.Canonical424
import NoFourMUBs.Step2.SOS.Canonical473
import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical513
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.Canonical517
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.Canonical532
import NoFourMUBs.Step2.SOS.Canonical533
import NoFourMUBs.Step2.SOS.Canonical534
import NoFourMUBs.Step2.SOS.Canonical535
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

def targetPsiChild10_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild10_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 10 0 =
      Integer.Sparse.eval targetPsiChild10_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 0) false) = canonicalInput21890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21890 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 0) true) = canonicalInput33056.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33056 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_1 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 1 =
      Integer.Sparse.eval targetPsiChild10_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 1) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 1) true) = canonicalInput33055.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33055 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_2 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 2 =
      Integer.Sparse.eval targetPsiChild10_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 2) false) = canonicalInput26951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26951 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 2) true) = canonicalInput33052.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33052 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild10_3 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 10 3 =
      Integer.Sparse.eval targetPsiChild10_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 3) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 3) true) = canonicalInput33049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33049 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild10_4 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 10 4 =
      Integer.Sparse.eval targetPsiChild10_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 4) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 4) true) = canonicalInput33046.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33046 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_5 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 5 =
      Integer.Sparse.eval targetPsiChild10_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 5) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 5) true) = canonicalInput33043.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33043 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_6 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 6 =
      Integer.Sparse.eval targetPsiChild10_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 6) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 6) true) = canonicalInput33054.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33054 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_7 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 7 =
      Integer.Sparse.eval targetPsiChild10_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 7) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 7) true) = canonicalInput33051.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33051 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_8 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 8 =
      Integer.Sparse.eval targetPsiChild10_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 8) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 8) true) = canonicalInput33048.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33048 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_9 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 9 =
      Integer.Sparse.eval targetPsiChild10_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 9) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 9) true) = canonicalInput33045.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33045 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_10 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 10 =
      Integer.Sparse.eval targetPsiChild10_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 10) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 10) true) = canonicalInput33042.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33042 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_11 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 11 =
      Integer.Sparse.eval targetPsiChild10_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 11) false) = canonicalInput32883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32883 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 11) true) = canonicalInput33040.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33040 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild10_12 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 10 12 =
      Integer.Sparse.eval targetPsiChild10_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 12) false) = canonicalInput32888.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32888 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 12) true) = canonicalInput33038.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33038 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild10_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild10_13 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 10 13 =
      Integer.Sparse.eval targetPsiChild10_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 13) false) = canonicalInput32933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32933 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 13) true) = canonicalInput33034.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33034 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild10_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_14 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 14 =
      Integer.Sparse.eval targetPsiChild10_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 14) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 14) true) = canonicalInput33032.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33032 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 15 =
      Integer.Sparse.eval targetPsiChild10_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 15) false) = canonicalInput32893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32893 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 15) true) = canonicalInput33036.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33036 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-48) oldProjection5)
    (Integer.Sparse.scale (48) oldProjection5)

theorem targetPsiChild10_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 10 16 =
      Integer.Sparse.eval targetPsiChild10_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 16) false) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 16) true) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  change (5 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-48 : ℝ) * hh0 + (48 : ℝ) * hh1

def targetPsiChild10_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_17 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 17 =
      Integer.Sparse.eval targetPsiChild10_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 17) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 17) true) = canonicalInput33029.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33029 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_18 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 18 =
      Integer.Sparse.eval targetPsiChild10_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 18) false) = canonicalInput33379.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33379 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 18) true) = canonicalInput33027.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33027 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_19 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 19 =
      Integer.Sparse.eval targetPsiChild10_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 19) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 19) true) = canonicalInput33025.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33025 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_20 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 20 =
      Integer.Sparse.eval targetPsiChild10_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 20) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 20) true) = canonicalInput33023.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33023 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild10_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 10 21 =
      Integer.Sparse.eval targetPsiChild10_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 21) false) = canonicalInput22013.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound22013 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 21) true) = canonicalInput33053.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33053 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_22 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 22 =
      Integer.Sparse.eval targetPsiChild10_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 22) false) = canonicalInput27045.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27045 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 22) true) = canonicalInput33050.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33050 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_23 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 23 =
      Integer.Sparse.eval targetPsiChild10_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 23) false) = canonicalInput27199.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27199 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 23) true) = canonicalInput33047.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33047 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_24 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 24 =
      Integer.Sparse.eval targetPsiChild10_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 24) false) = canonicalInput30370.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30370 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 24) true) = canonicalInput33044.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33044 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild10_25 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 10 25 =
      Integer.Sparse.eval targetPsiChild10_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 25) false) = canonicalInput30861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30861 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 25) true) = canonicalInput33041.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33041 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_26 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 26 =
      Integer.Sparse.eval targetPsiChild10_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 26) false) = canonicalInput32884.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32884 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 26) true) = canonicalInput33039.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33039 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_27 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 27 =
      Integer.Sparse.eval targetPsiChild10_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 27) false) = canonicalInput32889.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32889 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 27) true) = canonicalInput33037.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33037 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_28 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 28 =
      Integer.Sparse.eval targetPsiChild10_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 28) false) = canonicalInput32934.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32934 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 28) true) = canonicalInput33033.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33033 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_29 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 29 =
      Integer.Sparse.eval targetPsiChild10_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 29) false) = canonicalInput32894.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32894 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 29) true) = canonicalInput33035.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33035 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild10_30 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 10 30 =
      Integer.Sparse.eval targetPsiChild10_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 30) false) = canonicalInput33092.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33092 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 30) true) = canonicalInput33030.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33030 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild10_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_31 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 31 =
      Integer.Sparse.eval targetPsiChild10_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 31) false) = canonicalInput33277.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33277 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 31) true) = canonicalInput33028.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33028 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_32 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 32 =
      Integer.Sparse.eval targetPsiChild10_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 32) false) = canonicalInput33380.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33380 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 32) true) = canonicalInput33026.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33026 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_33 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 33 =
      Integer.Sparse.eval targetPsiChild10_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 33) false) = canonicalInput33537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33537 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 33) true) = canonicalInput33024.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33024 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild10_34 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 10 34 =
      Integer.Sparse.eval targetPsiChild10_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 34) false) = canonicalInput33663.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33663 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 34) true) = canonicalInput33022.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33022 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild10_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 10 35 =
      Integer.Sparse.eval targetPsiChild10_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 35) false) = canonicalInput33932.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33932 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 35) true) = canonicalInput33021.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33021 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_36 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 36 =
      Integer.Sparse.eval targetPsiChild10_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 36) false) = canonicalInput33936.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33936 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 36) true) = canonicalInput33020.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33020 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_37 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 37 =
      Integer.Sparse.eval targetPsiChild10_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 37) false) = canonicalInput33954.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33954 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 37) true) = canonicalInput33017.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33017 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_38 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 38 =
      Integer.Sparse.eval targetPsiChild10_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 38) false) = canonicalInput33958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33958 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 38) true) = canonicalInput33016.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33016 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_39 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 39 =
      Integer.Sparse.eval targetPsiChild10_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 39) false) = canonicalInput33940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33940 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 39) true) = canonicalInput33019.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33019 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection4)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_40 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 40 =
      Integer.Sparse.eval targetPsiChild10_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 40) false) = canonicalInput33959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33959 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 40) true) = canonicalInput33015.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33015 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_41 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 41 =
      Integer.Sparse.eval targetPsiChild10_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 41) false) = canonicalInput33963.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33963 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 41) true) = canonicalInput33014.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33014 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_42 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 42 =
      Integer.Sparse.eval targetPsiChild10_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 42) false) = canonicalInput33977.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33977 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 42) true) = canonicalInput33011.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33011 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection12209)

theorem targetPsiChild10_43 {H : CMatrix} (hH : IsHadamard H) :
    (45 : ℝ) * targetPsiTerm H 10 43 =
      Integer.Sparse.eval targetPsiChild10_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 43) false) = canonicalInput33981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33981 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 43) true) = canonicalInput33010.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33010 hH))).trans (reductionSound12209 hH)
  change (45 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_44 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 44 =
      Integer.Sparse.eval targetPsiChild10_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 44) false) = canonicalInput34078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34078 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 44) true) = canonicalInput33008.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33008 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild10_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 10 45 =
      Integer.Sparse.eval targetPsiChild10_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 45) false) = canonicalInput33944.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33944 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 45) true) = canonicalInput33018.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33018 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_46 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 46 =
      Integer.Sparse.eval targetPsiChild10_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 46) false) = canonicalInput33964.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33964 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 46) true) = canonicalInput33013.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33013 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_47 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 47 =
      Integer.Sparse.eval targetPsiChild10_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 47) false) = canonicalInput33968.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33968 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 47) true) = canonicalInput33012.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33012 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild10_48 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 10 48 =
      Integer.Sparse.eval targetPsiChild10_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 48) false) = canonicalInput33982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33982 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 48) true) = canonicalInput33009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33009 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild10_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (9) oldProjection61)
    (Integer.Sparse.scale (-2) reductionProjection12209)

theorem targetPsiChild10_49 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * targetPsiTerm H 10 49 =
      Integer.Sparse.eval targetPsiChild10_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 49) false) = canonicalInput34139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34139 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 49) true) = canonicalInput33007.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (360 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12209 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33007 hH))).trans (reductionSound12209 hH)
  change (90 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (9 : ℝ) * hh0 + (-2 : ℝ) * hh1

def targetPsiChild10_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_50 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 50 =
      Integer.Sparse.eval targetPsiChild10_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 50) false) = canonicalInput34232.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34232 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 50) true) = canonicalInput33006.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33006 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild10_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 10 51 =
      Integer.Sparse.eval targetPsiChild10_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 51) false) = canonicalInput34266.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34266 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 51) true) = canonicalInput33005.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33005 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild10_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_52 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 52 =
      Integer.Sparse.eval targetPsiChild10_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 52) false) = canonicalInput34270.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34270 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 52) true) = canonicalInput33004.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33004 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild10_53 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 10 53 =
      Integer.Sparse.eval targetPsiChild10_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 53) false) = canonicalInput34275.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34275 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 53) true) = canonicalInput33003.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33003 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild10_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild10_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 10 54 =
      Integer.Sparse.eval targetPsiChild10_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 10) false - blockExponent (psiExponent 54) false) = canonicalInput34280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34280 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 10) false + blockExponent (psiExponent 54) true) = canonicalInput33002.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 10) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound33002 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((-2 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild10_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow10Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow10 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 10) i) =
      Integer.Sparse.eval targetPsiRow10Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 360, 360, 10, 10, 360, 360, 45, 45, 45, 45, 360, 90, 90, 45, 20, 5, 45, 20, 45, 360, 120, 20, 360, 360, 10, 20, 45, 45, 360, 90, 45, 360, 45, 10, 120, 360, 360, 20, 360, 45, 45, 360, 45, 20, 120, 20, 360, 20, 90, 360, 120, 360, 360, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 10) i) =
      Integer.Sparse.eval (![targetPsiChild10_0Projection, targetPsiChild10_1Projection, targetPsiChild10_2Projection, targetPsiChild10_3Projection, targetPsiChild10_4Projection, targetPsiChild10_5Projection, targetPsiChild10_6Projection, targetPsiChild10_7Projection, targetPsiChild10_8Projection, targetPsiChild10_9Projection, targetPsiChild10_10Projection, targetPsiChild10_11Projection, targetPsiChild10_12Projection, targetPsiChild10_13Projection, targetPsiChild10_14Projection, targetPsiChild10_15Projection, targetPsiChild10_16Projection, targetPsiChild10_17Projection, targetPsiChild10_18Projection, targetPsiChild10_19Projection, targetPsiChild10_20Projection, targetPsiChild10_21Projection, targetPsiChild10_22Projection, targetPsiChild10_23Projection, targetPsiChild10_24Projection, targetPsiChild10_25Projection, targetPsiChild10_26Projection, targetPsiChild10_27Projection, targetPsiChild10_28Projection, targetPsiChild10_29Projection, targetPsiChild10_30Projection, targetPsiChild10_31Projection, targetPsiChild10_32Projection, targetPsiChild10_33Projection, targetPsiChild10_34Projection, targetPsiChild10_35Projection, targetPsiChild10_36Projection, targetPsiChild10_37Projection, targetPsiChild10_38Projection, targetPsiChild10_39Projection, targetPsiChild10_40Projection, targetPsiChild10_41Projection, targetPsiChild10_42Projection, targetPsiChild10_43Projection, targetPsiChild10_44Projection, targetPsiChild10_45Projection, targetPsiChild10_46Projection, targetPsiChild10_47Projection, targetPsiChild10_48Projection, targetPsiChild10_49Projection, targetPsiChild10_50Projection, targetPsiChild10_51Projection, targetPsiChild10_52Projection, targetPsiChild10_53Projection, targetPsiChild10_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild10_0 hH
    · exact targetPsiChild10_1 hH
    · exact targetPsiChild10_2 hH
    · exact targetPsiChild10_3 hH
    · exact targetPsiChild10_4 hH
    · exact targetPsiChild10_5 hH
    · exact targetPsiChild10_6 hH
    · exact targetPsiChild10_7 hH
    · exact targetPsiChild10_8 hH
    · exact targetPsiChild10_9 hH
    · exact targetPsiChild10_10 hH
    · exact targetPsiChild10_11 hH
    · exact targetPsiChild10_12 hH
    · exact targetPsiChild10_13 hH
    · exact targetPsiChild10_14 hH
    · exact targetPsiChild10_15 hH
    · exact targetPsiChild10_16 hH
    · exact targetPsiChild10_17 hH
    · exact targetPsiChild10_18 hH
    · exact targetPsiChild10_19 hH
    · exact targetPsiChild10_20 hH
    · exact targetPsiChild10_21 hH
    · exact targetPsiChild10_22 hH
    · exact targetPsiChild10_23 hH
    · exact targetPsiChild10_24 hH
    · exact targetPsiChild10_25 hH
    · exact targetPsiChild10_26 hH
    · exact targetPsiChild10_27 hH
    · exact targetPsiChild10_28 hH
    · exact targetPsiChild10_29 hH
    · exact targetPsiChild10_30 hH
    · exact targetPsiChild10_31 hH
    · exact targetPsiChild10_32 hH
    · exact targetPsiChild10_33 hH
    · exact targetPsiChild10_34 hH
    · exact targetPsiChild10_35 hH
    · exact targetPsiChild10_36 hH
    · exact targetPsiChild10_37 hH
    · exact targetPsiChild10_38 hH
    · exact targetPsiChild10_39 hH
    · exact targetPsiChild10_40 hH
    · exact targetPsiChild10_41 hH
    · exact targetPsiChild10_42 hH
    · exact targetPsiChild10_43 hH
    · exact targetPsiChild10_44 hH
    · exact targetPsiChild10_45 hH
    · exact targetPsiChild10_46 hH
    · exact targetPsiChild10_47 hH
    · exact targetPsiChild10_48 hH
    · exact targetPsiChild10_49 hH
    · exact targetPsiChild10_50 hH
    · exact targetPsiChild10_51 hH
    · exact targetPsiChild10_52 hH
    · exact targetPsiChild10_53 hH
    · exact targetPsiChild10_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 10) i) (targetPsiTerm H 10)
    (-1) 360 360 (-1) ![120, 360, 360, 10, 10, 360, 360, 45, 45, 45, 45, 360, 90, 90, 45, 20, 5, 45, 20, 45, 360, 120, 20, 360, 360, 10, 20, 45, 45, 360, 90, 45, 360, 45, 10, 120, 360, 360, 20, 360, 45, 45, 360, 45, 20, 120, 20, 360, 20, 90, 360, 120, 360, 360, 120] ![3, 1, 1, 36, 36, 1, 1, 8, 8, 8, 8, 1, 4, 4, 8, 18, 72, 8, 18, 8, 1, 3, 18, 1, 1, 36, 18, 8, 8, 1, 4, 8, 1, 8, 36, 3, 1, 1, 18, 1, 8, 8, 1, 8, 18, 3, 18, 1, 18, 4, 1, 3, 1, 1, 3] targetPsiRow10Projection ![targetPsiChild10_0Projection, targetPsiChild10_1Projection, targetPsiChild10_2Projection, targetPsiChild10_3Projection, targetPsiChild10_4Projection, targetPsiChild10_5Projection, targetPsiChild10_6Projection, targetPsiChild10_7Projection, targetPsiChild10_8Projection, targetPsiChild10_9Projection, targetPsiChild10_10Projection, targetPsiChild10_11Projection, targetPsiChild10_12Projection, targetPsiChild10_13Projection, targetPsiChild10_14Projection, targetPsiChild10_15Projection, targetPsiChild10_16Projection, targetPsiChild10_17Projection, targetPsiChild10_18Projection, targetPsiChild10_19Projection, targetPsiChild10_20Projection, targetPsiChild10_21Projection, targetPsiChild10_22Projection, targetPsiChild10_23Projection, targetPsiChild10_24Projection, targetPsiChild10_25Projection, targetPsiChild10_26Projection, targetPsiChild10_27Projection, targetPsiChild10_28Projection, targetPsiChild10_29Projection, targetPsiChild10_30Projection, targetPsiChild10_31Projection, targetPsiChild10_32Projection, targetPsiChild10_33Projection, targetPsiChild10_34Projection, targetPsiChild10_35Projection, targetPsiChild10_36Projection, targetPsiChild10_37Projection, targetPsiChild10_38Projection, targetPsiChild10_39Projection, targetPsiChild10_40Projection, targetPsiChild10_41Projection, targetPsiChild10_42Projection, targetPsiChild10_43Projection, targetPsiChild10_44Projection, targetPsiChild10_45Projection, targetPsiChild10_46Projection, targetPsiChild10_47Projection, targetPsiChild10_48Projection, targetPsiChild10_49Projection, targetPsiChild10_50Projection, targetPsiChild10_51Projection, targetPsiChild10_52Projection, targetPsiChild10_53Projection, targetPsiChild10_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

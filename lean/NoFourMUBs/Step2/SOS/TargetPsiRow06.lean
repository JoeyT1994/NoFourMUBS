import NoFourMUBs.Step2.SOS.Canonical474
import NoFourMUBs.Step2.SOS.Canonical475
import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical515
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.Canonical518
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical522
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.Canonical531
import NoFourMUBs.Step2.SOS.Canonical532
import NoFourMUBs.Step2.SOS.Canonical533
import NoFourMUBs.Step2.SOS.Canonical534
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.Canonical536
import NoFourMUBs.Step2.SOS.Canonical537
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

def targetPsiChild6_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild6_0 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 6 0 =
      Integer.Sparse.eval targetPsiChild6_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 0) false) = canonicalInput30374.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30374 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 0) true) = canonicalInput34103.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34103 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (576) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_1 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 1 =
      Integer.Sparse.eval targetPsiChild6_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 1) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 1) true) = canonicalInput34102.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34102 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (576 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_2 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 2 =
      Integer.Sparse.eval targetPsiChild6_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 2) false) = canonicalInput32937.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32937 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 2) true) = canonicalInput34099.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34099 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 3 =
      Integer.Sparse.eval targetPsiChild6_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 3) false) = canonicalInput33155.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33155 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 3) true) = canonicalInput34096.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34096 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 4 =
      Integer.Sparse.eval targetPsiChild6_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 4) false) = canonicalInput33415.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33415 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 4) true) = canonicalInput34093.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34093 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_5 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 5 =
      Integer.Sparse.eval targetPsiChild6_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 5) false) = canonicalInput33569.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33569 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 5) true) = canonicalInput34090.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34090 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_6 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 6 =
      Integer.Sparse.eval targetPsiChild6_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 6) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 6) true) = canonicalInput34101.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34101 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_7 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 7 =
      Integer.Sparse.eval targetPsiChild6_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 7) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 7) true) = canonicalInput34098.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34098 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_8 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 8 =
      Integer.Sparse.eval targetPsiChild6_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 8) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 8) true) = canonicalInput34095.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34095 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection5)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_9 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 9 =
      Integer.Sparse.eval targetPsiChild6_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 9) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 9) true) = canonicalInput34092.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34092 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (144) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_10 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 10 =
      Integer.Sparse.eval targetPsiChild6_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 10) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 10) true) = canonicalInput34089.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34089 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (144 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_11 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 11 =
      Integer.Sparse.eval targetPsiChild6_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 11) false) = canonicalInput33957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33957 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 11) true) = canonicalInput34087.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34087 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_12 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 12 =
      Integer.Sparse.eval targetPsiChild6_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 12) false) = canonicalInput33962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33962 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 12) true) = canonicalInput34085.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34085 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_13 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 13 =
      Integer.Sparse.eval targetPsiChild6_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 13) false) = canonicalInput33980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33980 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 13) true) = canonicalInput34081.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34081 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (1440) oldProjection44)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_14 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 14 =
      Integer.Sparse.eval targetPsiChild6_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 14) false) = canonicalInput34017.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34017 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 14) true) = canonicalInput34079.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34079 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (1440 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild6_15 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 6 15 =
      Integer.Sparse.eval targetPsiChild6_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 15) false) = canonicalInput33967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33967 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 15) true) = canonicalInput34083.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34083 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (3) oldProjection61)

theorem targetPsiChild6_16 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 6 16 =
      Integer.Sparse.eval targetPsiChild6_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 16) false) = canonicalInput34078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34078 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 16) true) = canonicalInput34078.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34078 hH))).trans (oldProjectionSound61 hH)
  change (10 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (3 : ℝ) * hh1

def targetPsiChild6_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_17 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 17 =
      Integer.Sparse.eval targetPsiChild6_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 17) false) = canonicalInput34231.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34231 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 17) true) = canonicalInput34076.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34076 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild6_18 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 6 18 =
      Integer.Sparse.eval targetPsiChild6_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 18) false) = canonicalInput34269.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34269 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 18) true) = canonicalInput34074.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34074 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_19 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 19 =
      Integer.Sparse.eval targetPsiChild6_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 19) false) = canonicalInput34274.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34274 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 19) true) = canonicalInput34072.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34072 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (2880) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_20 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 20 =
      Integer.Sparse.eval targetPsiChild6_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 20) false) = canonicalInput34279.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34279 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 20) true) = canonicalInput34070.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34070 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (2880 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild6_21 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 6 21 =
      Integer.Sparse.eval targetPsiChild6_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 21) false) = canonicalInput30861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30861 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 21) true) = canonicalInput34100.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34100 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 22 =
      Integer.Sparse.eval targetPsiChild6_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 22) false) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 22) true) = canonicalInput34097.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34097 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_23 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 23 =
      Integer.Sparse.eval targetPsiChild6_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 23) false) = canonicalInput33277.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33277 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 23) true) = canonicalInput34094.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34094 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (288) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_24 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 24 =
      Integer.Sparse.eval targetPsiChild6_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 24) false) = canonicalInput33537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33537 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 24) true) = canonicalInput34091.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34091 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (288 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 25 =
      Integer.Sparse.eval targetPsiChild6_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 25) false) = canonicalInput33663.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33663 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 25) true) = canonicalInput34088.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34088 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_26 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 26 =
      Integer.Sparse.eval targetPsiChild6_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 26) false) = canonicalInput33958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33958 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 26) true) = canonicalInput34086.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34086 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_27 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 27 =
      Integer.Sparse.eval targetPsiChild6_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 27) false) = canonicalInput33963.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33963 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 27) true) = canonicalInput34084.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34084 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_28 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 28 =
      Integer.Sparse.eval targetPsiChild6_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 28) false) = canonicalInput33981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33981 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 28) true) = canonicalInput34080.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34080 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_29 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 29 =
      Integer.Sparse.eval targetPsiChild6_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 29) false) = canonicalInput33968.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33968 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 29) true) = canonicalInput34082.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34082 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection61)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_30 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 30 =
      Integer.Sparse.eval targetPsiChild6_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 30) false) = canonicalInput34139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34139 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 30) true) = canonicalInput34077.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34077 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_31 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 31 =
      Integer.Sparse.eval targetPsiChild6_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 31) false) = canonicalInput34232.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34232 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 31) true) = canonicalInput34075.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34075 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection62)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_32 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 32 =
      Integer.Sparse.eval targetPsiChild6_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 32) false) = canonicalInput34270.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34270 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 32) true) = canonicalInput34073.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34073 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection11)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_33 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 33 =
      Integer.Sparse.eval targetPsiChild6_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 33) false) = canonicalInput34275.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34275 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 33) true) = canonicalInput34071.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34071 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 34 =
      Integer.Sparse.eval targetPsiChild6_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 34) false) = canonicalInput34280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34280 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 34) true) = canonicalInput34069.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34069 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild6_35 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 6 35 =
      Integer.Sparse.eval targetPsiChild6_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 35) false) = canonicalInput34336.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34336 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 35) true) = canonicalInput34068.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34068 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_36 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 36 =
      Integer.Sparse.eval targetPsiChild6_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 36) false) = canonicalInput34340.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34340 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 36) true) = canonicalInput34067.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34067 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_37 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 37 =
      Integer.Sparse.eval targetPsiChild6_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 37) false) = canonicalInput34355.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34355 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 37) true) = canonicalInput34064.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34064 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild6_38 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 6 38 =
      Integer.Sparse.eval targetPsiChild6_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 38) false) = canonicalInput34359.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34359 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 38) true) = canonicalInput34063.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34063 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_39 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 39 =
      Integer.Sparse.eval targetPsiChild6_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 39) false) = canonicalInput34344.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34344 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 39) true) = canonicalInput34066.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34066 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_40 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 40 =
      Integer.Sparse.eval targetPsiChild6_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 40) false) = canonicalInput34360.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34360 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 40) true) = canonicalInput34062.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34062 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_41 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 41 =
      Integer.Sparse.eval targetPsiChild6_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 41) false) = canonicalInput34364.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34364 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 41) true) = canonicalInput34061.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34061 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_42 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 42 =
      Integer.Sparse.eval targetPsiChild6_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 42) false) = canonicalInput34373.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34373 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 42) true) = canonicalInput34058.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34058 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (90) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_43 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 43 =
      Integer.Sparse.eval targetPsiChild6_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 43) false) = canonicalInput34377.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34377 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 43) true) = canonicalInput34057.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34057 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (90 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild6_44 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 6 44 =
      Integer.Sparse.eval targetPsiChild6_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 44) false) = canonicalInput34382.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34382 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 44) true) = canonicalInput34055.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34055 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild6_45 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 6 45 =
      Integer.Sparse.eval targetPsiChild6_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 45) false) = canonicalInput34348.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34348 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 45) true) = canonicalInput34065.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34065 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 46 =
      Integer.Sparse.eval targetPsiChild6_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 46) false) = canonicalInput34365.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34365 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 46) true) = canonicalInput34060.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34060 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_47 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 47 =
      Integer.Sparse.eval targetPsiChild6_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 47) false) = canonicalInput34369.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34369 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 47) true) = canonicalInput34059.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34059 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild6_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 6 48 =
      Integer.Sparse.eval targetPsiChild6_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 48) false) = canonicalInput34378.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34378 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 48) true) = canonicalInput34056.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34056 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild6_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection56)
    (Integer.Sparse.scale (-1) reductionProjection11153)

theorem targetPsiChild6_49 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * targetPsiTerm H 6 49 =
      Integer.Sparse.eval targetPsiChild6_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 49) false) = canonicalInput34383.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34383 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 49) true) = canonicalInput34054.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1440 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection11153 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34054 hH))).trans (reductionSound11153 hH)
  change (360 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_50 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 50 =
      Integer.Sparse.eval targetPsiChild6_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 50) false) = canonicalInput34387.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34387 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 50) true) = canonicalInput34053.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34053 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild6_51 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 6 51 =
      Integer.Sparse.eval targetPsiChild6_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 51) false) = canonicalInput34395.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34395 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 51) true) = canonicalInput34052.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34052 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild6_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (720) oldProjection10)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_52 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 52 =
      Integer.Sparse.eval targetPsiChild6_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 52) false) = canonicalInput34399.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (4 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection10 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34399 hH))).trans (oldProjectionSound10 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 52) true) = canonicalInput34051.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34051 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (720 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (360) oldProjection63)
    (Integer.Sparse.scale (-1) reductionProjection11163)

theorem targetPsiChild6_53 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * targetPsiTerm H 6 53 =
      Integer.Sparse.eval targetPsiChild6_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 53) false) = canonicalInput34403.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (8 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection63 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34403 hH))).trans (oldProjectionSound63 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 53) true) = canonicalInput34050.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (2880 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11163 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34050 hH))).trans (reductionSound11163 hH)
  change (1440 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (360 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild6_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild6_54 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 6 54 =
      Integer.Sparse.eval targetPsiChild6_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 6) false - blockExponent (psiExponent 54) false) = canonicalInput34407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34407 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 6) false + blockExponent (psiExponent 54) true) = canonicalInput34049.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 6) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34049 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((-1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild6_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiRow6Projection : Integer.Sparse (Fin 1613) := [(0, -738), (19, 1440), (20, -90), (94, -11160), (241, -18720), (287, 12960), (426, 103680), (666, 25920), (698, -172800), (700, -5760), (821, 17280), (848, -51840), (864, -12960), (869, -51840), (890, 51840), (943, -103680), (955, 25920), (957, -25920), (1015, 51840), (1016, 51840), (1050, 43200), (1055, 51840), (1059, -69120), (1221, 69120), (1226, -11520), (1227, -102240), (1250, -2160), (1251, 56340), (1389, 34560)]

theorem targetPsiRow6 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 6) i) =
      Integer.Sparse.eval targetPsiRow6Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![40, 1440, 1440, 80, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 16, 10, 360, 16, 360, 1440, 40, 80, 1440, 1440, 80, 80, 360, 360, 1440, 360, 360, 1440, 360, 80, 40, 1440, 1440, 16, 1440, 360, 360, 1440, 360, 16, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 6) i) =
      Integer.Sparse.eval (![targetPsiChild6_0Projection, targetPsiChild6_1Projection, targetPsiChild6_2Projection, targetPsiChild6_3Projection, targetPsiChild6_4Projection, targetPsiChild6_5Projection, targetPsiChild6_6Projection, targetPsiChild6_7Projection, targetPsiChild6_8Projection, targetPsiChild6_9Projection, targetPsiChild6_10Projection, targetPsiChild6_11Projection, targetPsiChild6_12Projection, targetPsiChild6_13Projection, targetPsiChild6_14Projection, targetPsiChild6_15Projection, targetPsiChild6_16Projection, targetPsiChild6_17Projection, targetPsiChild6_18Projection, targetPsiChild6_19Projection, targetPsiChild6_20Projection, targetPsiChild6_21Projection, targetPsiChild6_22Projection, targetPsiChild6_23Projection, targetPsiChild6_24Projection, targetPsiChild6_25Projection, targetPsiChild6_26Projection, targetPsiChild6_27Projection, targetPsiChild6_28Projection, targetPsiChild6_29Projection, targetPsiChild6_30Projection, targetPsiChild6_31Projection, targetPsiChild6_32Projection, targetPsiChild6_33Projection, targetPsiChild6_34Projection, targetPsiChild6_35Projection, targetPsiChild6_36Projection, targetPsiChild6_37Projection, targetPsiChild6_38Projection, targetPsiChild6_39Projection, targetPsiChild6_40Projection, targetPsiChild6_41Projection, targetPsiChild6_42Projection, targetPsiChild6_43Projection, targetPsiChild6_44Projection, targetPsiChild6_45Projection, targetPsiChild6_46Projection, targetPsiChild6_47Projection, targetPsiChild6_48Projection, targetPsiChild6_49Projection, targetPsiChild6_50Projection, targetPsiChild6_51Projection, targetPsiChild6_52Projection, targetPsiChild6_53Projection, targetPsiChild6_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild6_0 hH
    · exact targetPsiChild6_1 hH
    · exact targetPsiChild6_2 hH
    · exact targetPsiChild6_3 hH
    · exact targetPsiChild6_4 hH
    · exact targetPsiChild6_5 hH
    · exact targetPsiChild6_6 hH
    · exact targetPsiChild6_7 hH
    · exact targetPsiChild6_8 hH
    · exact targetPsiChild6_9 hH
    · exact targetPsiChild6_10 hH
    · exact targetPsiChild6_11 hH
    · exact targetPsiChild6_12 hH
    · exact targetPsiChild6_13 hH
    · exact targetPsiChild6_14 hH
    · exact targetPsiChild6_15 hH
    · exact targetPsiChild6_16 hH
    · exact targetPsiChild6_17 hH
    · exact targetPsiChild6_18 hH
    · exact targetPsiChild6_19 hH
    · exact targetPsiChild6_20 hH
    · exact targetPsiChild6_21 hH
    · exact targetPsiChild6_22 hH
    · exact targetPsiChild6_23 hH
    · exact targetPsiChild6_24 hH
    · exact targetPsiChild6_25 hH
    · exact targetPsiChild6_26 hH
    · exact targetPsiChild6_27 hH
    · exact targetPsiChild6_28 hH
    · exact targetPsiChild6_29 hH
    · exact targetPsiChild6_30 hH
    · exact targetPsiChild6_31 hH
    · exact targetPsiChild6_32 hH
    · exact targetPsiChild6_33 hH
    · exact targetPsiChild6_34 hH
    · exact targetPsiChild6_35 hH
    · exact targetPsiChild6_36 hH
    · exact targetPsiChild6_37 hH
    · exact targetPsiChild6_38 hH
    · exact targetPsiChild6_39 hH
    · exact targetPsiChild6_40 hH
    · exact targetPsiChild6_41 hH
    · exact targetPsiChild6_42 hH
    · exact targetPsiChild6_43 hH
    · exact targetPsiChild6_44 hH
    · exact targetPsiChild6_45 hH
    · exact targetPsiChild6_46 hH
    · exact targetPsiChild6_47 hH
    · exact targetPsiChild6_48 hH
    · exact targetPsiChild6_49 hH
    · exact targetPsiChild6_50 hH
    · exact targetPsiChild6_51 hH
    · exact targetPsiChild6_52 hH
    · exact targetPsiChild6_53 hH
    · exact targetPsiChild6_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 6) i) (targetPsiTerm H 6)
    (-1) 1440 1440 (-1) ![40, 1440, 1440, 80, 80, 1440, 1440, 360, 360, 360, 360, 1440, 360, 360, 360, 16, 10, 360, 16, 360, 1440, 40, 80, 1440, 1440, 80, 80, 360, 360, 1440, 360, 360, 1440, 360, 80, 40, 1440, 1440, 16, 1440, 360, 360, 1440, 360, 16, 40, 80, 1440, 80, 360, 1440, 40, 1440, 1440, 40] ![36, 1, 1, 18, 18, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 90, 144, 4, 90, 4, 1, 36, 18, 1, 1, 18, 18, 4, 4, 1, 4, 4, 1, 4, 18, 36, 1, 1, 90, 1, 4, 4, 1, 4, 90, 36, 18, 1, 18, 4, 1, 36, 1, 1, 36] targetPsiRow6Projection ![targetPsiChild6_0Projection, targetPsiChild6_1Projection, targetPsiChild6_2Projection, targetPsiChild6_3Projection, targetPsiChild6_4Projection, targetPsiChild6_5Projection, targetPsiChild6_6Projection, targetPsiChild6_7Projection, targetPsiChild6_8Projection, targetPsiChild6_9Projection, targetPsiChild6_10Projection, targetPsiChild6_11Projection, targetPsiChild6_12Projection, targetPsiChild6_13Projection, targetPsiChild6_14Projection, targetPsiChild6_15Projection, targetPsiChild6_16Projection, targetPsiChild6_17Projection, targetPsiChild6_18Projection, targetPsiChild6_19Projection, targetPsiChild6_20Projection, targetPsiChild6_21Projection, targetPsiChild6_22Projection, targetPsiChild6_23Projection, targetPsiChild6_24Projection, targetPsiChild6_25Projection, targetPsiChild6_26Projection, targetPsiChild6_27Projection, targetPsiChild6_28Projection, targetPsiChild6_29Projection, targetPsiChild6_30Projection, targetPsiChild6_31Projection, targetPsiChild6_32Projection, targetPsiChild6_33Projection, targetPsiChild6_34Projection, targetPsiChild6_35Projection, targetPsiChild6_36Projection, targetPsiChild6_37Projection, targetPsiChild6_38Projection, targetPsiChild6_39Projection, targetPsiChild6_40Projection, targetPsiChild6_41Projection, targetPsiChild6_42Projection, targetPsiChild6_43Projection, targetPsiChild6_44Projection, targetPsiChild6_45Projection, targetPsiChild6_46Projection, targetPsiChild6_47Projection, targetPsiChild6_48Projection, targetPsiChild6_49Projection, targetPsiChild6_50Projection, targetPsiChild6_51Projection, targetPsiChild6_52Projection, targetPsiChild6_53Projection, targetPsiChild6_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

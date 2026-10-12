import NoFourMUBs.Step2.SOS.Canonical478
import NoFourMUBs.Step2.SOS.Canonical482
import NoFourMUBs.Step2.SOS.Canonical516
import NoFourMUBs.Step2.SOS.Canonical517
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical524
import NoFourMUBs.Step2.SOS.Canonical525
import NoFourMUBs.Step2.SOS.Canonical526
import NoFourMUBs.Step2.SOS.Canonical527
import NoFourMUBs.Step2.SOS.Canonical530
import NoFourMUBs.Step2.SOS.Canonical533
import NoFourMUBs.Step2.SOS.Canonical534
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.Canonical536
import NoFourMUBs.Step2.SOS.Canonical537
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions383
import NoFourMUBs.Step2.SOS.TargetProjectionTerms

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiChild0_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection0)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild0_0 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 0 =
      Integer.Sparse.eval targetPsiChild0_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 0) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 0) true) = canonicalInput34225.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34225 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_1 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 1 =
      Integer.Sparse.eval targetPsiChild0_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 1) false) = canonicalInput30861.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30861 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 1) true) = canonicalInput34224.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34224 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_2 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 2 =
      Integer.Sparse.eval targetPsiChild0_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 2) false) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 2) true) = canonicalInput34221.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34221 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_3 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 3 =
      Integer.Sparse.eval targetPsiChild0_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 3) false) = canonicalInput33277.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33277 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 3) true) = canonicalInput34218.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34218 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_4 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 4 =
      Integer.Sparse.eval targetPsiChild0_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 4) false) = canonicalInput33537.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33537 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 4) true) = canonicalInput34215.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34215 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-16) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_5 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 5 =
      Integer.Sparse.eval targetPsiChild0_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 5) false) = canonicalInput33663.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33663 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 5) true) = canonicalInput34212.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34212 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-16 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_6 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 6 =
      Integer.Sparse.eval targetPsiChild0_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 6) false) = canonicalInput30890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30890 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 6) true) = canonicalInput34223.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34223 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_7 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 7 =
      Integer.Sparse.eval targetPsiChild0_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 7) false) = canonicalInput33092.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33092 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 7) true) = canonicalInput34220.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34220 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_8 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 8 =
      Integer.Sparse.eval targetPsiChild0_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 8) false) = canonicalInput33306.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33306 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 8) true) = canonicalInput34217.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34217 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_9 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 9 =
      Integer.Sparse.eval targetPsiChild0_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 9) false) = canonicalInput33566.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33566 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 9) true) = canonicalInput34214.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34214 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_10 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 10 =
      Integer.Sparse.eval targetPsiChild0_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 10) false) = canonicalInput33724.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33724 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 10) true) = canonicalInput34211.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34211 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_11 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 11 =
      Integer.Sparse.eval targetPsiChild0_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 11) false) = canonicalInput33959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33959 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 11) true) = canonicalInput34209.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34209 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_12 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 12 =
      Integer.Sparse.eval targetPsiChild0_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 12) false) = canonicalInput33964.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33964 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 12) true) = canonicalInput34207.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34207 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_13 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 13 =
      Integer.Sparse.eval targetPsiChild0_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 13) false) = canonicalInput33982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33982 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 13) true) = canonicalInput34203.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34203 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_14 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 14 =
      Integer.Sparse.eval targetPsiChild0_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 14) false) = canonicalInput34139.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34139 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 14) true) = canonicalInput34201.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34201 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_15 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 15 =
      Integer.Sparse.eval targetPsiChild0_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 15) false) = canonicalInput33969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33969 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 15) true) = canonicalInput34205.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34205 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (24) oldProjection44)
    (Integer.Sparse.scale (-24) oldProjection44)

theorem targetPsiChild0_16 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * targetPsiTerm H 0 16 =
      Integer.Sparse.eval targetPsiChild0_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 16) false) = canonicalInput34200.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34200 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 16) true) = canonicalInput34200.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34200 hH))).trans (oldProjectionSound44 hH)
  change (1 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (24 : ℝ) * hh0 + (-24 : ℝ) * hh1

def targetPsiChild0_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_17 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 17 =
      Integer.Sparse.eval targetPsiChild0_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 17) false) = canonicalInput34233.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34233 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 17) true) = canonicalInput34198.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34198 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_18 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 18 =
      Integer.Sparse.eval targetPsiChild0_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 18) false) = canonicalInput34271.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34271 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 18) true) = canonicalInput34196.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34196 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_19 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 19 =
      Integer.Sparse.eval targetPsiChild0_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 19) false) = canonicalInput34276.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34276 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 19) true) = canonicalInput34194.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34194 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_20 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 20 =
      Integer.Sparse.eval targetPsiChild0_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 20) false) = canonicalInput34281.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34281 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 20) true) = canonicalInput34192.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34192 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild0_21 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 21 =
      Integer.Sparse.eval targetPsiChild0_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 21) false) = canonicalInput30891.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30891 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 21) true) = canonicalInput34222.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34222 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_22 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 22 =
      Integer.Sparse.eval targetPsiChild0_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 22) false) = canonicalInput33121.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33121 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 22) true) = canonicalInput34219.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34219 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_23 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 23 =
      Integer.Sparse.eval targetPsiChild0_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 23) false) = canonicalInput33307.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33307 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 23) true) = canonicalInput34216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34216 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_24 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 24 =
      Integer.Sparse.eval targetPsiChild0_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 24) false) = canonicalInput33567.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33567 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 24) true) = canonicalInput34213.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34213 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_25 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 25 =
      Integer.Sparse.eval targetPsiChild0_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 25) false) = canonicalInput33753.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33753 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 25) true) = canonicalInput34210.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34210 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_26 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 26 =
      Integer.Sparse.eval targetPsiChild0_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 26) false) = canonicalInput33960.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33960 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 26) true) = canonicalInput34208.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34208 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_27 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 27 =
      Integer.Sparse.eval targetPsiChild0_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 27) false) = canonicalInput33965.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33965 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 27) true) = canonicalInput34206.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34206 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_28 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 28 =
      Integer.Sparse.eval targetPsiChild0_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 28) false) = canonicalInput33983.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33983 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 28) true) = canonicalInput34202.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34202 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_29 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 29 =
      Integer.Sparse.eval targetPsiChild0_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 29) false) = canonicalInput33970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33970 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 29) true) = canonicalInput34204.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34204 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_30 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 30 =
      Integer.Sparse.eval targetPsiChild0_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 30) false) = canonicalInput34229.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34229 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 30) true) = canonicalInput34199.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34199 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_31 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 31 =
      Integer.Sparse.eval targetPsiChild0_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 31) false) = canonicalInput34234.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34234 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 31) true) = canonicalInput34197.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34197 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_32 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 32 =
      Integer.Sparse.eval targetPsiChild0_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 32) false) = canonicalInput34272.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34272 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 32) true) = canonicalInput34195.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34195 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_33 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 33 =
      Integer.Sparse.eval targetPsiChild0_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 33) false) = canonicalInput34277.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34277 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 33) true) = canonicalInput34193.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34193 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 34 =
      Integer.Sparse.eval targetPsiChild0_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 34) false) = canonicalInput34282.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34282 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 34) true) = canonicalInput34191.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34191 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild0_35 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 35 =
      Integer.Sparse.eval targetPsiChild0_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 35) false) = canonicalInput34338.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34338 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 35) true) = canonicalInput34190.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34190 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_36 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 36 =
      Integer.Sparse.eval targetPsiChild0_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 36) false) = canonicalInput34342.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34342 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 36) true) = canonicalInput34189.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34189 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_37 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 37 =
      Integer.Sparse.eval targetPsiChild0_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 37) false) = canonicalInput34357.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34357 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 37) true) = canonicalInput34186.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34186 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_38 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 38 =
      Integer.Sparse.eval targetPsiChild0_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 38) false) = canonicalInput34361.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34361 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 38) true) = canonicalInput34185.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34185 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_39 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 39 =
      Integer.Sparse.eval targetPsiChild0_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 39) false) = canonicalInput34346.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34346 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 39) true) = canonicalInput34188.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34188 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_40 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 40 =
      Integer.Sparse.eval targetPsiChild0_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 40) false) = canonicalInput34362.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34362 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 40) true) = canonicalInput34184.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34184 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_41 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 41 =
      Integer.Sparse.eval targetPsiChild0_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 41) false) = canonicalInput34366.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34366 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 41) true) = canonicalInput34183.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34183 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_42 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 42 =
      Integer.Sparse.eval targetPsiChild0_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 42) false) = canonicalInput34375.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34375 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 42) true) = canonicalInput34180.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34180 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_43 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 43 =
      Integer.Sparse.eval targetPsiChild0_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 43) false) = canonicalInput34379.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34379 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 43) true) = canonicalInput34179.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34179 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_44 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 44 =
      Integer.Sparse.eval targetPsiChild0_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 44) false) = canonicalInput34384.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34384 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 44) true) = canonicalInput34177.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34177 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild0_45 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 45 =
      Integer.Sparse.eval targetPsiChild0_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 45) false) = canonicalInput34350.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34350 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 45) true) = canonicalInput34187.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34187 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_46 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 46 =
      Integer.Sparse.eval targetPsiChild0_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 46) false) = canonicalInput34367.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34367 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 46) true) = canonicalInput34182.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34182 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_47 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 47 =
      Integer.Sparse.eval targetPsiChild0_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 47) false) = canonicalInput34371.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34371 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 47) true) = canonicalInput34181.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34181 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild0_48 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 0 48 =
      Integer.Sparse.eval targetPsiChild0_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 48) false) = canonicalInput34380.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34380 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 48) true) = canonicalInput34178.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34178 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-480) oldProjection43)
    (Integer.Sparse.scale (1) reductionProjection7144)

theorem targetPsiChild0_49 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 49 =
      Integer.Sparse.eval targetPsiChild0_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 49) false) = canonicalInput34385.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection43 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34385 hH))).trans (oldProjectionSound43 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 49) true) = canonicalInput34176.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection7144 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34176 hH))).trans (reductionSound7144 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-480 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_50 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 50 =
      Integer.Sparse.eval targetPsiChild0_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 50) false) = canonicalInput34389.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34389 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 50) true) = canonicalInput34175.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34175 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection19)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild0_51 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 51 =
      Integer.Sparse.eval targetPsiChild0_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 51) false) = canonicalInput34397.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection19 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34397 hH))).trans (oldProjectionSound19 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 51) true) = canonicalInput34174.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34174 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild0_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-80) oldProjection37)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_52 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 52 =
      Integer.Sparse.eval targetPsiChild0_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 52) false) = canonicalInput34401.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection37 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34401 hH))).trans (oldProjectionSound37 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 52) true) = canonicalInput34173.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34173 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-80 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-5) oldProjection58)
    (Integer.Sparse.scale (1) reductionProjection7146)

theorem targetPsiChild0_53 {H : CMatrix} (hH : IsHadamard H) :
    (40 : ℝ) * targetPsiTerm H 0 53 =
      Integer.Sparse.eval targetPsiChild0_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 53) false) = canonicalInput34405.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection58 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34405 hH))).trans (oldProjectionSound58 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 53) true) = canonicalInput34172.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection7146 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34172 hH))).trans (reductionSound7146 hH)
  change (40 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-5 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild0_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (240) oldProjection3)
    (Integer.Sparse.scale (-1) reductionProjection7148)

theorem targetPsiChild0_54 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * targetPsiTerm H 0 54 =
      Integer.Sparse.eval targetPsiChild0_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 0) false - blockExponent (psiExponent 54) false) = canonicalInput34409.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection3 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound34409 hH))).trans (oldProjectionSound3 hH)
  have he1 : (blockExponent (psiExponent 0) false + blockExponent (psiExponent 54) true) = canonicalInput34171.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (240 : ℝ) * injectiveMoment H (blockExponent (psiExponent 0) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection7148 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound34171 hH))).trans (reductionSound7148 hH)
  change (120 : ℝ) * ((2 * ((1 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild0_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (240 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow0Projection : Integer.Sparse (Fin 1613) := [(0, 504), (60, 960), (87, 1440), (94, 1320), (145, -17280), (169, -8640), (287, 6480), (365, -34560), (366, -51840), (367, -17280), (426, 12960), (478, -17280), (483, -8640), (489, -8640), (515, -17280), (523, -51840), (524, -17280), (602, -69120), (610, -8640), (618, -8640), (638, -8640), (666, -21600), (668, -8640), (697, 1440), (698, -21600), (700, -2880), (821, 28800), (823, 34560), (826, 17280), (828, -8640), (829, -17280), (848, -25920), (850, 8640), (853, 8640), (854, 8640), (857, 8640), (865, -12960), (875, 8640), (890, -21600), (903, 17280), (936, 17280), (943, -95040), (952, 17280), (955, 17280), (973, 17280), (986, 17280), (1015, 25920), (1016, 8640), (1055, 7200), (1058, 2880), (1059, -6240), (1171, 17280), (1190, 51840), (1212, -2880), (1219, 2880), (1220, -2880), (1223, 1440), (1227, -1680), (1251, 4560), (1389, 14400)]

theorem targetPsiRow0 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 0) i) =
      Integer.Sparse.eval targetPsiRow0Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 0) i) =
      Integer.Sparse.eval (![targetPsiChild0_0Projection, targetPsiChild0_1Projection, targetPsiChild0_2Projection, targetPsiChild0_3Projection, targetPsiChild0_4Projection, targetPsiChild0_5Projection, targetPsiChild0_6Projection, targetPsiChild0_7Projection, targetPsiChild0_8Projection, targetPsiChild0_9Projection, targetPsiChild0_10Projection, targetPsiChild0_11Projection, targetPsiChild0_12Projection, targetPsiChild0_13Projection, targetPsiChild0_14Projection, targetPsiChild0_15Projection, targetPsiChild0_16Projection, targetPsiChild0_17Projection, targetPsiChild0_18Projection, targetPsiChild0_19Projection, targetPsiChild0_20Projection, targetPsiChild0_21Projection, targetPsiChild0_22Projection, targetPsiChild0_23Projection, targetPsiChild0_24Projection, targetPsiChild0_25Projection, targetPsiChild0_26Projection, targetPsiChild0_27Projection, targetPsiChild0_28Projection, targetPsiChild0_29Projection, targetPsiChild0_30Projection, targetPsiChild0_31Projection, targetPsiChild0_32Projection, targetPsiChild0_33Projection, targetPsiChild0_34Projection, targetPsiChild0_35Projection, targetPsiChild0_36Projection, targetPsiChild0_37Projection, targetPsiChild0_38Projection, targetPsiChild0_39Projection, targetPsiChild0_40Projection, targetPsiChild0_41Projection, targetPsiChild0_42Projection, targetPsiChild0_43Projection, targetPsiChild0_44Projection, targetPsiChild0_45Projection, targetPsiChild0_46Projection, targetPsiChild0_47Projection, targetPsiChild0_48Projection, targetPsiChild0_49Projection, targetPsiChild0_50Projection, targetPsiChild0_51Projection, targetPsiChild0_52Projection, targetPsiChild0_53Projection, targetPsiChild0_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild0_0 hH
    · exact targetPsiChild0_1 hH
    · exact targetPsiChild0_2 hH
    · exact targetPsiChild0_3 hH
    · exact targetPsiChild0_4 hH
    · exact targetPsiChild0_5 hH
    · exact targetPsiChild0_6 hH
    · exact targetPsiChild0_7 hH
    · exact targetPsiChild0_8 hH
    · exact targetPsiChild0_9 hH
    · exact targetPsiChild0_10 hH
    · exact targetPsiChild0_11 hH
    · exact targetPsiChild0_12 hH
    · exact targetPsiChild0_13 hH
    · exact targetPsiChild0_14 hH
    · exact targetPsiChild0_15 hH
    · change ((1 : ℤ) : ℝ) * ((targetPsiTerm H 0) 16) =
        Integer.Sparse.eval targetPsiChild0_16Projection (Normalization.momentVector H)
      rw [Int.cast_one]
      exact targetPsiChild0_16 hH
    · exact targetPsiChild0_17 hH
    · exact targetPsiChild0_18 hH
    · exact targetPsiChild0_19 hH
    · exact targetPsiChild0_20 hH
    · exact targetPsiChild0_21 hH
    · exact targetPsiChild0_22 hH
    · exact targetPsiChild0_23 hH
    · exact targetPsiChild0_24 hH
    · exact targetPsiChild0_25 hH
    · exact targetPsiChild0_26 hH
    · exact targetPsiChild0_27 hH
    · exact targetPsiChild0_28 hH
    · exact targetPsiChild0_29 hH
    · exact targetPsiChild0_30 hH
    · exact targetPsiChild0_31 hH
    · exact targetPsiChild0_32 hH
    · exact targetPsiChild0_33 hH
    · exact targetPsiChild0_34 hH
    · exact targetPsiChild0_35 hH
    · exact targetPsiChild0_36 hH
    · exact targetPsiChild0_37 hH
    · exact targetPsiChild0_38 hH
    · exact targetPsiChild0_39 hH
    · exact targetPsiChild0_40 hH
    · exact targetPsiChild0_41 hH
    · exact targetPsiChild0_42 hH
    · exact targetPsiChild0_43 hH
    · exact targetPsiChild0_44 hH
    · exact targetPsiChild0_45 hH
    · exact targetPsiChild0_46 hH
    · exact targetPsiChild0_47 hH
    · exact targetPsiChild0_48 hH
    · exact targetPsiChild0_49 hH
    · exact targetPsiChild0_50 hH
    · exact targetPsiChild0_51 hH
    · exact targetPsiChild0_52 hH
    · exact targetPsiChild0_53 hH
    · exact targetPsiChild0_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 0) i) (targetPsiTerm H 0)
    (-1) 240 240 (-1) ![120, 40, 40, 80, 80, 40, 40, 120, 120, 120, 120, 40, 120, 120, 120, 80, 1, 120, 80, 120, 40, 120, 80, 40, 40, 80, 80, 120, 120, 40, 120, 120, 40, 120, 80, 120, 40, 40, 80, 40, 120, 120, 40, 120, 80, 120, 80, 40, 80, 120, 40, 120, 40, 40, 120] ![2, 6, 6, 3, 3, 6, 6, 2, 2, 2, 2, 6, 2, 2, 2, 3, 240, 2, 3, 2, 6, 2, 3, 6, 6, 3, 3, 2, 2, 6, 2, 2, 6, 2, 3, 2, 6, 6, 3, 6, 2, 2, 6, 2, 3, 2, 3, 6, 3, 2, 6, 2, 6, 6, 2] targetPsiRow0Projection ![targetPsiChild0_0Projection, targetPsiChild0_1Projection, targetPsiChild0_2Projection, targetPsiChild0_3Projection, targetPsiChild0_4Projection, targetPsiChild0_5Projection, targetPsiChild0_6Projection, targetPsiChild0_7Projection, targetPsiChild0_8Projection, targetPsiChild0_9Projection, targetPsiChild0_10Projection, targetPsiChild0_11Projection, targetPsiChild0_12Projection, targetPsiChild0_13Projection, targetPsiChild0_14Projection, targetPsiChild0_15Projection, targetPsiChild0_16Projection, targetPsiChild0_17Projection, targetPsiChild0_18Projection, targetPsiChild0_19Projection, targetPsiChild0_20Projection, targetPsiChild0_21Projection, targetPsiChild0_22Projection, targetPsiChild0_23Projection, targetPsiChild0_24Projection, targetPsiChild0_25Projection, targetPsiChild0_26Projection, targetPsiChild0_27Projection, targetPsiChild0_28Projection, targetPsiChild0_29Projection, targetPsiChild0_30Projection, targetPsiChild0_31Projection, targetPsiChild0_32Projection, targetPsiChild0_33Projection, targetPsiChild0_34Projection, targetPsiChild0_35Projection, targetPsiChild0_36Projection, targetPsiChild0_37Projection, targetPsiChild0_38Projection, targetPsiChild0_39Projection, targetPsiChild0_40Projection, targetPsiChild0_41Projection, targetPsiChild0_42Projection, targetPsiChild0_43Projection, targetPsiChild0_44Projection, targetPsiChild0_45Projection, targetPsiChild0_46Projection, targetPsiChild0_47Projection, targetPsiChild0_48Projection, targetPsiChild0_49Projection, targetPsiChild0_50Projection, targetPsiChild0_51Projection, targetPsiChild0_52Projection, targetPsiChild0_53Projection, targetPsiChild0_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

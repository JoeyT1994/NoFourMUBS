import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical294
import NoFourMUBs.Step2.SOS.Canonical295
import NoFourMUBs.Step2.SOS.Canonical341
import NoFourMUBs.Step2.SOS.Canonical342
import NoFourMUBs.Step2.SOS.Canonical343
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical421
import NoFourMUBs.Step2.SOS.Canonical422
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
import NoFourMUBs.Step2.SOS.Canonical519
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical523
import NoFourMUBs.Step2.SOS.Canonical525
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

def targetPsiChild34_0Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild34_0 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 0 =
      Integer.Sparse.eval targetPsiChild34_0Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 0) false) = canonicalInput9476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 0) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9476 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 0) true) = canonicalInput27009.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 0) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27009 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_0Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild34_1Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild34_1 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 34 1 =
      Integer.Sparse.eval targetPsiChild34_1Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 1) false) = canonicalInput9477.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 1) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9477 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 1) true) = canonicalInput27008.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 1) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27008 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_1Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_2Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_2 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 2 =
      Integer.Sparse.eval targetPsiChild34_2Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 2) false) = canonicalInput18813.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 2) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18813 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 2) true) = canonicalInput27005.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 2) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27005 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_2Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_3Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_3 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 3 =
      Integer.Sparse.eval targetPsiChild34_3Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 3) false) = canonicalInput18878.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 3) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18878 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 3) true) = canonicalInput27002.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 3) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27002 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_3Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_4Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_4 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 4 =
      Integer.Sparse.eval targetPsiChild34_4Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 4) false) = canonicalInput21825.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 4) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21825 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 4) true) = canonicalInput26999.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 4) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26999 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_4Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_5Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_5 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 5 =
      Integer.Sparse.eval targetPsiChild34_5Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 5) false) = canonicalInput21890.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 5) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21890 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 5) true) = canonicalInput26996.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 5) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26996 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_5Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_6Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_6 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 6 =
      Integer.Sparse.eval targetPsiChild34_6Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 6) false) = canonicalInput9478.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 6) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9478 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 6) true) = canonicalInput27007.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 6) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27007 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_6Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_7Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_7 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 7 =
      Integer.Sparse.eval targetPsiChild34_7Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 7) false) = canonicalInput18814.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 7) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18814 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 7) true) = canonicalInput27004.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 7) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27004 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_7Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_8Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_8 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 8 =
      Integer.Sparse.eval targetPsiChild34_8Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 8) false) = canonicalInput18911.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 8) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18911 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 8) true) = canonicalInput27001.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 8) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27001 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_8Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_9Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_9 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 9 =
      Integer.Sparse.eval targetPsiChild34_9Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 9) false) = canonicalInput21858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 9) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21858 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 9) true) = canonicalInput26998.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 9) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26998 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_9Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_10Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild34_10 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 34 10 =
      Integer.Sparse.eval targetPsiChild34_10Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 10) false) = canonicalInput21923.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 10) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21923 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 10) true) = canonicalInput26995.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 10) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26995 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_10Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_11Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild34_11 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 34 11 =
      Integer.Sparse.eval targetPsiChild34_11Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 11) false) = canonicalInput24452.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 11) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24452 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 11) true) = canonicalInput26993.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 11) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26993 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_11Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_12Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_12 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 12 =
      Integer.Sparse.eval targetPsiChild34_12Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 12) false) = canonicalInput24456.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 12) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24456 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 12) true) = canonicalInput26991.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 12) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26991 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_12Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_13Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_13 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 13 =
      Integer.Sparse.eval targetPsiChild34_13Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 13) false) = canonicalInput26947.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 13) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26947 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 13) true) = canonicalInput26987.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 13) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26987 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_13Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_14Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_14 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 14 =
      Integer.Sparse.eval targetPsiChild34_14Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 14) false) = canonicalInput26951.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 14) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26951 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 14) true) = canonicalInput26985.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 14) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26985 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_14Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_15Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_15 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 15 =
      Integer.Sparse.eval targetPsiChild34_15Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 15) false) = canonicalInput24461.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 15) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24461 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 15) true) = canonicalInput26989.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 15) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26989 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_15Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_16Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-36) oldProjection64)

theorem targetPsiChild34_16 {H : CMatrix} (hH : IsHadamard H) :
    (5 : ℝ) * targetPsiTerm H 34 16 =
      Integer.Sparse.eval targetPsiChild34_16Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 16) false) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 16) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 16) true) = canonicalInput26984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 16) true) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26984 hH))).trans (oldProjectionSound64 hH)
  change (5 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((12 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_16Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-36 : ℝ) * hh1

def targetPsiChild34_17Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild34_17 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 34 17 =
      Integer.Sparse.eval targetPsiChild34_17Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 17) false) = canonicalInput27109.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 17) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27109 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 17) true) = canonicalInput26982.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 17) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26982 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_17Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_18Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_18 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 18 =
      Integer.Sparse.eval targetPsiChild34_18Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 18) false) = canonicalInput30243.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 18) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30243 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 18) true) = canonicalInput26980.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 18) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26980 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_18Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_19Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild34_19 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 34 19 =
      Integer.Sparse.eval targetPsiChild34_19Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 19) false) = canonicalInput30280.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 19) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30280 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 19) true) = canonicalInput26978.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 19) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26978 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_19Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_20Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_20 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 20 =
      Integer.Sparse.eval targetPsiChild34_20Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 20) false) = canonicalInput30407.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 20) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30407 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 20) true) = canonicalInput26976.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 20) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26976 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_20Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_21Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection41)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild34_21 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 21 =
      Integer.Sparse.eval targetPsiChild34_21Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 21) false) = canonicalInput9479.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 21) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound9479 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 21) true) = canonicalInput27006.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 21) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27006 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_21Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild34_22Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild34_22 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 34 22 =
      Integer.Sparse.eval targetPsiChild34_22Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 22) false) = canonicalInput18847.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 22) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18847 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 22) true) = canonicalInput27003.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 22) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27003 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_22Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild34_23Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_23 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 23 =
      Integer.Sparse.eval targetPsiChild34_23Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 23) false) = canonicalInput18940.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 23) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound18940 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 23) true) = canonicalInput27000.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 23) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound27000 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_23Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_24Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection62)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_24 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 24 =
      Integer.Sparse.eval targetPsiChild34_24Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 24) false) = canonicalInput21887.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 24) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21887 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 24) true) = canonicalInput26997.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 24) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26997 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_24Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_25Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_25 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 25 =
      Integer.Sparse.eval targetPsiChild34_25Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 25) false) = canonicalInput21984.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 25) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound21984 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 25) true) = canonicalInput26994.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 25) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26994 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_25Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_26Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection41)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild34_26 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 34 26 =
      Integer.Sparse.eval targetPsiChild34_26Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 26) false) = canonicalInput24453.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 26) false) =
      Integer.Sparse.eval oldProjection41 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24453 hH))).trans (oldProjectionSound41 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 26) true) = canonicalInput26992.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 26) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26992 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_26Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild34_27Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_27 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 27 =
      Integer.Sparse.eval targetPsiChild34_27Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 27) false) = canonicalInput24457.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 27) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24457 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 27) true) = canonicalInput26990.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 27) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26990 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_27Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_28Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_28 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 28 =
      Integer.Sparse.eval targetPsiChild34_28Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 28) false) = canonicalInput26948.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 28) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound26948 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 28) true) = canonicalInput26986.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 28) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26986 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_28Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_29Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild34_29 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 34 29 =
      Integer.Sparse.eval targetPsiChild34_29Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 29) false) = canonicalInput24462.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 29) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound24462 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 29) true) = canonicalInput26988.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 29) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26988 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_29Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_30Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_30 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 30 =
      Integer.Sparse.eval targetPsiChild34_30Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 30) false) = canonicalInput27045.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 30) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27045 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 30) true) = canonicalInput26983.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 30) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26983 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_30Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_31Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild34_31 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 34 31 =
      Integer.Sparse.eval targetPsiChild34_31Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 31) false) = canonicalInput27170.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 31) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound27170 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 31) true) = canonicalInput26981.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 31) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26981 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_31Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_32Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection4)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild34_32 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 34 32 =
      Integer.Sparse.eval targetPsiChild34_32Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 32) false) = canonicalInput30244.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 32) false) =
      Integer.Sparse.eval oldProjection4 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30244 hH))).trans (oldProjectionSound4 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 32) true) = canonicalInput26979.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 32) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26979 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_32Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_33Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild34_33 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 34 33 =
      Integer.Sparse.eval targetPsiChild34_33Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 33) false) = canonicalInput30341.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 33) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30341 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 33) true) = canonicalInput26977.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 33) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26977 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_33Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_34Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection0)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild34_34 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 34 34 =
      Integer.Sparse.eval targetPsiChild34_34Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 34) false) = canonicalInput30605.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 34) false) =
      Integer.Sparse.eval oldProjection0 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound30605 hH))).trans (oldProjectionSound0 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 34) true) = canonicalInput26975.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 34) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26975 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_34Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild34_35Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (480) oldProjection21)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild34_35 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 35 =
      Integer.Sparse.eval targetPsiChild34_35Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 35) false) = canonicalInput32851.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 35) false) =
      Integer.Sparse.eval oldProjection21 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32851 hH))).trans (oldProjectionSound21 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 35) true) = canonicalInput26974.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 35) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26974 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_35Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (480 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild34_36Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild34_36 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 34 36 =
      Integer.Sparse.eval targetPsiChild34_36Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 36) false) = canonicalInput32854.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 36) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32854 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 36) true) = canonicalInput26973.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 36) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26973 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_36Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_37Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection36)
    (Integer.Sparse.scale (1) reductionProjection11170)

theorem targetPsiChild34_37 {H : CMatrix} (hH : IsHadamard H) :
    (16 : ℝ) * targetPsiTerm H 34 37 =
      Integer.Sparse.eval targetPsiChild34_37Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 37) false) = canonicalInput32880.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 37) false) =
      Integer.Sparse.eval oldProjection36 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32880 hH))).trans (oldProjectionSound36 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 37) true) = canonicalInput26970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 37) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26970 hH))).trans (reductionSound11170 hH)
  change (16 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_37Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_38Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (72) oldProjection44)
    (Integer.Sparse.scale (-3) reductionProjection12081)

theorem targetPsiChild34_38 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * targetPsiTerm H 34 38 =
      Integer.Sparse.eval targetPsiChild34_38Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 38) false) = canonicalInput32883.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (1 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 38) false) =
      Integer.Sparse.eval oldProjection44 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32883 hH))).trans (oldProjectionSound44 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 38) true) = canonicalInput26969.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 38) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26969 hH))).trans (reductionSound12081 hH)
  change (4 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_38Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (72 : ℝ) * hh0 + (-3 : ℝ) * hh1

def targetPsiChild34_39Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_39 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 39 =
      Integer.Sparse.eval targetPsiChild34_39Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 39) false) = canonicalInput32858.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 39) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32858 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 39) true) = canonicalInput26972.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 39) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26972 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_39Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_40Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection62)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_40 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 40 =
      Integer.Sparse.eval targetPsiChild34_40Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 40) false) = canonicalInput32884.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 40) false) =
      Integer.Sparse.eval oldProjection62 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32884 hH))).trans (oldProjectionSound62 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 40) true) = canonicalInput26968.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 40) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26968 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_40Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_41Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_41 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 41 =
      Integer.Sparse.eval targetPsiChild34_41Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 41) false) = canonicalInput32888.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 41) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32888 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 41) true) = canonicalInput26967.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 41) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26967 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_41Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_42Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection56)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_42 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 42 =
      Integer.Sparse.eval targetPsiChild34_42Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 42) false) = canonicalInput32929.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 42) false) =
      Integer.Sparse.eval oldProjection56 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32929 hH))).trans (oldProjectionSound56 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 42) true) = canonicalInput26964.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 42) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26964 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_42Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_43Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-3) oldProjection61)
    (Integer.Sparse.scale (2) reductionProjection12078)

theorem targetPsiChild34_43 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 43 =
      Integer.Sparse.eval targetPsiChild34_43Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 43) false) = canonicalInput32933.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 43) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32933 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 43) true) = canonicalInput26963.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 43) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26963 hH))).trans (reductionSound12078 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_43Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-3 : ℝ) * hh0 + (2 : ℝ) * hh1

def targetPsiChild34_44Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (36) oldProjection64)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_44 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 44 =
      Integer.Sparse.eval targetPsiChild34_44Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 44) false) = canonicalInput32970.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 44) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32970 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 44) true) = canonicalInput26961.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 44) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26961 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_44Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (36 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_45Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild34_45 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 45 =
      Integer.Sparse.eval targetPsiChild34_45Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 45) false) = canonicalInput32862.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 45) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32862 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 45) true) = canonicalInput26971.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 45) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26971 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_45Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild34_46Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_46 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 46 =
      Integer.Sparse.eval targetPsiChild34_46Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 46) false) = canonicalInput32889.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 46) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32889 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 46) true) = canonicalInput26966.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 46) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26966 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_46Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_47Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_47 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 47 =
      Integer.Sparse.eval targetPsiChild34_47Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 47) false) = canonicalInput32893.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 47) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32893 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 47) true) = canonicalInput26965.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 47) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26965 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_47Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_48Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (18) oldProjection11)
    (Integer.Sparse.scale (-15) reductionProjection12081)

theorem targetPsiChild34_48 {H : CMatrix} (hH : IsHadamard H) :
    (20 : ℝ) * targetPsiTerm H 34 48 =
      Integer.Sparse.eval targetPsiChild34_48Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 48) false) = canonicalInput32934.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (20 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 48) false) =
      Integer.Sparse.eval oldProjection11 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (20 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound32934 hH))).trans (oldProjectionSound11 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 48) true) = canonicalInput26962.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (24 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 48) true) =
      Integer.Sparse.eval reductionProjection12081 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26962 hH))).trans (reductionSound12081 hH)
  change (20 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((3 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_48Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (18 : ℝ) * hh0 + (-15 : ℝ) * hh1

def targetPsiChild34_49Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-24) oldProjection5)
    (Integer.Sparse.scale (1) reductionProjection12078)

theorem targetPsiChild34_49 {H : CMatrix} (hH : IsHadamard H) :
    (10 : ℝ) * targetPsiTerm H 34 49 =
      Integer.Sparse.eval targetPsiChild34_49Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 49) false) = canonicalInput33031.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 49) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33031 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 49) true) = canonicalInput26960.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (120 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 49) true) =
      Integer.Sparse.eval reductionProjection12078 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26960 hH))).trans (reductionSound12078 hH)
  change (10 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-2 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_49Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-24 : ℝ) * hh0 + (1 : ℝ) * hh1

def targetPsiChild34_50Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_50 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 50 =
      Integer.Sparse.eval targetPsiChild34_50Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 50) false) = canonicalInput33216.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 50) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33216 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 50) true) = canonicalInput26959.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 50) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26959 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_50Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_51Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (30) oldProjection57)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild34_51 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 51 =
      Integer.Sparse.eval targetPsiChild34_51Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 51) false) = canonicalInput33375.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (16 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 51) false) =
      Integer.Sparse.eval oldProjection57 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33375 hH))).trans (oldProjectionSound57 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 51) true) = canonicalInput26958.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 51) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26958 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_51Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (30 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiChild34_52Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-6) oldProjection61)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_52 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 52 =
      Integer.Sparse.eval targetPsiChild34_52Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 52) false) = canonicalInput33379.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (80 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 52) false) =
      Integer.Sparse.eval oldProjection61 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33379 hH))).trans (oldProjectionSound61 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 52) true) = canonicalInput26957.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 52) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26957 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_52Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-6 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_53Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (-96) oldProjection5)
    (Integer.Sparse.scale (5) reductionProjection11170)

theorem targetPsiChild34_53 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 53 =
      Integer.Sparse.eval targetPsiChild34_53Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 53) false) = canonicalInput33476.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (5 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 53) false) =
      Integer.Sparse.eval oldProjection5 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (5 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33476 hH))).trans (oldProjectionSound5 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 53) true) = canonicalInput26956.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (96 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 53) true) =
      Integer.Sparse.eval reductionProjection11170 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26956 hH))).trans (reductionSound11170 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((-1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_53Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (-96 : ℝ) * hh0 + (5 : ℝ) * hh1

def targetPsiChild34_54Projection : Integer.Sparse (Fin 1613) :=
  Integer.Sparse.merge (Integer.Sparse.scale (48) oldProjection64)
    (Integer.Sparse.scale (-1) reductionProjection12281)

theorem targetPsiChild34_54 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * targetPsiTerm H 34 54 =
      Integer.Sparse.eval targetPsiChild34_54Projection (Normalization.momentVector H) := by
  have he0 : (blockExponent (psiExponent 34) false - blockExponent (psiExponent 54) false) = canonicalInput33602.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh0 : (10 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false - blockExponent (psiExponent 54) false) =
      Integer.Sparse.eval oldProjection64 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (10 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he0).trans (canonicalSound33602 hH))).trans (oldProjectionSound64 hH)
  have he1 : (blockExponent (psiExponent 34) false + blockExponent (psiExponent 54) true) = canonicalInput26955.entries := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hh1 : (480 : ℝ) * injectiveMoment H (blockExponent (psiExponent 34) false + blockExponent (psiExponent 54) true) =
      Integer.Sparse.eval reductionProjection12281 (Normalization.momentVector H) := by
    exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix Coord Coord ℤ => injectiveMoment H M) he1).trans (canonicalSound26955 hH))).trans (reductionSound12281 hH)
  change (80 : ℝ) * ((2 * ((3 : ℤ) : ℝ) * ((1 : ℤ) : ℝ)) * (_ - _)) = _
  rw [targetPsiChild34_54Projection, Integer.Sparse.eval_merge, Integer.Sparse.eval_scale, Integer.Sparse.eval_scale]
  linear_combination (48 : ℝ) * hh0 + (-1 : ℝ) * hh1

def targetPsiRow34Projection : Integer.Sparse (Fin 1613) := []

theorem targetPsiRow34 {H : CMatrix} (hH : IsHadamard H) :
    (80 : ℝ) * (∑ i : Fin 55, (targetPsiTerm H 34) i) =
      Integer.Sparse.eval targetPsiRow34Projection (Normalization.momentVector H) := by
  have hc : ∀ i : Fin 55, ((![80, 16, 80, 20, 20, 80, 80, 20, 20, 20, 10, 16, 20, 20, 20, 20, 5, 10, 20, 10, 80, 80, 4, 80, 80, 20, 4, 20, 20, 16, 20, 10, 16, 10, 4, 80, 16, 16, 4, 80, 20, 20, 80, 20, 20, 80, 20, 80, 20, 10, 80, 80, 80, 80, 80] : Fin 55 → ℤ) i : ℝ) * ((targetPsiTerm H 34) i) =
      Integer.Sparse.eval (![targetPsiChild34_0Projection, targetPsiChild34_1Projection, targetPsiChild34_2Projection, targetPsiChild34_3Projection, targetPsiChild34_4Projection, targetPsiChild34_5Projection, targetPsiChild34_6Projection, targetPsiChild34_7Projection, targetPsiChild34_8Projection, targetPsiChild34_9Projection, targetPsiChild34_10Projection, targetPsiChild34_11Projection, targetPsiChild34_12Projection, targetPsiChild34_13Projection, targetPsiChild34_14Projection, targetPsiChild34_15Projection, targetPsiChild34_16Projection, targetPsiChild34_17Projection, targetPsiChild34_18Projection, targetPsiChild34_19Projection, targetPsiChild34_20Projection, targetPsiChild34_21Projection, targetPsiChild34_22Projection, targetPsiChild34_23Projection, targetPsiChild34_24Projection, targetPsiChild34_25Projection, targetPsiChild34_26Projection, targetPsiChild34_27Projection, targetPsiChild34_28Projection, targetPsiChild34_29Projection, targetPsiChild34_30Projection, targetPsiChild34_31Projection, targetPsiChild34_32Projection, targetPsiChild34_33Projection, targetPsiChild34_34Projection, targetPsiChild34_35Projection, targetPsiChild34_36Projection, targetPsiChild34_37Projection, targetPsiChild34_38Projection, targetPsiChild34_39Projection, targetPsiChild34_40Projection, targetPsiChild34_41Projection, targetPsiChild34_42Projection, targetPsiChild34_43Projection, targetPsiChild34_44Projection, targetPsiChild34_45Projection, targetPsiChild34_46Projection, targetPsiChild34_47Projection, targetPsiChild34_48Projection, targetPsiChild34_49Projection, targetPsiChild34_50Projection, targetPsiChild34_51Projection, targetPsiChild34_52Projection, targetPsiChild34_53Projection, targetPsiChild34_54Projection] i) (Normalization.momentVector H) := by
    intro i
    fin_cases i
    · exact targetPsiChild34_0 hH
    · exact targetPsiChild34_1 hH
    · exact targetPsiChild34_2 hH
    · exact targetPsiChild34_3 hH
    · exact targetPsiChild34_4 hH
    · exact targetPsiChild34_5 hH
    · exact targetPsiChild34_6 hH
    · exact targetPsiChild34_7 hH
    · exact targetPsiChild34_8 hH
    · exact targetPsiChild34_9 hH
    · exact targetPsiChild34_10 hH
    · exact targetPsiChild34_11 hH
    · exact targetPsiChild34_12 hH
    · exact targetPsiChild34_13 hH
    · exact targetPsiChild34_14 hH
    · exact targetPsiChild34_15 hH
    · exact targetPsiChild34_16 hH
    · exact targetPsiChild34_17 hH
    · exact targetPsiChild34_18 hH
    · exact targetPsiChild34_19 hH
    · exact targetPsiChild34_20 hH
    · exact targetPsiChild34_21 hH
    · exact targetPsiChild34_22 hH
    · exact targetPsiChild34_23 hH
    · exact targetPsiChild34_24 hH
    · exact targetPsiChild34_25 hH
    · exact targetPsiChild34_26 hH
    · exact targetPsiChild34_27 hH
    · exact targetPsiChild34_28 hH
    · exact targetPsiChild34_29 hH
    · exact targetPsiChild34_30 hH
    · exact targetPsiChild34_31 hH
    · exact targetPsiChild34_32 hH
    · exact targetPsiChild34_33 hH
    · exact targetPsiChild34_34 hH
    · exact targetPsiChild34_35 hH
    · exact targetPsiChild34_36 hH
    · exact targetPsiChild34_37 hH
    · exact targetPsiChild34_38 hH
    · exact targetPsiChild34_39 hH
    · exact targetPsiChild34_40 hH
    · exact targetPsiChild34_41 hH
    · exact targetPsiChild34_42 hH
    · exact targetPsiChild34_43 hH
    · exact targetPsiChild34_44 hH
    · exact targetPsiChild34_45 hH
    · exact targetPsiChild34_46 hH
    · exact targetPsiChild34_47 hH
    · exact targetPsiChild34_48 hH
    · exact targetPsiChild34_49 hH
    · exact targetPsiChild34_50 hH
    · exact targetPsiChild34_51 hH
    · exact targetPsiChild34_52 hH
    · exact targetPsiChild34_53 hH
    · exact targetPsiChild34_54 hH
  exact integer_projection (Normalization.momentVector H) (∑ i, (targetPsiTerm H 34) i) (targetPsiTerm H 34)
    (-1) 80 80 (-1) ![80, 16, 80, 20, 20, 80, 80, 20, 20, 20, 10, 16, 20, 20, 20, 20, 5, 10, 20, 10, 80, 80, 4, 80, 80, 20, 4, 20, 20, 16, 20, 10, 16, 10, 4, 80, 16, 16, 4, 80, 20, 20, 80, 20, 20, 80, 20, 80, 20, 10, 80, 80, 80, 80, 80] ![1, 5, 1, 4, 4, 1, 1, 4, 4, 4, 8, 5, 4, 4, 4, 4, 16, 8, 4, 8, 1, 1, 20, 1, 1, 4, 20, 4, 4, 5, 4, 8, 5, 8, 20, 1, 5, 5, 20, 1, 4, 4, 1, 4, 4, 1, 4, 1, 4, 8, 1, 1, 1, 1, 1] targetPsiRow34Projection ![targetPsiChild34_0Projection, targetPsiChild34_1Projection, targetPsiChild34_2Projection, targetPsiChild34_3Projection, targetPsiChild34_4Projection, targetPsiChild34_5Projection, targetPsiChild34_6Projection, targetPsiChild34_7Projection, targetPsiChild34_8Projection, targetPsiChild34_9Projection, targetPsiChild34_10Projection, targetPsiChild34_11Projection, targetPsiChild34_12Projection, targetPsiChild34_13Projection, targetPsiChild34_14Projection, targetPsiChild34_15Projection, targetPsiChild34_16Projection, targetPsiChild34_17Projection, targetPsiChild34_18Projection, targetPsiChild34_19Projection, targetPsiChild34_20Projection, targetPsiChild34_21Projection, targetPsiChild34_22Projection, targetPsiChild34_23Projection, targetPsiChild34_24Projection, targetPsiChild34_25Projection, targetPsiChild34_26Projection, targetPsiChild34_27Projection, targetPsiChild34_28Projection, targetPsiChild34_29Projection, targetPsiChild34_30Projection, targetPsiChild34_31Projection, targetPsiChild34_32Projection, targetPsiChild34_33Projection, targetPsiChild34_34Projection, targetPsiChild34_35Projection, targetPsiChild34_36Projection, targetPsiChild34_37Projection, targetPsiChild34_38Projection, targetPsiChild34_39Projection, targetPsiChild34_40Projection, targetPsiChild34_41Projection, targetPsiChild34_42Projection, targetPsiChild34_43Projection, targetPsiChild34_44Projection, targetPsiChild34_45Projection, targetPsiChild34_46Projection, targetPsiChild34_47Projection, targetPsiChild34_48Projection, targetPsiChild34_49Projection, targetPsiChild34_50Projection, targetPsiChild34_51Projection, targetPsiChild34_52Projection, targetPsiChild34_53Projection, targetPsiChild34_54Projection]
    (by decide +kernel) (by decide +kernel)
    (by intro i; fin_cases i <;> decide +kernel) (by ring) hc (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

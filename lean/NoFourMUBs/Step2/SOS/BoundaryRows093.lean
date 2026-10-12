import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions122
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions340
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions344
import NoFourMUBs.Step2.SOS.Reductions347
import NoFourMUBs.Step2.SOS.Reductions349

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput218 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]

theorem rowSound218 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 218) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row218 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row218 H]
  have hshape : boundaryInput218 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput218 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10640, reductionProjection10651, reductionProjection10689, reductionProjection10768, reductionProjection2370, reductionProjection11111] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput218 (0 : Fin 6)) = canonicalInput18245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10640 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10640 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18245 hH))).trans (reductionSound10640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput218 (1 : Fin 6)) = canonicalInput26684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10651 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10651 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26684 hH))).trans (reductionSound10651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput218 (2 : Fin 6)) = canonicalInput26788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10689 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10689 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26788 hH))).trans (reductionSound10689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput218 (3 : Fin 6)) = canonicalInput26818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10768 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10768 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26818 hH))).trans (reductionSound10768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput218 (4 : Fin 6)) = canonicalInput26819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2370 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2370 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26819 hH))).trans (reductionSound2370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput218 (5 : Fin 6)) = canonicalInput26820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11111 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput218 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11111 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26820 hH))).trans (reductionSound11111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput218 (j : Fin 6)))
    720 1440 ![1440, 1440, 288, 1440, 288, 144] ![-720, -720, -3600, -720, -3600, -7200] (extendRow Arithmetic.row218) ![reductionProjection10640, reductionProjection10651, reductionProjection10689, reductionProjection10768, reductionProjection2370, reductionProjection11111]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput230 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3], ![0, -1, 3, -2]]

theorem rowSound230 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 230) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row230 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row230 H]
  have hshape : boundaryInput230 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput230 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10912, reductionProjection11011, reductionProjection11114, reductionProjection11112, reductionProjection2453, reductionProjection10900] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput230 (0 : Fin 6)) = canonicalInput20356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10912 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10912 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20356 hH))).trans (reductionSound10912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput230 (1 : Fin 6)) = canonicalInput28059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11011 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11011 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28059 hH))).trans (reductionSound11011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput230 (2 : Fin 6)) = canonicalInput29752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11114 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11114 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29752 hH))).trans (reductionSound11114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput230 (3 : Fin 6)) = canonicalInput29971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11112 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11112 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29971 hH))).trans (reductionSound11112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput230 (4 : Fin 6)) = canonicalInput29977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2453 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2453 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29977 hH))).trans (reductionSound2453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput230 (5 : Fin 6)) = canonicalInput29978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10900 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput230 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10900 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29978 hH))).trans (reductionSound10900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput230 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 288] ![-7200, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row230) ![reductionProjection10912, reductionProjection11011, reductionProjection11114, reductionProjection11112, reductionProjection2453, reductionProjection10900]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput301 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, -1, -3, 2]]

theorem rowSound301 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 301) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row301 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row301 H]
  have hshape : boundaryInput301 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput301 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8638, reductionProjection8636, oldProjection3226, oldProjection3226, reductionProjection4571, reductionProjection11120] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput301 (0 : Fin 6)) = canonicalInput20281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8638 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20281 hH))).trans (reductionSound8638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput301 (1 : Fin 6)) = canonicalInput28012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8636 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28012 hH))).trans (reductionSound8636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput301 (2 : Fin 6)) = canonicalInput28820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28820 hH))).trans (oldProjectionSound3226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput301 (3 : Fin 6)) = canonicalInput29098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29098 hH))).trans (oldProjectionSound3226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput301 (4 : Fin 6)) = canonicalInput29123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4571 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4571 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29123 hH))).trans (reductionSound4571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput301 (5 : Fin 6)) = canonicalInput29125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11120 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput301 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29125 hH))).trans (reductionSound11120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput301 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row301) ![reductionProjection8638, reductionProjection8636, oldProjection3226, oldProjection3226, reductionProjection4571, reductionProjection11120]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput326 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, 0, -4, 2]]

theorem rowSound326 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 326) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row326 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row326 H]
  have hshape : boundaryInput326 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput326 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6439, reductionProjection6443, reductionProjection6493, reductionProjection6493, oldProjection2960, reductionProjection11109] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput326 (0 : Fin 6)) = canonicalInput17263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6439 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17263 hH))).trans (reductionSound6439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput326 (1 : Fin 6)) = canonicalInput25487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6443 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6443 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25487 hH))).trans (reductionSound6443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput326 (2 : Fin 6)) = canonicalInput26011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6493 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6493 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26011 hH))).trans (reductionSound6493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput326 (3 : Fin 6)) = canonicalInput26037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6493 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6493 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26037 hH))).trans (reductionSound6493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput326 (4 : Fin 6)) = canonicalInput26039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2960 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2960 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26039 hH))).trans (oldProjectionSound2960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput326 (5 : Fin 6)) = canonicalInput26040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11109 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput326 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11109 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26040 hH))).trans (reductionSound11109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput326 (j : Fin 6)))
    288 1440 ![288, 1440, 1440, 1440, 144, 1440] ![-1440, -288, -288, -288, -2880, -288] (extendRow Arithmetic.row326) ![reductionProjection6439, reductionProjection6443, reductionProjection6493, reductionProjection6493, oldProjection2960, reductionProjection11109]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput474 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 1, 1], ![1, 2, 1, -4]]

theorem rowSound474 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 474) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row474 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row474 H]
  have hshape : boundaryInput474 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput474 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8143, reductionProjection10129, reductionProjection10129, reductionProjection10133, reductionProjection10140, reductionProjection11105] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput474 (0 : Fin 6)) = (normalNode4445).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8143 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8143 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput474 (1 : Fin 6)) = canonicalInput21707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10129 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10129 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21707 hH))).trans (reductionSound10129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput474 (2 : Fin 6)) = canonicalInput21756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10129 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10129 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21756 hH))).trans (reductionSound10129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput474 (3 : Fin 6)) = canonicalInput21760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10133 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21760 hH))).trans (reductionSound10133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput474 (4 : Fin 6)) = canonicalInput21761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10140 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10140 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21761 hH))).trans (reductionSound10140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput474 (5 : Fin 6)) = canonicalInput21762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11105 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput474 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11105 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21762 hH))).trans (reductionSound11105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput474 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-720, -720, -720, -1440, -720, -720] (extendRow Arithmetic.row474) ![reductionProjection8143, reductionProjection10129, reductionProjection10129, reductionProjection10133, reductionProjection10140, reductionProjection11105]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput599 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![2, 0, 1, -2, -1]]

theorem rowSound599 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 599) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row599 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row599 H]
  have hshape : boundaryInput599 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput599 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![576, 2880, 2880, 2880, 2880, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3913, reductionProjection3882, reductionProjection3887, reductionProjection3871, reductionProjection3545, reductionProjection11187] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput599 (0 : Fin 6)) = canonicalInput15869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3913 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3913 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15869 hH))).trans (reductionSound3913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput599 (1 : Fin 6)) = canonicalInput24972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3882 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3882 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24972 hH))).trans (reductionSound3882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput599 (2 : Fin 6)) = canonicalInput25142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3887 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25142 hH))).trans (reductionSound3887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput599 (3 : Fin 6)) = canonicalInput25243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3871 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25243 hH))).trans (reductionSound3871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput599 (4 : Fin 6)) = canonicalInput25253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3545 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3545 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25253 hH))).trans (reductionSound3545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput599 (5 : Fin 6)) = canonicalInput25259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11187 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput599 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25259 hH))).trans (reductionSound11187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput599 (j : Fin 6)))
    288 2880 ![576, 2880, 2880, 2880, 2880, 576] ![-1440, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row599) ![reductionProjection3913, reductionProjection3882, reductionProjection3887, reductionProjection3871, reductionProjection3545, reductionProjection11187]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput602 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]

theorem rowSound602 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 602) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row602 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row602 H]
  have hshape : boundaryInput602 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput602 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 576, 1440, 2880, 576, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8243, reductionProjection8237, reductionProjection8241, reductionProjection3927, reductionProjection10810, reductionProjection11187] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput602 (0 : Fin 6)) = canonicalInput15870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8243 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8243 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15870 hH))).trans (reductionSound8243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput602 (1 : Fin 6)) = canonicalInput24973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8237 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8237 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24973 hH))).trans (reductionSound8237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput602 (2 : Fin 6)) = canonicalInput25143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8241 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8241 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25143 hH))).trans (reductionSound8241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput602 (3 : Fin 6)) = canonicalInput25244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3927 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3927 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25244 hH))).trans (reductionSound3927 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput602 (4 : Fin 6)) = canonicalInput25254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10810 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10810 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25254 hH))).trans (reductionSound10810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput602 (5 : Fin 6)) = canonicalInput25260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11187 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput602 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25260 hH))).trans (reductionSound11187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput602 (j : Fin 6)))
    2880 2880 ![720, 576, 1440, 2880, 576, 576] ![-11520, -14400, -5760, -2880, -14400, -14400] (extendRow Arithmetic.row602) ![reductionProjection8243, reductionProjection8237, reductionProjection8241, reductionProjection3927, reductionProjection10810, reductionProjection11187]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput619 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, -1, 0], ![0, 0, 2, -1, -1], ![2, 0, -1, 1, -2]]

theorem rowSound619 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 619) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row619 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row619 H]
  have hshape : boundaryInput619 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput619 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 1440, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3157, reductionProjection3157, reductionProjection3812, reductionProjection3070, reductionProjection3120, reductionProjection11193] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput619 (0 : Fin 6)) = canonicalInput15680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3157 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3157 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15680 hH))).trans (reductionSound3157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput619 (1 : Fin 6)) = canonicalInput24926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3157 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3157 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24926 hH))).trans (reductionSound3157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput619 (2 : Fin 6)) = canonicalInput25023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3812 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3812 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25023 hH))).trans (reductionSound3812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput619 (3 : Fin 6)) = canonicalInput25041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3070 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25041 hH))).trans (reductionSound3070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput619 (4 : Fin 6)) = canonicalInput25062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3120 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3120 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25062 hH))).trans (reductionSound3120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput619 (5 : Fin 6)) = canonicalInput25063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11193 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput619 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25063 hH))).trans (reductionSound11193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput619 (j : Fin 6)))
    576 2880 ![2880, 2880, 1440, 2880, 2880, 2880] ![-576, -576, -1152, -576, -576, -576] (extendRow Arithmetic.row619) ![reductionProjection3157, reductionProjection3157, reductionProjection3812, reductionProjection3070, reductionProjection3120, reductionProjection11193]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

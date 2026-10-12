import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions262
import NoFourMUBs.Step2.SOS.Reductions263
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions271
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical290

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput515 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 0, 3, -1], ![1, 2, 0, -3]]

theorem rowSound515 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 515) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row515 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row515 H]
  have hshape : boundaryInput515 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput515 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 48, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8400, reductionProjection8400, reductionProjection4638, reductionProjection8419, reductionProjection4650, reductionProjection6966] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput515 (0 : Fin 6)) = canonicalInput24780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24780 hH))).trans (reductionSound8400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput515 (1 : Fin 6)) = canonicalInput28089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28089 hH))).trans (reductionSound8400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput515 (2 : Fin 6)) = canonicalInput28270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4638 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28270 hH))).trans (reductionSound4638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput515 (3 : Fin 6)) = canonicalInput28402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8419 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8419 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28402 hH))).trans (reductionSound8419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput515 (4 : Fin 6)) = canonicalInput28405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4650 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4650 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28405 hH))).trans (reductionSound4650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput515 (5 : Fin 6)) = canonicalInput28407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6966 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput515 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6966 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28407 hH))).trans (reductionSound6966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput515 (j : Fin 6)))
    90 1440 ![1440, 1440, 1440, 48, 288, 1440] ![-90, -90, -90, -2700, -450, -90] (extendRow Arithmetic.row515) ![reductionProjection8400, reductionProjection8400, reductionProjection4638, reductionProjection8419, reductionProjection4650, reductionProjection6966]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput335 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]

theorem rowSound335 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 335) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row335 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row335 H]
  have hshape : boundaryInput335 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput335 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6455, reductionProjection6452, reductionProjection6386, reductionProjection6386, reductionProjection6457, reductionProjection8458] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput335 (0 : Fin 6)) = canonicalInput17151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6455 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17151 hH))).trans (reductionSound6455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput335 (1 : Fin 6)) = canonicalInput25432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6452 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6452 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25432 hH))).trans (reductionSound6452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput335 (2 : Fin 6)) = canonicalInput25740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6386 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6386 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25740 hH))).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput335 (3 : Fin 6)) = canonicalInput25791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6386 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6386 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25791 hH))).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput335 (4 : Fin 6)) = canonicalInput25794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6457 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6457 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25794 hH))).trans (reductionSound6457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput335 (5 : Fin 6)) = canonicalInput25797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput335 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25797 hH))).trans (reductionSound8458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput335 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 1440, 1440] ![-1440, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row335) ![reductionProjection6455, reductionProjection6452, reductionProjection6386, reductionProjection6386, reductionProjection6457, reductionProjection8458]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput220 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 2, -3]]

theorem rowSound220 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 220) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row220 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row220 H]
  have hshape : boundaryInput220 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput220 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8535, reductionProjection8559, reductionProjection8559, reductionProjection1202, reductionProjection8530, reductionProjection5707] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput220 (0 : Fin 6)) = canonicalInput27884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8535 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27884 hH))).trans (reductionSound8535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput220 (1 : Fin 6)) = canonicalInput29493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29493 hH))).trans (reductionSound8559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput220 (2 : Fin 6)) = canonicalInput29760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29760 hH))).trans (reductionSound8559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput220 (3 : Fin 6)) = canonicalInput29793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1202 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1202 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29793 hH))).trans (reductionSound1202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput220 (4 : Fin 6)) = canonicalInput29799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8530 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8530 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29799 hH))).trans (reductionSound8530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput220 (5 : Fin 6)) = canonicalInput29800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5707 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput220 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5707 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29800 hH))).trans (reductionSound5707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput220 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 288, 1440, 1440] ![-720, -720, -720, -3600, -720, -720] (extendRow Arithmetic.row220) ![reductionProjection8535, reductionProjection8559, reductionProjection8559, reductionProjection1202, reductionProjection8530, reductionProjection5707]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput496 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -1, 2, -3]]

theorem rowSound496 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 496) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row496 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row496 H]
  have hshape : boundaryInput496 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput496 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 720, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1277, oldProjection3224, oldProjection2161, reductionProjection1270, reductionProjection8559, reductionProjection1638] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput496 (0 : Fin 6)) = canonicalInput24849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1277 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1277 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24849 hH))).trans (reductionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput496 (1 : Fin 6)) = canonicalInput28424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3224 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3224 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28424 hH))).trans (oldProjectionSound3224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput496 (2 : Fin 6)) = canonicalInput29413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2161 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2161 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29413 hH))).trans (oldProjectionSound2161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput496 (3 : Fin 6)) = canonicalInput29478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1270 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1270 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29478 hH))).trans (reductionSound1270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput496 (4 : Fin 6)) = canonicalInput29493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29493 hH))).trans (reductionSound8559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput496 (5 : Fin 6)) = canonicalInput29494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1638 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput496 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29494 hH))).trans (reductionSound1638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput496 (j : Fin 6)))
    288 1440 ![1440, 720, 720, 288, 1440, 1440] ![-288, -576, -576, -1440, -288, -288] (extendRow Arithmetic.row496) ![reductionProjection1277, oldProjection3224, oldProjection2161, reductionProjection1270, reductionProjection8559, reductionProjection1638]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput447 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, 1, -2, 3]]

theorem rowSound447 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 447) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row447 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row447 H]
  have hshape : boundaryInput447 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput447 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1321, reductionProjection1321, reductionProjection1258, reductionProjection1325, reductionProjection8640, reductionProjection6446] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput447 (0 : Fin 6)) = canonicalInput24275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1321 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1321 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24275 hH))).trans (reductionSound1321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput447 (1 : Fin 6)) = canonicalInput26705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1321 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1321 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26705 hH))).trans (reductionSound1321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput447 (2 : Fin 6)) = canonicalInput26725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1258 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26725 hH))).trans (reductionSound1258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput447 (3 : Fin 6)) = canonicalInput26740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1325 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26740 hH))).trans (reductionSound1325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput447 (4 : Fin 6)) = canonicalInput26741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8640 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8640 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26741 hH))).trans (reductionSound8640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput447 (5 : Fin 6)) = canonicalInput26742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6446 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput447 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6446 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26742 hH))).trans (reductionSound6446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput447 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row447) ![reductionProjection1321, reductionProjection1321, reductionProjection1258, reductionProjection1325, reductionProjection8640, reductionProjection6446]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput509 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![-2, 1, -2, 3]]

theorem rowSound509 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 509) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row509 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row509 H]
  have hshape : boundaryInput509 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput509 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1117, reductionProjection1121, reductionProjection1124, reductionProjection8667, reductionProjection1127, oldProjection3114] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput509 (0 : Fin 6)) = canonicalInput24304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1117 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1117 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24304 hH))).trans (reductionSound1117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput509 (1 : Fin 6)) = canonicalInput26759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1121 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1121 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26759 hH))).trans (reductionSound1121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput509 (2 : Fin 6)) = canonicalInput26851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1124 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26851 hH))).trans (reductionSound1124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput509 (3 : Fin 6)) = canonicalInput26868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8667 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26868 hH))).trans (reductionSound8667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput509 (4 : Fin 6)) = canonicalInput26869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1127 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1127 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26869 hH))).trans (reductionSound1127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput509 (5 : Fin 6)) = canonicalInput26870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3114 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput509 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3114 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26870 hH))).trans (oldProjectionSound3114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput509 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 72] ![-1440, -1440, -1440, -1440, -7200, -28800] (extendRow Arithmetic.row509) ![reductionProjection1117, reductionProjection1121, reductionProjection1124, reductionProjection8667, reductionProjection1127, oldProjection3114]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput235 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 1, 3, -2]]

theorem rowSound235 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 235) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row235 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row235 H]
  have hshape : boundaryInput235 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput235 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8699, reductionProjection8699, oldProjection2183, reductionProjection8695, reductionProjection8694, oldProjection3257] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput235 (0 : Fin 6)) = canonicalInput27639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8699 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8699 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27639 hH))).trans (reductionSound8699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput235 (1 : Fin 6)) = canonicalInput28141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8699 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8699 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28141 hH))).trans (reductionSound8699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput235 (2 : Fin 6)) = canonicalInput28301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2183 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2183 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28301 hH))).trans (oldProjectionSound2183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput235 (3 : Fin 6)) = canonicalInput28329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8695 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8695 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28329 hH))).trans (reductionSound8695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput235 (4 : Fin 6)) = canonicalInput28339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8694 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8694 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28339 hH))).trans (reductionSound8694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput235 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9299 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput235 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9299 hH))).trans (oldProjectionSound3257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput235 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-1440, -1440, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row235) ![reductionProjection8699, reductionProjection8699, oldProjection2183, reductionProjection8695, reductionProjection8694, oldProjection3257]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput262 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 1, 3, -2]]

theorem rowSound262 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 262) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row262 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row262 H]
  have hshape : boundaryInput262 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput262 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2175, reductionProjection8683, reductionProjection8682, reductionProjection8680, reductionProjection8689, oldProjection3251] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput262 (0 : Fin 6)) = canonicalInput30192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2175 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2175 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30192 hH))).trans (oldProjectionSound2175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput262 (1 : Fin 6)) = canonicalInput31439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8683 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31439 hH))).trans (reductionSound8683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput262 (2 : Fin 6)) = canonicalInput31514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8682 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8682 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31514 hH))).trans (reductionSound8682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput262 (3 : Fin 6)) = canonicalInput31559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8680 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8680 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31559 hH))).trans (reductionSound8680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput262 (4 : Fin 6)) = canonicalInput31568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8689 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8689 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31568 hH))).trans (reductionSound8689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput262 (5 : Fin 6)) = canonicalInput31569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput262 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31569 hH))).trans (oldProjectionSound3251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput262 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 288] ![-2880, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row262) ![oldProjection2175, reductionProjection8683, reductionProjection8682, reductionProjection8680, reductionProjection8689, oldProjection3251]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

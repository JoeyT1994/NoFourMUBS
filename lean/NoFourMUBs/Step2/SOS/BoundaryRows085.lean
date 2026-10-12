import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions330
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions335
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions337
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical310
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical314

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput274 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]

theorem rowSound274 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 274) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row274 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row274 H]
  have hshape : boundaryInput274 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput274 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3344, oldProjection3344, reductionProjection10721, reductionProjection10718, reductionProjection10736, oldProjection3362] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput274 (0 : Fin 6)) = canonicalInput32021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32021 hH))).trans (oldProjectionSound3344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput274 (1 : Fin 6)) = canonicalInput32527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32527 hH))).trans (oldProjectionSound3344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput274 (2 : Fin 6)) = canonicalInput32565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10721 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10721 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32565 hH))).trans (reductionSound10721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput274 (3 : Fin 6)) = canonicalInput32582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10718 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10718 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32582 hH))).trans (reductionSound10718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput274 (4 : Fin 6)) = canonicalInput32589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10736 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32589 hH))).trans (reductionSound10736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput274 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10074 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput274 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10074 hH))).trans (oldProjectionSound3362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput274 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row274) ![oldProjection3344, oldProjection3344, reductionProjection10721, reductionProjection10718, reductionProjection10736, oldProjection3362]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput280 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]

theorem rowSound280 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 280) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row280 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row280 H]
  have hshape : boundaryInput280 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput280 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10728, reductionProjection10732, reductionProjection10724, oldProjection3344, reductionProjection10737, oldProjection3364] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput280 (0 : Fin 6)) = canonicalInput31854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10728 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10728 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31854 hH))).trans (reductionSound10728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput280 (1 : Fin 6)) = canonicalInput31966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10732 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31966 hH))).trans (reductionSound10732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput280 (2 : Fin 6)) = canonicalInput31997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10724 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10724 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31997 hH))).trans (reductionSound10724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput280 (3 : Fin 6)) = canonicalInput32021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32021 hH))).trans (oldProjectionSound3344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput280 (4 : Fin 6)) = canonicalInput32024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10737 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32024 hH))).trans (reductionSound10737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput280 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10056 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput280 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10056 hH))).trans (oldProjectionSound3364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput280 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row280) ![reductionProjection10728, reductionProjection10732, reductionProjection10724, oldProjection3344, reductionProjection10737, oldProjection3364]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput118 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, -2, 2], ![2, 1, 2, -5]]

theorem rowSound118 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 118) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row118 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row118 H]
  have hshape : boundaryInput118 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput118 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1834, reductionProjection1837, reductionProjection1844, reductionProjection1942, reductionProjection1854, reductionProjection10778] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput118 (0 : Fin 6)) = canonicalInput7396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1834 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7396 hH))).trans (reductionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput118 (1 : Fin 6)) = canonicalInput20713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1837 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1837 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20713 hH))).trans (reductionSound1837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput118 (2 : Fin 6)) = canonicalInput20824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1844 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1844 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20824 hH))).trans (reductionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput118 (3 : Fin 6)) = canonicalInput20839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1942 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1942 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20839 hH))).trans (reductionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput118 (4 : Fin 6)) = canonicalInput20847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1854 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1854 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20847 hH))).trans (reductionSound1854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput118 (5 : Fin 6)) = canonicalInput20848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10778 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput118 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10778 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20848 hH))).trans (reductionSound10778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput118 (j : Fin 6)))
    1440 1440 ![288, 720, 1440, 1440, 720, 1440] ![-7200, -2880, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row118) ![reductionProjection1834, reductionProjection1837, reductionProjection1844, reductionProjection1942, reductionProjection1854, reductionProjection10778]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput146 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -1, -2, 4]]

theorem rowSound146 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 146) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row146 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row146 H]
  have hshape : boundaryInput146 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput146 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1548, oldProjection3346, reductionProjection10740, reductionProjection10759, oldProjection2914, reductionProjection10583] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput146 (0 : Fin 6)) = canonicalInput30198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1548 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1548 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30198 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput146 (1 : Fin 6)) = canonicalInput31445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3346 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3346 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31445 hH))).trans (oldProjectionSound3346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput146 (2 : Fin 6)) = canonicalInput31520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10740 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31520 hH))).trans (reductionSound10740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput146 (3 : Fin 6)) = canonicalInput31567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31567 hH))).trans (reductionSound10759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput146 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9937 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2914 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2914 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9937 hH))).trans (oldProjectionSound2914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput146 (5 : Fin 6)) = canonicalInput31579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10583 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput146 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31579 hH))).trans (reductionSound10583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput146 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 288, 720, 1440] ![-288, -288, -288, -1440, -576, -288] (extendRow Arithmetic.row146) ![oldProjection1548, oldProjection3346, reductionProjection10740, reductionProjection10759, oldProjection2914, reductionProjection10583]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput313 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -1, 4, -2]]

theorem rowSound313 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 313) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row313 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row313 H]
  have hshape : boundaryInput313 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput313 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10709, reductionProjection10758, reductionProjection10777, reductionProjection10659, reductionProjection10766, oldProjection2937] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput313 (0 : Fin 6)) = canonicalInput20351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10709 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10709 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20351 hH))).trans (reductionSound10709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput313 (1 : Fin 6)) = canonicalInput28054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10758 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10758 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28054 hH))).trans (reductionSound10758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput313 (2 : Fin 6)) = canonicalInput29743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29743 hH))).trans (reductionSound10777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput313 (3 : Fin 6)) = canonicalInput29878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10659 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10659 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29878 hH))).trans (reductionSound10659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput313 (4 : Fin 6)) = canonicalInput29900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10766 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29900 hH))).trans (reductionSound10766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput313 (5 : Fin 6)) = canonicalInput29901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput313 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29901 hH))).trans (oldProjectionSound2937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput313 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-288, -288, -288, -576, -288, -288] (extendRow Arithmetic.row313) ![reductionProjection10709, reductionProjection10758, reductionProjection10777, reductionProjection10659, reductionProjection10766, oldProjection2937]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput318 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -3, 1], ![-1, -1, 4, -2]]

theorem rowSound318 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 318) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row318 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row318 H]
  have hshape : boundaryInput318 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput318 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10611, reductionProjection10677, reductionProjection10689, reductionProjection10639, reductionProjection10777, reductionProjection2400] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput318 (0 : Fin 6)) = canonicalInput17222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10611 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17222 hH))).trans (reductionSound10611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput318 (1 : Fin 6)) = canonicalInput25470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10677 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25470 hH))).trans (reductionSound10677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput318 (2 : Fin 6)) = canonicalInput25853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10689 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10689 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25853 hH))).trans (reductionSound10689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput318 (3 : Fin 6)) = canonicalInput25972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10639 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25972 hH))).trans (reductionSound10639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput318 (4 : Fin 6)) = canonicalInput25981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25981 hH))).trans (reductionSound10777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput318 (5 : Fin 6)) = canonicalInput25983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput318 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25983 hH))).trans (reductionSound2400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput318 (j : Fin 6)))
    144 1440 ![288, 1440, 288, 1440, 1440, 1440] ![-720, -144, -720, -144, -144, -144] (extendRow Arithmetic.row318) ![reductionProjection10611, reductionProjection10677, reductionProjection10689, reductionProjection10639, reductionProjection10777, reductionProjection2400]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput337 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]

theorem rowSound337 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 337) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row337 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row337 H]
  have hshape : boundaryInput337 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput337 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10618, reductionProjection10696, reductionProjection10696, reductionProjection10776, reductionProjection10780, reductionProjection2420] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput337 (0 : Fin 6)) = canonicalInput17359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10618 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10618 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17359 hH))).trans (reductionSound10618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput337 (1 : Fin 6)) = canonicalInput25522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10696 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25522 hH))).trans (reductionSound10696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput337 (2 : Fin 6)) = canonicalInput26130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10696 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10696 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26130 hH))).trans (reductionSound10696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput337 (3 : Fin 6)) = canonicalInput26135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10776 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10776 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26135 hH))).trans (reductionSound10776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput337 (4 : Fin 6)) = canonicalInput26136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10780 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26136 hH))).trans (reductionSound10780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput337 (5 : Fin 6)) = canonicalInput26137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2420 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput337 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26137 hH))).trans (reductionSound2420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput337 (j : Fin 6)))
    1440 1440 ![720, 288, 288, 1440, 288, 1440] ![-2880, -7200, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row337) ![reductionProjection10618, reductionProjection10696, reductionProjection10696, reductionProjection10776, reductionProjection10780, reductionProjection2420]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput106 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![2, 1, 2, -5]]

theorem rowSound106 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 106) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row106 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row106 H]
  have hshape : boundaryInput106 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput106 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1899, reductionProjection1906, reductionProjection1926, reductionProjection1926, reductionProjection1891, reductionProjection10787] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput106 (0 : Fin 6)) = canonicalInput17126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1899 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1899 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17126 hH))).trans (reductionSound1899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput106 (1 : Fin 6)) = canonicalInput25415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25415 hH))).trans (reductionSound1906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput106 (2 : Fin 6)) = canonicalInput25696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1926 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1926 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25696 hH))).trans (reductionSound1926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput106 (3 : Fin 6)) = canonicalInput25723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1926 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1926 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25723 hH))).trans (reductionSound1926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput106 (4 : Fin 6)) = canonicalInput25726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1891 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25726 hH))).trans (reductionSound1891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput106 (5 : Fin 6)) = canonicalInput25729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10787 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput106 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10787 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25729 hH))).trans (reductionSound10787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput106 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-7200, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row106) ![reductionProjection1899, reductionProjection1906, reductionProjection1926, reductionProjection1926, reductionProjection1891, reductionProjection10787]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

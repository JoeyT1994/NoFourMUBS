import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical297

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput157 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -1, -1, 4]]

theorem rowSound157 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 157) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row157 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row157 H]
  have hshape : boundaryInput157 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput157 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2605, reductionProjection2608, reductionProjection2619, reductionProjection2622, oldProjection2919, reductionProjection1949] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput157 (0 : Fin 6)) = canonicalInput31856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2605 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31856 hH))).trans (reductionSound2605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput157 (1 : Fin 6)) = canonicalInput31968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2608 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2608 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31968 hH))).trans (reductionSound2608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput157 (2 : Fin 6)) = canonicalInput31999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2619 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2619 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31999 hH))).trans (reductionSound2619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput157 (3 : Fin 6)) = canonicalInput32023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32023 hH))).trans (reductionSound2622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput157 (4 : Fin 6)) = canonicalInput32030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2919 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2919 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32030 hH))).trans (oldProjectionSound2919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput157 (5 : Fin 6)) = canonicalInput32031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1949 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput157 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32031 hH))).trans (reductionSound1949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput157 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row157) ![reductionProjection2605, reductionProjection2608, reductionProjection2619, reductionProjection2622, oldProjection2919, reductionProjection1949]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput155 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 0, 3, -3], ![-2, -1, -1, 4]]

theorem rowSound155 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 155) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row155 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row155 H]
  have hshape : boundaryInput155 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput155 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 144, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2622, reductionProjection2622, reductionProjection2626, reductionProjection2629, oldProjection2935, reductionProjection1951] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput155 (0 : Fin 6)) = canonicalInput32023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32023 hH))).trans (reductionSound2622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput155 (1 : Fin 6)) = canonicalInput32529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2622 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32529 hH))).trans (reductionSound2622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput155 (2 : Fin 6)) = canonicalInput32567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2626 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2626 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32567 hH))).trans (reductionSound2626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput155 (3 : Fin 6)) = canonicalInput32584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2629 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2629 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32584 hH))).trans (reductionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput155 (4 : Fin 6)) = canonicalInput32594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2935 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32594 hH))).trans (oldProjectionSound2935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput155 (5 : Fin 6)) = canonicalInput32595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1951 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput155 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1951 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32595 hH))).trans (reductionSound1951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput155 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 144, 1440, 288] ![-1440, -1440, -1440, -14400, -1440, -7200] (extendRow Arithmetic.row155) ![reductionProjection2622, reductionProjection2622, reductionProjection2626, reductionProjection2629, oldProjection2935, reductionProjection1951]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput966 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 2, 1, -3]]

theorem rowSound966 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 966) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row966 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row966 H]
  have hshape : boundaryInput966 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput966 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4216, oldProjection2416, reductionProjection4213, oldProjection2954, reductionProjection2297, oldProjection3423] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput966 (0 : Fin 6)) = canonicalInput27801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4216 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4216 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27801 hH))).trans (reductionSound4216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput966 (1 : Fin 6)) = canonicalInput28797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2416 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2416 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28797 hH))).trans (oldProjectionSound2416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput966 (2 : Fin 6)) = canonicalInput29207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4213 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4213 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29207 hH))).trans (reductionSound4213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput966 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9533 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2954 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2954 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9533 hH))).trans (oldProjectionSound2954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput966 (4 : Fin 6)) = canonicalInput29277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2297 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29277 hH))).trans (reductionSound2297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput966 (5 : Fin 6)) = canonicalInput29278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3423 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput966 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3423 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29278 hH))).trans (oldProjectionSound3423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput966 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-288, -288, -288, -288, -288, -576] (extendRow Arithmetic.row966) ![reductionProjection4216, oldProjection2416, reductionProjection4213, oldProjection2954, reductionProjection2297, oldProjection3423]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput441 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, 3, -2, -2]]

theorem rowSound441 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 441) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row441 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row441 H]
  have hshape : boundaryInput441 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput441 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4073, reductionProjection4255, reductionProjection4255, reductionProjection4315, reductionProjection708, reductionProjection4322] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput441 (0 : Fin 6)) = canonicalInput24295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4073 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4073 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24295 hH))).trans (reductionSound4073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput441 (1 : Fin 6)) = canonicalInput26730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26730 hH))).trans (reductionSound4255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput441 (2 : Fin 6)) = canonicalInput26826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26826 hH))).trans (reductionSound4255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput441 (3 : Fin 6)) = canonicalInput26831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4315 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4315 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26831 hH))).trans (reductionSound4315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput441 (4 : Fin 6)) = canonicalInput26836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection708 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection708 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26836 hH))).trans (reductionSound708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput441 (5 : Fin 6)) = canonicalInput26837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4322 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput441 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4322 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26837 hH))).trans (reductionSound4322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput441 (j : Fin 6)))
    288 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-1440, -288, -288, -288, -288, -288] (extendRow Arithmetic.row441) ![reductionProjection4073, reductionProjection4255, reductionProjection4255, reductionProjection4315, reductionProjection708, reductionProjection4322]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1248 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 3, -1], ![1, -2, -1, 2]]

theorem rowSound1248 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1248) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1248 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1248 H]
  have hshape : boundaryInput1248 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1248 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 720, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4261, reductionProjection4322, reductionProjection4322, reductionProjection4258, oldProjection3033, reductionProjection4255] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1248 (0 : Fin 6)) = canonicalInput31845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4261 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31845 hH))).trans (reductionSound4261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1248 (1 : Fin 6)) = canonicalInput31941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4322 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4322 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31941 hH))).trans (reductionSound4322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1248 (2 : Fin 6)) = canonicalInput31982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4322 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4322 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31982 hH))).trans (reductionSound4322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1248 (3 : Fin 6)) = canonicalInput31984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4258 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31984 hH))).trans (reductionSound4258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1248 (4 : Fin 6)) = canonicalInput31985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3033 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31985 hH))).trans (oldProjectionSound3033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1248 (5 : Fin 6)) = canonicalInput31986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1248 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31986 hH))).trans (reductionSound4255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1248 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 720, 720, 1440] ![-7200, -1440, -1440, -2880, -2880, -1440] (extendRow Arithmetic.row1248) ![reductionProjection4261, reductionProjection4322, reductionProjection4322, reductionProjection4258, oldProjection3033, reductionProjection4255]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1268 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![2, -3, 0, 1]]

theorem rowSound1268 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1268) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1268 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1268 H]
  have hshape : boundaryInput1268 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1268 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 360, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4099, oldProjection1639, reductionProjection4331, oldProjection2972, reductionProjection4379, reductionProjection1086] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1268 (0 : Fin 6)) = canonicalInput27754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4099 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27754 hH))).trans (reductionSound4099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1268 (1 : Fin 6)) = canonicalInput28751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28751 hH))).trans (oldProjectionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1268 (2 : Fin 6)) = canonicalInput28961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4331 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4331 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28961 hH))).trans (reductionSound4331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1268 (3 : Fin 6)) = canonicalInput29095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2972 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2972 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29095 hH))).trans (oldProjectionSound2972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1268 (4 : Fin 6)) = canonicalInput29096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4379 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4379 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29096 hH))).trans (reductionSound4379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1268 (5 : Fin 6)) = canonicalInput29097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1086 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1268 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1086 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29097 hH))).trans (reductionSound1086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1268 (j : Fin 6)))
    1440 1440 ![1440, 288, 360, 720, 1440, 1440] ![-1440, -7200, -5760, -2880, -1440, -1440] (extendRow Arithmetic.row1268) ![reductionProjection4099, oldProjection1639, reductionProjection4331, oldProjection2972, reductionProjection4379, reductionProjection1086]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput222 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 0, 3], ![2, 1, 0, -3]]

theorem rowSound222 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 222) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row222 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row222 H]
  have hshape : boundaryInput222 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput222 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4288, reductionProjection4252, reductionProjection4409, reductionProjection4283, reductionProjection2436, reductionProjection4410] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput222 (0 : Fin 6)) = canonicalInput27715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4288 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27715 hH))).trans (reductionSound4288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput222 (1 : Fin 6)) = canonicalInput28708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4252 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28708 hH))).trans (reductionSound4252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput222 (2 : Fin 6)) = canonicalInput28917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4409 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4409 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28917 hH))).trans (reductionSound4409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput222 (3 : Fin 6)) = canonicalInput28956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4283 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28956 hH))).trans (reductionSound4283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput222 (4 : Fin 6)) = canonicalInput28958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2436 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2436 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28958 hH))).trans (reductionSound2436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput222 (5 : Fin 6)) = canonicalInput28959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4410 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput222 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4410 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28959 hH))).trans (reductionSound4410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput222 (j : Fin 6)))
    288 1440 ![720, 720, 1440, 1440, 1440, 288] ![-576, -576, -288, -288, -288, -1440] (extendRow Arithmetic.row222) ![reductionProjection4288, reductionProjection4252, reductionProjection4409, reductionProjection4283, reductionProjection2436, reductionProjection4410]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput851 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -1, 3, 0]]

theorem rowSound851 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 851) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row851 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row851 H]
  have hshape : boundaryInput851 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput851 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4420, reductionProjection4420, oldProjection2422, oldProjection2422, oldProjection2996, reductionProjection1292] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput851 (0 : Fin 6)) = canonicalInput24784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4420 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24784 hH))).trans (reductionSound4420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput851 (1 : Fin 6)) = canonicalInput28093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4420 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28093 hH))).trans (reductionSound4420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput851 (2 : Fin 6)) = canonicalInput28302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2422 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2422 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28302 hH))).trans (oldProjectionSound2422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput851 (3 : Fin 6)) = canonicalInput28433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2422 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2422 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28433 hH))).trans (oldProjectionSound2422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput851 (4 : Fin 6)) = canonicalInput28455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28455 hH))).trans (oldProjectionSound2996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput851 (5 : Fin 6)) = canonicalInput28457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput851 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28457 hH))).trans (reductionSound1292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput851 (j : Fin 6)))
    360 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-360, -360, -360, -360, -360, -1800] (extendRow Arithmetic.row851) ![reductionProjection4420, reductionProjection4420, oldProjection2422, oldProjection2422, oldProjection2996, reductionProjection1292]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

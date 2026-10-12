import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions093
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions115
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions154
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions185
import NoFourMUBs.Step2.SOS.Reductions186
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions366
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical295

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput605 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 0, 1, -2], ![2, -1, 1, -2, 0]]

theorem rowSound605 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 605) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row605 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row605 H]
  have hshape : boundaryInput605 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput605 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 576, 1440, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5950, reductionProjection5973, reductionProjection5978, reductionProjection3312, reductionProjection3304, reductionProjection11732] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput605 (0 : Fin 6)) = canonicalInput15877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5950 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5950 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15877 hH))).trans (reductionSound5950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput605 (1 : Fin 6)) = canonicalInput24980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5973 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5973 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24980 hH))).trans (reductionSound5973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput605 (2 : Fin 6)) = canonicalInput25150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5978 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5978 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25150 hH))).trans (reductionSound5978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput605 (3 : Fin 6)) = canonicalInput25251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3312 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3312 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25251 hH))).trans (reductionSound3312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput605 (4 : Fin 6)) = canonicalInput25273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3304 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3304 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25273 hH))).trans (reductionSound3304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput605 (5 : Fin 6)) = canonicalInput25274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11732 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput605 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25274 hH))).trans (reductionSound11732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput605 (j : Fin 6)))
    1440 2880 ![2880, 576, 1440, 2880, 2880, 2880] ![-1440, -7200, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row605) ![reductionProjection5950, reductionProjection5973, reductionProjection5978, reductionProjection3312, reductionProjection3304, reductionProjection11732]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput608 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, 0, -2], ![2, 1, -1, -2, 0]]

theorem rowSound608 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 608) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row608 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row608 H]
  have hshape : boundaryInput608 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput608 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 288, 576, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5918, reductionProjection5918, reductionProjection5944, reductionProjection3608, reductionProjection3792, reductionProjection11728] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput608 (0 : Fin 6)) = canonicalInput15673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5918 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5918 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15673 hH))).trans (reductionSound5918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput608 (1 : Fin 6)) = canonicalInput24919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5918 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5918 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24919 hH))).trans (reductionSound5918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput608 (2 : Fin 6)) = canonicalInput25016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5944 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5944 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25016 hH))).trans (reductionSound5944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput608 (3 : Fin 6)) = canonicalInput25034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3608 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3608 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25034 hH))).trans (reductionSound3608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput608 (4 : Fin 6)) = canonicalInput25042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3792 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3792 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25042 hH))).trans (reductionSound3792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput608 (5 : Fin 6)) = canonicalInput25043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11728 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput608 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11728 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25043 hH))).trans (reductionSound11728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput608 (j : Fin 6)))
    576 2880 ![2880, 2880, 2880, 288, 576, 144] ![-576, -576, -576, -5760, -2880, -11520] (extendRow Arithmetic.row608) ![reductionProjection5918, reductionProjection5918, reductionProjection5944, reductionProjection3608, reductionProjection3792, reductionProjection11728]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput613 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, -1, 0], ![-1, 1, 2, -1, -1]]

theorem rowSound613 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 613) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row613 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row613 H]
  have hshape : boundaryInput613 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput613 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4888, reductionProjection4888, reductionProjection4885, reductionProjection4916, reductionProjection11735, reductionProjection3612] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput613 (0 : Fin 6)) = canonicalInput15684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4888 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15684 hH))).trans (reductionSound4888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput613 (1 : Fin 6)) = canonicalInput24930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4888 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24930 hH))).trans (reductionSound4888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput613 (2 : Fin 6)) = canonicalInput25027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4885 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4885 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25027 hH))).trans (reductionSound4885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput613 (3 : Fin 6)) = canonicalInput25058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4916 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4916 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25058 hH))).trans (reductionSound4916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput613 (4 : Fin 6)) = canonicalInput25070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11735 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11735 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25070 hH))).trans (reductionSound11735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput613 (5 : Fin 6)) = canonicalInput25072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3612 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput613 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3612 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25072 hH))).trans (reductionSound3612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput613 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-2880, -2880, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row613) ![reductionProjection4888, reductionProjection4888, reductionProjection4885, reductionProjection4916, reductionProjection11735, reductionProjection3612]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput616 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, -2, 0], ![0, 1, 2, 0, -3]]

theorem rowSound616 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 616) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row616 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row616 H]
  have hshape : boundaryInput616 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput616 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 576, 720, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2976, reductionProjection2976, reductionProjection2953, reductionProjection2967, reductionProjection11725, reductionProjection3574] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput616 (0 : Fin 6)) = canonicalInput15678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15678 hH))).trans (reductionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput616 (1 : Fin 6)) = canonicalInput24924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24924 hH))).trans (reductionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput616 (2 : Fin 6)) = canonicalInput25021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2953 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25021 hH))).trans (reductionSound2953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput616 (3 : Fin 6)) = canonicalInput25039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2967 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2967 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25039 hH))).trans (reductionSound2967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput616 (4 : Fin 6)) = canonicalInput25052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11725 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25052 hH))).trans (reductionSound11725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput616 (5 : Fin 6)) = canonicalInput25054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3574 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput616 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25054 hH))).trans (reductionSound3574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput616 (j : Fin 6)))
    2880 2880 ![1440, 1440, 720, 576, 720, 2880] ![-5760, -5760, -11520, -14400, -11520, -2880] (extendRow Arithmetic.row616) ![reductionProjection2976, reductionProjection2976, reductionProjection2953, reductionProjection2967, reductionProjection11725, reductionProjection3574]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput637 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]

theorem rowSound637 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 637) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row637 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row637 H]
  have hshape : boundaryInput637 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput637 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4790, reductionProjection4928, reductionProjection4949, reductionProjection4945, reductionProjection10815, reductionProjection11731] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput637 (0 : Fin 6)) = canonicalInput15841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4790 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4790 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15841 hH))).trans (reductionSound4790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput637 (1 : Fin 6)) = canonicalInput24946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4928 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4928 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24946 hH))).trans (reductionSound4928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput637 (2 : Fin 6)) = canonicalInput25116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4949 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25116 hH))).trans (reductionSound4949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput637 (3 : Fin 6)) = canonicalInput25160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4945 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4945 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25160 hH))).trans (reductionSound4945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput637 (4 : Fin 6)) = canonicalInput25179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10815 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10815 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25179 hH))).trans (reductionSound10815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput637 (5 : Fin 6)) = canonicalInput25180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11731 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput637 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11731 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25180 hH))).trans (reductionSound11731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput637 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-2880, -2880, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row637) ![reductionProjection4790, reductionProjection4928, reductionProjection4949, reductionProjection4945, reductionProjection10815, reductionProjection11731]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput639 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, -1, -2, 1], ![1, 1, 0, 1, -3]]

theorem rowSound639 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 639) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row639 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row639 H]
  have hshape : boundaryInput639 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput639 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 576, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5075, reductionProjection5075, reductionProjection5115, reductionProjection5108, reductionProjection10800, reductionProjection11730] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput639 (0 : Fin 6)) = canonicalInput15676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5075 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5075 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15676 hH))).trans (reductionSound5075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput639 (1 : Fin 6)) = canonicalInput24922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5075 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5075 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24922 hH))).trans (reductionSound5075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput639 (2 : Fin 6)) = canonicalInput25019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5115 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5115 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25019 hH))).trans (reductionSound5115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput639 (3 : Fin 6)) = canonicalInput25037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5108 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5108 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25037 hH))).trans (reductionSound5108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput639 (4 : Fin 6)) = canonicalInput25046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10800 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10800 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25046 hH))).trans (reductionSound10800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput639 (5 : Fin 6)) = canonicalInput25050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11730 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput639 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11730 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25050 hH))).trans (reductionSound11730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput639 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 576, 2880, 2880] ![-2880, -2880, -2880, -14400, -2880, -2880] (extendRow Arithmetic.row639) ![reductionProjection5075, reductionProjection5075, reductionProjection5115, reductionProjection5108, reductionProjection10800, reductionProjection11730]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput644 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![-1, 2, 1, 0, -2], ![2, -1, 1, -1, -1]]

theorem rowSound644 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 644) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row644 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row644 H]
  have hshape : boundaryInput644 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput644 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 576, 1440, 1440, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3707, reductionProjection3726, reductionProjection3736, reductionProjection3717, reductionProjection4063, reductionProjection11727] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput644 (0 : Fin 6)) = canonicalInput15894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3707 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3707 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15894 hH))).trans (reductionSound3707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput644 (1 : Fin 6)) = canonicalInput24991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3726 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3726 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24991 hH))).trans (reductionSound3726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput644 (2 : Fin 6)) = canonicalInput25290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3736 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25290 hH))).trans (reductionSound3736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput644 (3 : Fin 6)) = canonicalInput25310.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3717 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3717 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25310 hH))).trans (reductionSound3717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput644 (4 : Fin 6)) = canonicalInput25319.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4063 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4063 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25319 hH))).trans (reductionSound4063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput644 (5 : Fin 6)) = canonicalInput25320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11727 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput644 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11727 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25320 hH))).trans (reductionSound11727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput644 (j : Fin 6)))
    2880 2880 ![720, 576, 1440, 1440, 2880, 2880] ![-11520, -14400, -5760, -5760, -2880, -2880] (extendRow Arithmetic.row644) ![reductionProjection3707, reductionProjection3726, reductionProjection3736, reductionProjection3717, reductionProjection4063, reductionProjection11727]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput683 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1]]

theorem rowSound683 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 683) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row683 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row683 H]
  have hshape : boundaryInput683 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput683 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 144, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection3208, oldProjection3404, reductionProjection11650, reductionProjection11714, reductionProjection11714, oldProjection3433] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput683 (0 : Fin 6)) = canonicalInput20278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20278 hH))).trans (oldProjectionSound3208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput683 (1 : Fin 6)) = canonicalInput28009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3404 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3404 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28009 hH))).trans (oldProjectionSound3404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput683 (2 : Fin 6)) = canonicalInput28817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11650 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11650 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28817 hH))).trans (reductionSound11650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput683 (3 : Fin 6)) = canonicalInput28979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11714 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28979 hH))).trans (reductionSound11714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput683 (4 : Fin 6)) = canonicalInput29006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11714 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29006 hH))).trans (reductionSound11714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput683 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9470 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3433 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput683 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3433 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9470 hH))).trans (oldProjectionSound3433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput683 (j : Fin 6)))
    720 1440 ![720, 1440, 144, 1440, 1440, 1440] ![-1440, -720, -7200, -720, -720, -720] (extendRow Arithmetic.row683) ![oldProjection3208, oldProjection3404, reductionProjection11650, reductionProjection11714, reductionProjection11714, oldProjection3433]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

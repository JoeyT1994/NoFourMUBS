import NoFourMUBs.Step2.SOS.Canonical108
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical321
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions093
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions100
import NoFourMUBs.Step2.SOS.Reductions101
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions122
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions185
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions338
import NoFourMUBs.Step2.SOS.Reductions349
import NoFourMUBs.Step2.SOS.Reductions350

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput623 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![-1, -1, 1, 0, 1], ![0, 1, 1, -2, 0], ![2, 1, 0, 0, -3]]

theorem rowSound623 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 623) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row623 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row623 H]
  have hshape : boundaryInput623 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput623 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2676, reductionProjection2741, reductionProjection2741, reductionProjection2661, reductionProjection2985, reductionProjection11180] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput623 (0 : Fin 6)) = canonicalInput15888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2676 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2676 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15888 hH))).trans (reductionSound2676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput623 (1 : Fin 6)) = canonicalInput24985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2741 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24985 hH))).trans (reductionSound2741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput623 (2 : Fin 6)) = canonicalInput25284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2741 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25284 hH))).trans (reductionSound2741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput623 (3 : Fin 6)) = canonicalInput25298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2661 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2661 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25298 hH))).trans (reductionSound2661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput623 (4 : Fin 6)) = canonicalInput25300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2985 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2985 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25300 hH))).trans (reductionSound2985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput623 (5 : Fin 6)) = canonicalInput25301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11180 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput623 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25301 hH))).trans (reductionSound11180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput623 (j : Fin 6)))
    288 2880 ![2880, 2880, 2880, 2880, 2880, 2880] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row623) ![reductionProjection2676, reductionProjection2741, reductionProjection2741, reductionProjection2661, reductionProjection2985, reductionProjection11180]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput625 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]

theorem rowSound625 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 625) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row625 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row625 H]
  have hshape : boundaryInput625 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput625 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 2880, 288, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2853, reductionProjection2798, reductionProjection2807, reductionProjection2758, reductionProjection3007, reductionProjection11198] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput625 (0 : Fin 6)) = canonicalInput15915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15915 hH))).trans (reductionSound2853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput625 (1 : Fin 6)) = canonicalInput24995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2798 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24995 hH))).trans (reductionSound2798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput625 (2 : Fin 6)) = canonicalInput25294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2807 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2807 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25294 hH))).trans (reductionSound2807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput625 (3 : Fin 6)) = canonicalInput25326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2758 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2758 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25326 hH))).trans (reductionSound2758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput625 (4 : Fin 6)) = canonicalInput25329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3007 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25329 hH))).trans (reductionSound3007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput625 (5 : Fin 6)) = canonicalInput25331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11198 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput625 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11198 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25331 hH))).trans (reductionSound11198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput625 (j : Fin 6)))
    1440 2880 ![1440, 2880, 2880, 288, 2880, 2880] ![-2880, -1440, -1440, -14400, -1440, -1440] (extendRow Arithmetic.row625) ![reductionProjection2853, reductionProjection2798, reductionProjection2807, reductionProjection2758, reductionProjection3007, reductionProjection11198]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput626 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]

theorem rowSound626 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 626) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row626 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row626 H]
  have hshape : boundaryInput626 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput626 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 576, 2880, 576, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2690, reductionProjection2749, reductionProjection2836, reductionProjection2712, reductionProjection2994, reductionProjection11182] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput626 (0 : Fin 6)) = canonicalInput6913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2690 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6913 hH))).trans (reductionSound2690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput626 (1 : Fin 6)) = canonicalInput20576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2749 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2749 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20576 hH))).trans (reductionSound2749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput626 (2 : Fin 6)) = canonicalInput20634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2836 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2836 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20634 hH))).trans (reductionSound2836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput626 (3 : Fin 6)) = canonicalInput20635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2712 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2712 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20635 hH))).trans (reductionSound2712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput626 (4 : Fin 6)) = canonicalInput20636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2994 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2994 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20636 hH))).trans (reductionSound2994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput626 (5 : Fin 6)) = canonicalInput20637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11182 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput626 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11182 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20637 hH))).trans (reductionSound11182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput626 (j : Fin 6)))
    2880 2880 ![2880, 2880, 576, 2880, 576, 576] ![-2880, -2880, -14400, -2880, -14400, -14400] (extendRow Arithmetic.row626) ![reductionProjection2690, reductionProjection2749, reductionProjection2836, reductionProjection2712, reductionProjection2994, reductionProjection11182]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput590 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, -1, 2, 0], ![2, -1, 0, 0, -1], ![0, 2, 1, -1, -2]]

theorem rowSound590 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 590) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row590 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row590 H]
  have hshape : boundaryInput590 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput590 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 576, 1440, 576, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3207, reductionProjection3232, reductionProjection3604, reductionProjection3224, reductionProjection11221, reductionProjection5017] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput590 (0 : Fin 6)) = canonicalInput15854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3207 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3207 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15854 hH))).trans (reductionSound3207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput590 (1 : Fin 6)) = canonicalInput24959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3232 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24959 hH))).trans (reductionSound3232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput590 (2 : Fin 6)) = canonicalInput25129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3604 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3604 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25129 hH))).trans (reductionSound3604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput590 (3 : Fin 6)) = canonicalInput25203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3224 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3224 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25203 hH))).trans (reductionSound3224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput590 (4 : Fin 6)) = canonicalInput25214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11221 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25214 hH))).trans (reductionSound11221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput590 (5 : Fin 6)) = canonicalInput25216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5017 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput590 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25216 hH))).trans (reductionSound5017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput590 (j : Fin 6)))
    576 2880 ![2880, 576, 1440, 576, 2880, 2880] ![-576, -2880, -1152, -2880, -576, -576] (extendRow Arithmetic.row590) ![reductionProjection3207, reductionProjection3232, reductionProjection3604, reductionProjection3224, reductionProjection11221, reductionProjection5017]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput591 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![2, 0, 1, -1, -2]]

theorem rowSound591 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 591) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row591 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row591 H]
  have hshape : boundaryInput591 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput591 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 2880, 1440, 576, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3198, reductionProjection3143, reductionProjection3841, reductionProjection3132, reductionProjection3165, reductionProjection11206] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput591 (0 : Fin 6)) = canonicalInput15852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3198 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3198 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15852 hH))).trans (reductionSound3198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput591 (1 : Fin 6)) = canonicalInput24957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3143 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3143 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24957 hH))).trans (reductionSound3143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput591 (2 : Fin 6)) = canonicalInput25127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3841 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3841 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25127 hH))).trans (reductionSound3841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput591 (3 : Fin 6)) = canonicalInput25201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3132 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25201 hH))).trans (reductionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput591 (4 : Fin 6)) = canonicalInput25208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3165 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3165 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25208 hH))).trans (reductionSound3165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput591 (5 : Fin 6)) = canonicalInput25209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11206 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput591 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11206 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25209 hH))).trans (reductionSound11206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput591 (j : Fin 6)))
    2880 2880 ![1440, 2880, 2880, 1440, 576, 576] ![-5760, -2880, -2880, -5760, -14400, -14400] (extendRow Arithmetic.row591) ![reductionProjection3198, reductionProjection3143, reductionProjection3841, reductionProjection3132, reductionProjection3165, reductionProjection11206]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput598 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]

theorem rowSound598 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 598) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row598 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row598 H]
  have hshape : boundaryInput598 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput598 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 2880, 2880, 576, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5898, reductionProjection5934, reductionProjection5937, reductionProjection3329, reductionProjection10171, reductionProjection11227] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput598 (0 : Fin 6)) = canonicalInput15876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5898 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5898 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15876 hH))).trans (reductionSound5898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput598 (1 : Fin 6)) = canonicalInput24979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5934 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5934 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24979 hH))).trans (reductionSound5934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput598 (2 : Fin 6)) = canonicalInput25149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5937 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25149 hH))).trans (reductionSound5937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput598 (3 : Fin 6)) = canonicalInput25250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3329 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3329 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25250 hH))).trans (reductionSound3329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput598 (4 : Fin 6)) = canonicalInput25270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10171 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10171 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25270 hH))).trans (reductionSound10171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput598 (5 : Fin 6)) = canonicalInput25272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11227 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput598 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11227 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25272 hH))).trans (reductionSound11227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput598 (j : Fin 6)))
    2880 2880 ![2880, 1440, 2880, 2880, 576, 1440] ![-2880, -5760, -2880, -2880, -14400, -5760] (extendRow Arithmetic.row598) ![reductionProjection5898, reductionProjection5934, reductionProjection5937, reductionProjection3329, reductionProjection10171, reductionProjection11227]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput600 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]

theorem rowSound600 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 600) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row600 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row600 H]
  have hshape : boundaryInput600 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput600 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 2880, 2880, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2858, reductionProjection2789, reductionProjection2812, reductionProjection2776, reductionProjection3034, reductionProjection11201] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput600 (0 : Fin 6)) = canonicalInput15868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2858 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2858 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15868 hH))).trans (reductionSound2858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput600 (1 : Fin 6)) = canonicalInput24971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2789 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24971 hH))).trans (reductionSound2789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput600 (2 : Fin 6)) = canonicalInput25141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2812 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2812 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25141 hH))).trans (reductionSound2812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput600 (3 : Fin 6)) = canonicalInput25242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2776 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2776 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25242 hH))).trans (reductionSound2776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput600 (4 : Fin 6)) = canonicalInput25252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3034 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25252 hH))).trans (reductionSound3034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput600 (5 : Fin 6)) = canonicalInput25258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11201 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput600 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25258 hH))).trans (reductionSound11201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput600 (j : Fin 6)))
    2880 2880 ![2880, 1440, 2880, 2880, 2880, 2880] ![-2880, -5760, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row600) ![reductionProjection2858, reductionProjection2789, reductionProjection2812, reductionProjection2776, reductionProjection3034, reductionProjection11201]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput601 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]

theorem rowSound601 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 601) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row601 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row601 H]
  have hshape : boundaryInput601 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput601 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 720, 360, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8253, reductionProjection8248, reductionProjection8249, reductionProjection3935, reductionProjection10840, reductionProjection11201] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput601 (0 : Fin 6)) = canonicalInput15871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8253 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8253 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15871 hH))).trans (reductionSound8253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput601 (1 : Fin 6)) = canonicalInput24974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8248 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24974 hH))).trans (reductionSound8248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput601 (2 : Fin 6)) = canonicalInput25144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8249 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8249 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25144 hH))).trans (reductionSound8249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput601 (3 : Fin 6)) = canonicalInput25245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3935 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25245 hH))).trans (reductionSound3935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput601 (4 : Fin 6)) = canonicalInput25255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10840 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10840 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25255 hH))).trans (reductionSound10840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput601 (5 : Fin 6)) = canonicalInput25261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11201 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput601 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25261 hH))).trans (reductionSound11201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput601 (j : Fin 6)))
    2880 2880 ![1440, 2880, 720, 360, 576, 2880] ![-5760, -2880, -11520, -23040, -14400, -2880] (extendRow Arithmetic.row601) ![reductionProjection8253, reductionProjection8248, reductionProjection8249, reductionProjection3935, reductionProjection10840, reductionProjection11201]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

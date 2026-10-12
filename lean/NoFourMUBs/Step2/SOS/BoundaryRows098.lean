import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions115
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions319
import NoFourMUBs.Step2.SOS.Reductions338
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions340
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions355
import NoFourMUBs.Step2.SOS.Reductions356

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput643 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 1, 0, -1, 1], ![0, 1, -1, 2, -2], ![1, 0, 2, -1, -2]]

theorem rowSound643 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 643) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row643 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row643 H]
  have hshape : boundaryInput643 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput643 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 2880, 2880, 1440, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3748, reductionProjection3748, reductionProjection10208, reductionProjection3741, reductionProjection3808, reductionProjection11361] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput643 (0 : Fin 6)) = canonicalInput15690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3748 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15690 hH))).trans (reductionSound3748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput643 (1 : Fin 6)) = canonicalInput24936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3748 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3748 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24936 hH))).trans (reductionSound3748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput643 (2 : Fin 6)) = canonicalInput25033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10208 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25033 hH))).trans (reductionSound10208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput643 (3 : Fin 6)) = canonicalInput25082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3741 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25082 hH))).trans (reductionSound3741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput643 (4 : Fin 6)) = canonicalInput25085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3808 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3808 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25085 hH))).trans (reductionSound3808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput643 (5 : Fin 6)) = canonicalInput25086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11361 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput643 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11361 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25086 hH))).trans (reductionSound11361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput643 (j : Fin 6)))
    720 2880 ![1440, 1440, 2880, 2880, 1440, 2880] ![-1440, -1440, -720, -720, -1440, -720] (extendRow Arithmetic.row643) ![reductionProjection3748, reductionProjection3748, reductionProjection10208, reductionProjection3741, reductionProjection3808, reductionProjection11361]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput646 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 1, -1, 1], ![1, 1, -2, -1, 1], ![1, 1, 1, 0, -3]]

theorem rowSound646 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 646) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row646 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row646 H]
  have hshape : boundaryInput646 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput646 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 2880, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5083, reductionProjection5174, reductionProjection5180, reductionProjection3694, reductionProjection10821, reductionProjection11383] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput646 (0 : Fin 6)) = canonicalInput15691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5083 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5083 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15691 hH))).trans (reductionSound5083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput646 (1 : Fin 6)) = canonicalInput24937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5174 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24937 hH))).trans (reductionSound5174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput646 (2 : Fin 6)) = canonicalInput25088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5180 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25088 hH))).trans (reductionSound5180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput646 (3 : Fin 6)) = canonicalInput25091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3694 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3694 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25091 hH))).trans (reductionSound3694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput646 (4 : Fin 6)) = canonicalInput25092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10821 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10821 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25092 hH))).trans (reductionSound10821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput646 (5 : Fin 6)) = canonicalInput25093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11383 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput646 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25093 hH))).trans (reductionSound11383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput646 (j : Fin 6)))
    1440 2880 ![2880, 2880, 2880, 2880, 2880, 1440] ![-1440, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row646) ![reductionProjection5083, reductionProjection5174, reductionProjection5180, reductionProjection3694, reductionProjection10821, reductionProjection11383]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput653 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]

theorem rowSound653 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 653) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row653 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row653 H]
  have hshape : boundaryInput653 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput653 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 576, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7081, reductionProjection7073, reductionProjection11144, reductionProjection5146, reductionProjection7789, reductionProjection11370] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput653 (0 : Fin 6)) = canonicalInput15701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7081 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7081 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15701 hH))).trans (reductionSound7081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput653 (1 : Fin 6)) = canonicalInput24938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7073 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7073 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24938 hH))).trans (reductionSound7073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput653 (2 : Fin 6)) = canonicalInput25089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11144 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25089 hH))).trans (reductionSound11144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput653 (3 : Fin 6)) = canonicalInput25094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5146 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5146 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25094 hH))).trans (reductionSound5146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput653 (4 : Fin 6)) = canonicalInput25096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7789 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25096 hH))).trans (reductionSound7789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput653 (5 : Fin 6)) = canonicalInput25098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11370 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput653 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11370 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25098 hH))).trans (reductionSound11370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput653 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 576, 2880, 2880] ![-2880, -2880, -2880, -14400, -2880, -2880] (extendRow Arithmetic.row653) ![reductionProjection7081, reductionProjection7073, reductionProjection11144, reductionProjection5146, reductionProjection7789, reductionProjection11370]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput886 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -1, -1]]

theorem rowSound886 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 886) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row886 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row886 H]
  have hshape : boundaryInput886 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput886 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2057, reductionProjection9395, reductionProjection11414, reductionProjection10889, reductionProjection11399, reductionProjection9377] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput886 (0 : Fin 6)) = canonicalInput30208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2057 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2057 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30208 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput886 (1 : Fin 6)) = canonicalInput31457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9395 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9395 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31457 hH))).trans (reductionSound9395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput886 (2 : Fin 6)) = canonicalInput31597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11414 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11414 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31597 hH))).trans (reductionSound11414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput886 (3 : Fin 6)) = canonicalInput31623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10889 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10889 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31623 hH))).trans (reductionSound10889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput886 (4 : Fin 6)) = canonicalInput31625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31625 hH))).trans (reductionSound11399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput886 (5 : Fin 6)) = canonicalInput31626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9377 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput886 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9377 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31626 hH))).trans (reductionSound9377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput886 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-288, -288, -576, -288, -288, -288] (extendRow Arithmetic.row886) ![oldProjection2057, reductionProjection9395, reductionProjection11414, reductionProjection10889, reductionProjection11399, reductionProjection9377]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1195 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 2, -3]]

theorem rowSound1195 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1195) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1195 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1195 H]
  have hshape : boundaryInput1195 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1195 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 720, 720, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11408, reductionProjection11403, reductionProjection11403, reductionProjection10875, reductionProjection4247, reductionProjection11410] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1195 (0 : Fin 6)) = canonicalInput32120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11408 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11408 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32120 hH))).trans (reductionSound11408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1195 (1 : Fin 6)) = canonicalInput32711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11403 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11403 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32711 hH))).trans (reductionSound11403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1195 (2 : Fin 6)) = canonicalInput32718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11403 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11403 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32718 hH))).trans (reductionSound11403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1195 (3 : Fin 6)) = canonicalInput32727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10875 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32727 hH))).trans (reductionSound10875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1195 (4 : Fin 6)) = canonicalInput32728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4247 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4247 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32728 hH))).trans (reductionSound4247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1195 (5 : Fin 6)) = canonicalInput32729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11410 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1195 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11410 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32729 hH))).trans (reductionSound11410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1195 (j : Fin 6)))
    1440 1440 ![1440, 720, 720, 720, 720, 1440] ![-1440, -2880, -2880, -2880, -2880, -1440] (extendRow Arithmetic.row1195) ![reductionProjection11408, reductionProjection11403, reductionProjection11403, reductionProjection10875, reductionProjection4247, reductionProjection11410]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1201 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 2, -3]]

theorem rowSound1201 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1201) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1201 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1201 H]
  have hshape : boundaryInput1201 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1201 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 360, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11405, reductionProjection11408, reductionProjection11406, reductionProjection10878, reductionProjection4630, reductionProjection11412] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1201 (0 : Fin 6)) = canonicalInput31860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11405 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11405 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31860 hH))).trans (reductionSound11405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1201 (1 : Fin 6)) = canonicalInput31972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11408 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11408 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31972 hH))).trans (reductionSound11408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1201 (2 : Fin 6)) = canonicalInput32035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11406 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32035 hH))).trans (reductionSound11406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1201 (3 : Fin 6)) = canonicalInput32054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10878 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32054 hH))).trans (reductionSound10878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1201 (4 : Fin 6)) = canonicalInput32055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4630 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4630 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32055 hH))).trans (reductionSound4630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1201 (5 : Fin 6)) = canonicalInput32056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11412 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1201 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11412 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32056 hH))).trans (reductionSound11412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1201 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 360, 720] ![-1440, -1440, -1440, -1440, -5760, -2880] (extendRow Arithmetic.row1201) ![reductionProjection11405, reductionProjection11408, reductionProjection11406, reductionProjection10878, reductionProjection4630, reductionProjection11412]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1329 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1]]

theorem rowSound1329 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1329) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1329 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1329 H]
  have hshape : boundaryInput1329 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1329 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3040, reductionProjection11416, reductionProjection9084, reductionProjection10891, reductionProjection6871, reductionProjection9144] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1329 (0 : Fin 6)) = canonicalInput30227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3040 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30227 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1329 (1 : Fin 6)) = canonicalInput31683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11416 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11416 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31683 hH))).trans (reductionSound11416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1329 (2 : Fin 6)) = canonicalInput31700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9084 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31700 hH))).trans (reductionSound9084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1329 (3 : Fin 6)) = canonicalInput31708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31708 hH))).trans (reductionSound10891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1329 (4 : Fin 6)) = canonicalInput31710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6871 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31710 hH))).trans (reductionSound6871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1329 (5 : Fin 6)) = canonicalInput31711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1329 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31711 hH))).trans (reductionSound9144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1329 (j : Fin 6)))
    288 1440 ![288, 1440, 720, 1440, 1440, 1440] ![-1440, -288, -576, -288, -288, -288] (extendRow Arithmetic.row1329) ![reductionProjection3040, reductionProjection11416, reductionProjection9084, reductionProjection10891, reductionProjection6871, reductionProjection9144]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1334 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![0, -3, 1, 2]]

theorem rowSound1334 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1334) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1334 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1334 H]
  have hshape : boundaryInput1334 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1334 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6779, reductionProjection11413, reductionProjection11413, oldProjection2971, reductionProjection6785, reductionProjection9277] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1334 (0 : Fin 6)) = canonicalInput32122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6779 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6779 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32122 hH))).trans (reductionSound6779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1334 (1 : Fin 6)) = canonicalInput32713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11413 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32713 hH))).trans (reductionSound11413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1334 (2 : Fin 6)) = canonicalInput32720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11413 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11413 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32720 hH))).trans (reductionSound11413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1334 (3 : Fin 6)) = canonicalInput32734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2971 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32734 hH))).trans (oldProjectionSound2971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1334 (4 : Fin 6)) = canonicalInput32735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6785 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6785 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32735 hH))).trans (reductionSound6785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1334 (5 : Fin 6)) = canonicalInput32736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9277 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1334 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9277 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32736 hH))).trans (reductionSound9277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1334 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 720] ![-7200, -1440, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row1334) ![reductionProjection6779, reductionProjection11413, reductionProjection11413, oldProjection2971, reductionProjection6785, reductionProjection9277]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

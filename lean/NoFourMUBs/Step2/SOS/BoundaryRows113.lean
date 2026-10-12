import NoFourMUBs.Step2.SOS.Canonical110
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical329
import NoFourMUBs.Step2.SOS.Canonical332
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions101
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions225
import NoFourMUBs.Step2.SOS.Reductions226
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions297
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions349
import NoFourMUBs.Step2.SOS.Reductions350
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions354
import NoFourMUBs.Step2.SOS.Reductions355
import NoFourMUBs.Step2.SOS.Reductions357
import NoFourMUBs.Step2.SOS.Reductions377
import NoFourMUBs.Step2.SOS.Reductions378

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput564 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, 1, -1, 1, 0], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]

theorem rowSound564 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 564) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row564 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row564 H]
  have hshape : boundaryInput564 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput564 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 1440, 2880, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7273, reductionProjection12091, reductionProjection12090, reductionProjection5161, reductionProjection11381, reductionProjection11332] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput564 (0 : Fin 6)) = canonicalInput15994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7273 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7273 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15994 hH))).trans (reductionSound7273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput564 (1 : Fin 6)) = canonicalInput25000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12091 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12091 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25000 hH))).trans (reductionSound12091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput564 (2 : Fin 6)) = canonicalInput25343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12090 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12090 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25343 hH))).trans (reductionSound12090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput564 (3 : Fin 6)) = canonicalInput25350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5161 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5161 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25350 hH))).trans (reductionSound5161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput564 (4 : Fin 6)) = canonicalInput25354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11381 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11381 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25354 hH))).trans (reductionSound11381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput564 (5 : Fin 6)) = canonicalInput25355.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11332 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput564 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11332 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25355 hH))).trans (reductionSound11332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput564 (j : Fin 6)))
    1440 2880 ![2880, 1440, 1440, 2880, 576, 2880] ![-1440, -2880, -2880, -1440, -7200, -1440] (extendRow Arithmetic.row564) ![reductionProjection7273, reductionProjection12091, reductionProjection12090, reductionProjection5161, reductionProjection11381, reductionProjection11332]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput565 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![-1, 0, 2, -1, 0], ![0, 1, -2, 1, 0], ![2, -1, 0, -1, 0]]

theorem rowSound565 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 565) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row565 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row565 H]
  have hshape : boundaryInput565 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput565 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 576, 2880, 2880, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7219, reductionProjection12083, reductionProjection12084, reductionProjection3451, reductionProjection5126, reductionProjection11279] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput565 (0 : Fin 6)) = canonicalInput16011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7219 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7219 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16011 hH))).trans (reductionSound7219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput565 (1 : Fin 6)) = canonicalInput25004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12083 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12083 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25004 hH))).trans (reductionSound12083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput565 (2 : Fin 6)) = canonicalInput25347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12084 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25347 hH))).trans (reductionSound12084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput565 (3 : Fin 6)) = canonicalInput25363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3451 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3451 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25363 hH))).trans (reductionSound3451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput565 (4 : Fin 6)) = canonicalInput25364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5126 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5126 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25364 hH))).trans (reductionSound5126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput565 (5 : Fin 6)) = canonicalInput25365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11279 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput565 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11279 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25365 hH))).trans (reductionSound11279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput565 (j : Fin 6)))
    576 2880 ![1440, 2880, 576, 2880, 2880, 1440] ![-1152, -576, -2880, -576, -576, -1152] (extendRow Arithmetic.row565) ![reductionProjection7219, reductionProjection12083, reductionProjection12084, reductionProjection3451, reductionProjection5126, reductionProjection11279]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput567 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![-1, 1, 1, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 1, -2, 0]]

theorem rowSound567 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 567) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row567 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row567 H]
  have hshape : boundaryInput567 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput567 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 2880, 2880, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7261, reductionProjection11347, reductionProjection7270, reductionProjection12089, reductionProjection11286, reductionProjection11342] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput567 (0 : Fin 6)) = canonicalInput16004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7261 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16004 hH))).trans (reductionSound7261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput567 (1 : Fin 6)) = canonicalInput25003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11347 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11347 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25003 hH))).trans (reductionSound11347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput567 (2 : Fin 6)) = canonicalInput25346.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7270 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7270 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25346 hH))).trans (reductionSound7270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput567 (3 : Fin 6)) = canonicalInput25358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12089 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12089 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25358 hH))).trans (reductionSound12089 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput567 (4 : Fin 6)) = canonicalInput25361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11286 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11286 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25361 hH))).trans (reductionSound11286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput567 (5 : Fin 6)) = canonicalInput25362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11342 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput567 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11342 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25362 hH))).trans (reductionSound11342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput567 (j : Fin 6)))
    1440 2880 ![1440, 1440, 360, 2880, 2880, 288] ![-2880, -2880, -11520, -1440, -1440, -14400] (extendRow Arithmetic.row567) ![reductionProjection7261, reductionProjection11347, reductionProjection7270, reductionProjection12089, reductionProjection11286, reductionProjection11342]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput568 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![1, -1, 0, 0, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, 0, -2, 1, 0]]

theorem rowSound568 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 568) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row568 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row568 H]
  have hshape : boundaryInput568 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput568 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 2880, 2880, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7187, reductionProjection11174, reductionProjection11228, reductionProjection12082, reductionProjection3278, reductionProjection11174] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput568 (0 : Fin 6)) = canonicalInput16018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7187 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16018 hH))).trans (reductionSound7187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput568 (1 : Fin 6)) = canonicalInput25005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11174 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25005 hH))).trans (reductionSound11174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput568 (2 : Fin 6)) = canonicalInput25348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11228 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25348 hH))).trans (reductionSound11228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput568 (3 : Fin 6)) = canonicalInput25366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12082 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25366 hH))).trans (reductionSound12082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput568 (4 : Fin 6)) = canonicalInput25367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3278 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25367 hH))).trans (reductionSound3278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput568 (5 : Fin 6)) = canonicalInput25368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11174 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput568 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25368 hH))).trans (reductionSound11174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput568 (j : Fin 6)))
    1440 2880 ![720, 1440, 2880, 2880, 1440, 1440] ![-5760, -2880, -1440, -1440, -2880, -2880] (extendRow Arithmetic.row568) ![reductionProjection7187, reductionProjection11174, reductionProjection11228, reductionProjection12082, reductionProjection3278, reductionProjection11174]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput570 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, -1, 0, 0]]

theorem rowSound570 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 570) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row570 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row570 H]
  have hshape : boundaryInput570 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput570 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 2880, 2880, 2880, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7197, reductionProjection7194, reductionProjection11213, reductionProjection12082, reductionProjection3505, reductionProjection11211] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput570 (0 : Fin 6)) = canonicalInput15892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7197 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15892 hH))).trans (reductionSound7197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput570 (1 : Fin 6)) = canonicalInput24989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7194 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7194 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24989 hH))).trans (reductionSound7194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput570 (2 : Fin 6)) = canonicalInput25288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11213 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11213 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25288 hH))).trans (reductionSound11213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput570 (3 : Fin 6)) = canonicalInput25308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12082 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25308 hH))).trans (reductionSound12082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput570 (4 : Fin 6)) = canonicalInput25315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3505 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3505 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25315 hH))).trans (reductionSound3505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput570 (5 : Fin 6)) = canonicalInput25317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11211 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput570 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11211 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25317 hH))).trans (reductionSound11211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput570 (j : Fin 6)))
    2880 2880 ![720, 2880, 2880, 2880, 576, 2880] ![-11520, -2880, -2880, -2880, -14400, -2880] (extendRow Arithmetic.row570) ![reductionProjection7197, reductionProjection7194, reductionProjection11213, reductionProjection12082, reductionProjection3505, reductionProjection11211]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput627 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, 1, -3]]

theorem rowSound627 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 627) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row627 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row627 H]
  have hshape : boundaryInput627 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput627 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 480, 2880, 2880, 1440, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7208, reductionProjection7226, reductionProjection10804, reductionProjection3248, reductionProjection4011, reductionProjection12085] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput627 (0 : Fin 6)) = canonicalInput7103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7208 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7103 hH))).trans (reductionSound7208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput627 (1 : Fin 6)) = canonicalInput21112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7226 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21112 hH))).trans (reductionSound7226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput627 (2 : Fin 6)) = canonicalInput21248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10804 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21248 hH))).trans (reductionSound10804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput627 (3 : Fin 6)) = canonicalInput21250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3248 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21250 hH))).trans (reductionSound3248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput627 (4 : Fin 6)) = canonicalInput21252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4011 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4011 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21252 hH))).trans (reductionSound4011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput627 (5 : Fin 6)) = canonicalInput21254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12085 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput627 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12085 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21254 hH))).trans (reductionSound12085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput627 (j : Fin 6)))
    2880 2880 ![1440, 480, 2880, 2880, 1440, 576] ![-5760, -17280, -2880, -2880, -5760, -14400] (extendRow Arithmetic.row627) ![reductionProjection7208, reductionProjection7226, reductionProjection10804, reductionProjection3248, reductionProjection4011, reductionProjection12085]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput656 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, 0, -1], ![-1, 2, 0, 0, -1], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1]]

theorem rowSound656 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 656) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row656 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row656 H]
  have hshape : boundaryInput656 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput656 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 720, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6993, reductionProjection12088, reductionProjection2874, reductionProjection2880, reductionProjection2729, reductionProjection7099] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput656 (0 : Fin 6)) = canonicalInput16193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6993 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6993 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16193 hH))).trans (reductionSound6993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput656 (1 : Fin 6)) = canonicalInput25087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12088 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12088 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25087 hH))).trans (reductionSound12088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput656 (2 : Fin 6)) = canonicalInput25372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2874 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2874 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25372 hH))).trans (reductionSound2874 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput656 (3 : Fin 6)) = canonicalInput25373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2880 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2880 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25373 hH))).trans (reductionSound2880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput656 (4 : Fin 6)) = canonicalInput25374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2729 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25374 hH))).trans (reductionSound2729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput656 (5 : Fin 6)) = canonicalInput25375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7099 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput656 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7099 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25375 hH))).trans (reductionSound7099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput656 (j : Fin 6)))
    2880 2880 ![1440, 720, 1440, 720, 2880, 2880] ![-5760, -11520, -5760, -11520, -2880, -2880] (extendRow Arithmetic.row656) ![reductionProjection6993, reductionProjection12088, reductionProjection2874, reductionProjection2880, reductionProjection2729, reductionProjection7099]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput196 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]

theorem rowSound196 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 196) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row196 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row196 H]
  have hshape : boundaryInput196 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput196 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11454, reductionProjection11454, reductionProjection12107, reductionProjection12107, reductionProjection12108, reductionProjection9513] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput196 (0 : Fin 6)) = canonicalInput17121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11454 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11454 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17121 hH))).trans (reductionSound11454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput196 (1 : Fin 6)) = canonicalInput25410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11454 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11454 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25410 hH))).trans (reductionSound11454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput196 (2 : Fin 6)) = canonicalInput25628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12107 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12107 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25628 hH))).trans (reductionSound12107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput196 (3 : Fin 6)) = canonicalInput25689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12107 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12107 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25689 hH))).trans (reductionSound12107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput196 (4 : Fin 6)) = canonicalInput25690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12108 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12108 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25690 hH))).trans (reductionSound12108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput196 (5 : Fin 6)) = canonicalInput25691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9513 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput196 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9513 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25691 hH))).trans (reductionSound9513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput196 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row196) ![reductionProjection11454, reductionProjection11454, reductionProjection12107, reductionProjection12107, reductionProjection12108, reductionProjection9513]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

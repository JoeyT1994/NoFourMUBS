import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions115
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions186
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions318
import NoFourMUBs.Step2.SOS.Reductions319

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput607 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 1, 0, 2, -2]]

theorem rowSound607 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 607) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row607 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row607 H]
  have hshape : boundaryInput607 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput607 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 1440, 288, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3414, reductionProjection3476, reductionProjection3566, reductionProjection3407, reductionProjection10180, reductionProjection3312] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput607 (0 : Fin 6)) = canonicalInput15880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3414 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3414 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15880 hH))).trans (reductionSound3414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput607 (1 : Fin 6)) = canonicalInput24983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3476 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24983 hH))).trans (reductionSound3476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput607 (2 : Fin 6)) = canonicalInput25153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3566 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3566 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25153 hH))).trans (reductionSound3566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput607 (3 : Fin 6)) = canonicalInput25266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3407 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3407 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25266 hH))).trans (reductionSound3407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput607 (4 : Fin 6)) = canonicalInput25280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10180 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25280 hH))).trans (reductionSound10180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput607 (5 : Fin 6)) = canonicalInput25281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3312 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput607 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3312 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25281 hH))).trans (reductionSound3312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput607 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 1440, 288, 2880] ![-2880, -2880, -2880, -5760, -28800, -2880] (extendRow Arithmetic.row607) ![reductionProjection3414, reductionProjection3476, reductionProjection3566, reductionProjection3407, reductionProjection10180, reductionProjection3312]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput612 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, 0, -1], ![-1, 1, 2, -2, 0]]

theorem rowSound612 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 612) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row612 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row612 H]
  have hshape : boundaryInput612 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput612 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 1440, 1440, 576, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5887, reductionProjection5887, reductionProjection5964, reductionProjection3588, reductionProjection10197, reductionProjection973] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput612 (0 : Fin 6)) = canonicalInput15685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5887 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15685 hH))).trans (reductionSound5887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput612 (1 : Fin 6)) = canonicalInput24931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5887 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24931 hH))).trans (reductionSound5887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput612 (2 : Fin 6)) = canonicalInput25028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5964 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5964 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25028 hH))).trans (reductionSound5964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput612 (3 : Fin 6)) = canonicalInput25059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25059 hH))).trans (reductionSound3588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput612 (4 : Fin 6)) = canonicalInput25071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10197 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25071 hH))).trans (reductionSound10197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput612 (5 : Fin 6)) = canonicalInput25073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection973 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput612 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection973 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25073 hH))).trans (reductionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput612 (j : Fin 6)))
    2880 2880 ![2880, 2880, 1440, 1440, 576, 1440] ![-2880, -2880, -5760, -5760, -14400, -5760] (extendRow Arithmetic.row612) ![reductionProjection5887, reductionProjection5887, reductionProjection5964, reductionProjection3588, reductionProjection10197, reductionProjection973]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput614 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 1, 2, -2, 0]]

theorem rowSound614 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 614) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row614 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row614 H]
  have hshape : boundaryInput614 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput614 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 576, 2880, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5893, reductionProjection5893, reductionProjection5981, reductionProjection3798, reductionProjection10200, reductionProjection957] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput614 (0 : Fin 6)) = canonicalInput15681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5893 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5893 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15681 hH))).trans (reductionSound5893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput614 (1 : Fin 6)) = canonicalInput24927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5893 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5893 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24927 hH))).trans (reductionSound5893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput614 (2 : Fin 6)) = canonicalInput25024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5981 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5981 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25024 hH))).trans (reductionSound5981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput614 (3 : Fin 6)) = canonicalInput25055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3798 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25055 hH))).trans (reductionSound3798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput614 (4 : Fin 6)) = canonicalInput25064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10200 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10200 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25064 hH))).trans (reductionSound10200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput614 (5 : Fin 6)) = canonicalInput25065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection957 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput614 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25065 hH))).trans (reductionSound957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput614 (j : Fin 6)))
    2880 2880 ![2880, 2880, 576, 2880, 1440, 288] ![-2880, -2880, -14400, -2880, -5760, -28800] (extendRow Arithmetic.row614) ![reductionProjection5893, reductionProjection5893, reductionProjection5981, reductionProjection3798, reductionProjection10200, reductionProjection957]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput618 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1], ![-1, 0, 2, 1, -2]]

theorem rowSound618 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 618) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row618 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row618 H]
  have hshape : boundaryInput618 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput618 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 288, 2880, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3827, reductionProjection3827, reductionProjection3814, reductionProjection3821, reductionProjection10195, reductionProjection3786] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput618 (0 : Fin 6)) = canonicalInput15687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3827 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3827 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15687 hH))).trans (reductionSound3827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput618 (1 : Fin 6)) = canonicalInput24933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3827 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3827 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24933 hH))).trans (reductionSound3827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput618 (2 : Fin 6)) = canonicalInput25030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3814 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3814 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25030 hH))).trans (reductionSound3814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput618 (3 : Fin 6)) = canonicalInput25061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3821 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3821 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25061 hH))).trans (reductionSound3821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput618 (4 : Fin 6)) = canonicalInput25076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10195 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10195 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25076 hH))).trans (reductionSound10195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput618 (5 : Fin 6)) = canonicalInput25077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3786 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput618 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3786 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25077 hH))).trans (reductionSound3786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput618 (j : Fin 6)))
    576 2880 ![2880, 2880, 288, 2880, 1440, 1440] ![-576, -576, -5760, -576, -1152, -1152] (extendRow Arithmetic.row618) ![reductionProjection3827, reductionProjection3827, reductionProjection3814, reductionProjection3821, reductionProjection10195, reductionProjection3786]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput622 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 0, -2]]

theorem rowSound622 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 622) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row622 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row622 H]
  have hshape : boundaryInput622 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput622 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 2880, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3652, reductionProjection3655, reductionProjection3655, reductionProjection3684, reductionProjection10197, reductionProjection3612] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput622 (0 : Fin 6)) = canonicalInput15890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3652 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3652 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15890 hH))).trans (reductionSound3652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput622 (1 : Fin 6)) = canonicalInput24987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3655 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24987 hH))).trans (reductionSound3655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput622 (2 : Fin 6)) = canonicalInput25286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3655 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25286 hH))).trans (reductionSound3655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput622 (3 : Fin 6)) = canonicalInput25302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3684 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3684 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25302 hH))).trans (reductionSound3684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput622 (4 : Fin 6)) = canonicalInput25305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10197 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25305 hH))).trans (reductionSound10197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput622 (5 : Fin 6)) = canonicalInput25306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3612 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput622 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3612 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25306 hH))).trans (reductionSound3612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput622 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 2880, 576, 2880] ![-2880, -2880, -2880, -2880, -14400, -2880] (extendRow Arithmetic.row622) ![reductionProjection3652, reductionProjection3655, reductionProjection3655, reductionProjection3684, reductionProjection10197, reductionProjection3612]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput558 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, 0, 3, -2], ![3, -2, -1, 0]]

theorem rowSound558 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 558) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row558 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row558 H]
  have hshape : boundaryInput558 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput558 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection314, reductionProjection303, reductionProjection308, reductionProjection4087, reductionProjection10217, reductionProjection5361] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput558 (0 : Fin 6)) = canonicalInput17205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17205 hH))).trans (reductionSound314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput558 (1 : Fin 6)) = canonicalInput25457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection303 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25457 hH))).trans (reductionSound303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput558 (2 : Fin 6)) = canonicalInput25840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection308 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection308 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25840 hH))).trans (reductionSound308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput558 (3 : Fin 6)) = canonicalInput25923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4087 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4087 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25923 hH))).trans (reductionSound4087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput558 (4 : Fin 6)) = canonicalInput25935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25935 hH))).trans (reductionSound10217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput558 (5 : Fin 6)) = canonicalInput25937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5361 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput558 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5361 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25937 hH))).trans (reductionSound5361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput558 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-1440, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row558) ![reductionProjection314, reductionProjection303, reductionProjection308, reductionProjection4087, reductionProjection10217, reductionProjection5361]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput560 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![-2, -1, 3, 0], ![3, 0, -2, -1]]

theorem rowSound560 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 560) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row560 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row560 H]
  have hshape : boundaryInput560 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput560 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 48, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection284, reductionProjection284, reductionProjection10219, reductionProjection10236, reductionProjection149, reductionProjection6788] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput560 (0 : Fin 6)) = canonicalInput17105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection284 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection284 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17105 hH))).trans (reductionSound284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput560 (1 : Fin 6)) = canonicalInput25397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection284 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection284 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25397 hH))).trans (reductionSound284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput560 (2 : Fin 6)) = canonicalInput25579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10219 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10219 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25579 hH))).trans (reductionSound10219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput560 (3 : Fin 6)) = canonicalInput25651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10236 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10236 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25651 hH))).trans (reductionSound10236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput560 (4 : Fin 6)) = canonicalInput25656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection149 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection149 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25656 hH))).trans (reductionSound149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput560 (5 : Fin 6)) = canonicalInput25657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6788 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput560 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6788 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25657 hH))).trans (reductionSound6788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput560 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 48, 144, 288] ![-7200, -7200, -1440, -43200, -14400, -7200] (extendRow Arithmetic.row560) ![reductionProjection284, reductionProjection284, reductionProjection10219, reductionProjection10236, reductionProjection149, reductionProjection6788]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1255 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]

theorem rowSound1255 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1255) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1255 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1255 H]
  have hshape : boundaryInput1255 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1255 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10235, reductionProjection10235, reductionProjection10226, reductionProjection10230, reductionProjection4476, oldProjection3301] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1255 (0 : Fin 6)) = canonicalInput24795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10235 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24795 hH))).trans (reductionSound10235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1255 (1 : Fin 6)) = canonicalInput28102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10235 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28102 hH))).trans (reductionSound10235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1255 (2 : Fin 6)) = canonicalInput28490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10226 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28490 hH))).trans (reductionSound10226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1255 (3 : Fin 6)) = canonicalInput28616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28616 hH))).trans (reductionSound10230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1255 (4 : Fin 6)) = canonicalInput28632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28632 hH))).trans (reductionSound4476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1255 (5 : Fin 6)) = canonicalInput28634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1255 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28634 hH))).trans (oldProjectionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1255 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-1440, -1440, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row1255) ![reductionProjection10235, reductionProjection10235, reductionProjection10226, reductionProjection10230, reductionProjection4476, oldProjection3301]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

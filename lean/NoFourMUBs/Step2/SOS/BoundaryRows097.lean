import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical389
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical391
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions124
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions151
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions219
import NoFourMUBs.Step2.SOS.Reductions220
import NoFourMUBs.Step2.SOS.Reductions222
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions354
import NoFourMUBs.Step2.SOS.Reductions355

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput655 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 1, 0, 0], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]

theorem rowSound655 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 655) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row655 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row655 H]
  have hshape : boundaryInput655 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput655 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 288, 2880, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7031, reductionProjection7064, reductionProjection7023, reductionProjection4975, reductionProjection7123, reductionProjection11325] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput655 (0 : Fin 6)) = canonicalInput15719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7031 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7031 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15719 hH))).trans (reductionSound7031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput655 (1 : Fin 6)) = canonicalInput24940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7064 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24940 hH))).trans (reductionSound7064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput655 (2 : Fin 6)) = canonicalInput25103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7023 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7023 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25103 hH))).trans (reductionSound7023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput655 (3 : Fin 6)) = canonicalInput25104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4975 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4975 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25104 hH))).trans (reductionSound4975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput655 (4 : Fin 6)) = canonicalInput25105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7123 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7123 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25105 hH))).trans (reductionSound7123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput655 (5 : Fin 6)) = canonicalInput25106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11325 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput655 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25106 hH))).trans (reductionSound11325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput655 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 288, 2880, 288] ![-2880, -2880, -2880, -28800, -2880, -28800] (extendRow Arithmetic.row655) ![reductionProjection7031, reductionProjection7064, reductionProjection7023, reductionProjection4975, reductionProjection7123, reductionProjection11325]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput576 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![2, -1, 0, 0, -1], ![0, 2, 1, -2, -1]]

theorem rowSound576 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 576) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row576 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row576 H]
  have hshape : boundaryInput576 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput576 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 576, 576, 720, 576, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3990, reductionProjection3995, reductionProjection4004, reductionProjection3673, reductionProjection11355, reductionProjection3594] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput576 (0 : Fin 6)) = canonicalInput15838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3990 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15838 hH))).trans (reductionSound3990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput576 (1 : Fin 6)) = canonicalInput24943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3995 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3995 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24943 hH))).trans (reductionSound3995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput576 (2 : Fin 6)) = canonicalInput25113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4004 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4004 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25113 hH))).trans (reductionSound4004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput576 (3 : Fin 6)) = canonicalInput25157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3673 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3673 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25157 hH))).trans (reductionSound3673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput576 (4 : Fin 6)) = canonicalInput25169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11355 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11355 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25169 hH))).trans (reductionSound11355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput576 (5 : Fin 6)) = canonicalInput25171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3594 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput576 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25171 hH))).trans (reductionSound3594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput576 (j : Fin 6)))
    1440 2880 ![2880, 576, 576, 720, 576, 576] ![-1440, -7200, -7200, -5760, -7200, -7200] (extendRow Arithmetic.row576) ![reductionProjection3990, reductionProjection3995, reductionProjection4004, reductionProjection3673, reductionProjection11355, reductionProjection3594]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput584 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![2, -1, 0, 0, -1], ![0, 1, 2, -2, -1]]

theorem rowSound584 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 584) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row584 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row584 H]
  have hshape : boundaryInput584 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput584 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 576, 1440, 2880, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3985, reductionProjection3975, reductionProjection3980, reductionProjection3623, reductionProjection11353, reductionProjection3599] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput584 (0 : Fin 6)) = canonicalInput15840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3985 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3985 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15840 hH))).trans (reductionSound3985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput584 (1 : Fin 6)) = canonicalInput24945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3975 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3975 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24945 hH))).trans (reductionSound3975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput584 (2 : Fin 6)) = canonicalInput25115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3980 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3980 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25115 hH))).trans (reductionSound3980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput584 (3 : Fin 6)) = canonicalInput25159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25159 hH))).trans (reductionSound3623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput584 (4 : Fin 6)) = canonicalInput25174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11353 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25174 hH))).trans (reductionSound11353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput584 (5 : Fin 6)) = canonicalInput25177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3599 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput584 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3599 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25177 hH))).trans (reductionSound3599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput584 (j : Fin 6)))
    2880 2880 ![2880, 1440, 576, 1440, 2880, 2880] ![-2880, -5760, -14400, -5760, -2880, -2880] (extendRow Arithmetic.row584) ![reductionProjection3985, reductionProjection3975, reductionProjection3980, reductionProjection3623, reductionProjection11353, reductionProjection3599]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput592 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![2, 1, -1, -1, -1]]

theorem rowSound592 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 592) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row592 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row592 H]
  have hshape : boundaryInput592 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput592 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 720, 2880, 576, 2880, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4812, reductionProjection4858, reductionProjection4849, reductionProjection4803, reductionProjection5159, reductionProjection11346] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput592 (0 : Fin 6)) = canonicalInput15853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4812 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4812 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15853 hH))).trans (reductionSound4812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput592 (1 : Fin 6)) = canonicalInput24958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4858 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4858 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24958 hH))).trans (reductionSound4858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput592 (2 : Fin 6)) = canonicalInput25128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4849 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4849 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25128 hH))).trans (reductionSound4849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput592 (3 : Fin 6)) = canonicalInput25202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4803 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4803 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25202 hH))).trans (reductionSound4803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput592 (4 : Fin 6)) = canonicalInput25212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5159 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5159 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25212 hH))).trans (reductionSound5159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput592 (5 : Fin 6)) = canonicalInput25213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11346 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput592 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11346 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25213 hH))).trans (reductionSound11346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput592 (j : Fin 6)))
    2880 2880 ![2880, 720, 2880, 576, 2880, 576] ![-2880, -11520, -2880, -14400, -2880, -14400] (extendRow Arithmetic.row592) ![reductionProjection4812, reductionProjection4858, reductionProjection4849, reductionProjection4803, reductionProjection5159, reductionProjection11346]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput638 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![-1, 0, 1, 2, -2], ![2, 1, 0, -1, -2]]

theorem rowSound638 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 638) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row638 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row638 H]
  have hshape : boundaryInput638 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput638 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 1440, 2880, 1440, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3354, reductionProjection3512, reductionProjection3848, reductionProjection3400, reductionProjection3345, reductionProjection11348] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput638 (0 : Fin 6)) = canonicalInput15878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3354 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3354 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15878 hH))).trans (reductionSound3354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput638 (1 : Fin 6)) = canonicalInput24981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3512 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3512 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24981 hH))).trans (reductionSound3512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput638 (2 : Fin 6)) = canonicalInput25151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3848 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3848 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25151 hH))).trans (reductionSound3848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput638 (3 : Fin 6)) = canonicalInput25264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3400 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25264 hH))).trans (reductionSound3400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput638 (4 : Fin 6)) = canonicalInput25276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3345 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25276 hH))).trans (reductionSound3345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput638 (5 : Fin 6)) = canonicalInput25277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11348 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput638 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25277 hH))).trans (reductionSound11348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput638 (j : Fin 6)))
    2880 2880 ![2880, 2880, 1440, 2880, 1440, 2880] ![-2880, -2880, -5760, -2880, -5760, -2880] (extendRow Arithmetic.row638) ![reductionProjection3354, reductionProjection3512, reductionProjection3848, reductionProjection3400, reductionProjection3345, reductionProjection11348]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput640 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 0, 2, 1, -2], ![2, 1, -1, 0, -2]]

theorem rowSound640 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 640) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row640 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row640 H]
  have hshape : boundaryInput640 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput640 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 36, 2880, 1440, 576] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3638, reductionProjection3638, reductionProjection3678, reductionProjection3741, reductionProjection3632, reductionProjection11357] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput640 (0 : Fin 6)) = canonicalInput15682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3638 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15682 hH))).trans (reductionSound3638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput640 (1 : Fin 6)) = canonicalInput24928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3638 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3638 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24928 hH))).trans (reductionSound3638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput640 (2 : Fin 6)) = canonicalInput25025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3678 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3678 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25025 hH))).trans (reductionSound3678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput640 (3 : Fin 6)) = canonicalInput25056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3741 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25056 hH))).trans (reductionSound3741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput640 (4 : Fin 6)) = canonicalInput25066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3632 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3632 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25066 hH))).trans (reductionSound3632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput640 (5 : Fin 6)) = canonicalInput25068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11357 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput640 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11357 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25068 hH))).trans (reductionSound11357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput640 (j : Fin 6)))
    2880 2880 ![2880, 2880, 36, 2880, 1440, 576] ![-2880, -2880, -230400, -2880, -5760, -14400] (extendRow Arithmetic.row640) ![reductionProjection3638, reductionProjection3638, reductionProjection3678, reductionProjection3741, reductionProjection3632, reductionProjection11357]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput572 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1]]

theorem rowSound572 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 572) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row572 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row572 H]
  have hshape : boundaryInput572 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput572 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 576, 2880, 2880, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7279, reductionProjection7283, reductionProjection7264, reductionProjection11293, reductionProjection5164, reductionProjection11388] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput572 (0 : Fin 6)) = canonicalInput15916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7279 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7279 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15916 hH))).trans (reductionSound7279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput572 (1 : Fin 6)) = canonicalInput24996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7283 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24996 hH))).trans (reductionSound7283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput572 (2 : Fin 6)) = canonicalInput25295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7264 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7264 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25295 hH))).trans (reductionSound7264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput572 (3 : Fin 6)) = canonicalInput25327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11293 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25327 hH))).trans (reductionSound11293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput572 (4 : Fin 6)) = canonicalInput25332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5164 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5164 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25332 hH))).trans (reductionSound5164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput572 (5 : Fin 6)) = canonicalInput25333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11388 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput572 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11388 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25333 hH))).trans (reductionSound11388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput572 (j : Fin 6)))
    720 2880 ![1440, 288, 576, 2880, 2880, 288] ![-1440, -7200, -3600, -720, -720, -7200] (extendRow Arithmetic.row572) ![reductionProjection7279, reductionProjection7283, reductionProjection7264, reductionProjection11293, reductionProjection5164, reductionProjection11388]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput636 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![-1, 2, 0, 1, -2], ![2, -1, 1, 0, -2]]

theorem rowSound636 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 636) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row636 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row636 H]
  have hshape : boundaryInput636 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput636 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2880, 2880, 720, 720, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3434, reductionProjection3487, reductionProjection3578, reductionProjection3442, reductionProjection3643, reductionProjection11364] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput636 (0 : Fin 6)) = canonicalInput15844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3434 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15844 hH))).trans (reductionSound3434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput636 (1 : Fin 6)) = canonicalInput24949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3487 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3487 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24949 hH))).trans (reductionSound3487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput636 (2 : Fin 6)) = canonicalInput25119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3578 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25119 hH))).trans (reductionSound3578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput636 (3 : Fin 6)) = canonicalInput25167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3442 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3442 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25167 hH))).trans (reductionSound3442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput636 (4 : Fin 6)) = canonicalInput25185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3643 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3643 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25185 hH))).trans (reductionSound3643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput636 (5 : Fin 6)) = canonicalInput25186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11364 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput636 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11364 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25186 hH))).trans (reductionSound11364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput636 (j : Fin 6)))
    2880 2880 ![1440, 2880, 2880, 720, 720, 2880] ![-5760, -2880, -2880, -11520, -11520, -2880] (extendRow Arithmetic.row636) ![reductionProjection3434, reductionProjection3487, reductionProjection3578, reductionProjection3442, reductionProjection3643, reductionProjection11364]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

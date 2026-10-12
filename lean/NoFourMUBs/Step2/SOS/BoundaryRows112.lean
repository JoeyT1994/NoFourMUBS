import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical395
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions216
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions292
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions295
import NoFourMUBs.Step2.SOS.Reductions307
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions329
import NoFourMUBs.Step2.SOS.Reductions330
import NoFourMUBs.Step2.SOS.Reductions350
import NoFourMUBs.Step2.SOS.Reductions366
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions373
import NoFourMUBs.Step2.SOS.Reductions376
import NoFourMUBs.Step2.SOS.Reductions377

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput104 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]

theorem rowSound104 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 104) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row104 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row104 H]
  have hshape : boundaryInput104 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput104 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10546, reductionProjection10546, reductionProjection10561, reductionProjection10589, reductionProjection6720, reductionProjection12042] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput104 (0 : Fin 6)) = canonicalInput17104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10546 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10546 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17104 hH))).trans (reductionSound10546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput104 (1 : Fin 6)) = canonicalInput25396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10546 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10546 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25396 hH))).trans (reductionSound10546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput104 (2 : Fin 6)) = canonicalInput25578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10561 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10561 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25578 hH))).trans (reductionSound10561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput104 (3 : Fin 6)) = canonicalInput25638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10589 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10589 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25638 hH))).trans (reductionSound10589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput104 (4 : Fin 6)) = canonicalInput25646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6720 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6720 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25646 hH))).trans (reductionSound6720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput104 (5 : Fin 6)) = canonicalInput25649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12042 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput104 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12042 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25649 hH))).trans (reductionSound12042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput104 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 288, 1440] ![-1440, -1440, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row104) ![reductionProjection10546, reductionProjection10546, reductionProjection10561, reductionProjection10589, reductionProjection6720, reductionProjection12042]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput105 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]

theorem rowSound105 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 105) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row105 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row105 H]
  have hshape : boundaryInput105 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput105 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6191, reductionProjection6191, reductionProjection12040, reductionProjection12040, reductionProjection6201, reductionProjection8455] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput105 (0 : Fin 6)) = canonicalInput17115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6191 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6191 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17115 hH))).trans (reductionSound6191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput105 (1 : Fin 6)) = canonicalInput25404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6191 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6191 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25404 hH))).trans (reductionSound6191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput105 (2 : Fin 6)) = canonicalInput25621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12040 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25621 hH))).trans (reductionSound12040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput105 (3 : Fin 6)) = canonicalInput25671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12040 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25671 hH))).trans (reductionSound12040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput105 (4 : Fin 6)) = canonicalInput25676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6201 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25676 hH))).trans (reductionSound6201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput105 (5 : Fin 6)) = canonicalInput25679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8455 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput105 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8455 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25679 hH))).trans (reductionSound8455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput105 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 288, 1440] ![-1440, -1440, -7200, -7200, -7200, -1440] (extendRow Arithmetic.row105) ![reductionProjection6191, reductionProjection6191, reductionProjection12040, reductionProjection12040, reductionProjection6201, reductionProjection8455]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput108 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 2, 2, -5]]

theorem rowSound108 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 108) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row108 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row108 H]
  have hshape : boundaryInput108 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput108 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1809, reductionProjection1814, reductionProjection1870, reductionProjection10033, reductionProjection1829, reductionProjection12043] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput108 (0 : Fin 6)) = canonicalInput17129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1809 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1809 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17129 hH))).trans (reductionSound1809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput108 (1 : Fin 6)) = canonicalInput25418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1814 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1814 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25418 hH))).trans (reductionSound1814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput108 (2 : Fin 6)) = canonicalInput25699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1870 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25699 hH))).trans (reductionSound1870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput108 (3 : Fin 6)) = canonicalInput25728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25728 hH))).trans (reductionSound10033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput108 (4 : Fin 6)) = canonicalInput25736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1829 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1829 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25736 hH))).trans (reductionSound1829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput108 (5 : Fin 6)) = canonicalInput25738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12043 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput108 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12043 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25738 hH))).trans (reductionSound12043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput108 (j : Fin 6)))
    288 1440 ![720, 720, 720, 1440, 1440, 720] ![-576, -576, -576, -288, -288, -576] (extendRow Arithmetic.row108) ![reductionProjection1809, reductionProjection1814, reductionProjection1870, reductionProjection10033, reductionProjection1829, reductionProjection12043]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput451 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]

theorem rowSound451 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 451) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row451 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row451 H]
  have hshape : boundaryInput451 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput451 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9871, reductionProjection9853, reductionProjection9875, reductionProjection9876, reductionProjection12034, reductionProjection11826] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput451 (0 : Fin 6)) = canonicalInput24319.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9871 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24319 hH))).trans (reductionSound9871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput451 (1 : Fin 6)) = canonicalInput26821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26821 hH))).trans (reductionSound9853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput451 (2 : Fin 6)) = canonicalInput26895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9875 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26895 hH))).trans (reductionSound9875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput451 (3 : Fin 6)) = canonicalInput26896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9876 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26896 hH))).trans (reductionSound9876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput451 (4 : Fin 6)) = canonicalInput26897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12034 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26897 hH))).trans (reductionSound12034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput451 (5 : Fin 6)) = canonicalInput26898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput451 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26898 hH))).trans (reductionSound11826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput451 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-1440, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row451) ![reductionProjection9871, reductionProjection9853, reductionProjection9875, reductionProjection9876, reductionProjection12034, reductionProjection11826]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1209 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -1, -1, 2], ![1, 1, -1, -1], ![-2, 1, 2, -1]]

theorem rowSound1209 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1209) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1209 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1209 H]
  have hshape : boundaryInput1209 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1209 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![180, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9448, reductionProjection8825, oldProjection3250, reductionProjection6932, reductionProjection12054, reductionProjection11712] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1209 (0 : Fin 6)) = canonicalInput24829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9448 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9448 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24829 hH))).trans (reductionSound9448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1209 (1 : Fin 6)) = canonicalInput28129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8825 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28129 hH))).trans (reductionSound8825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1209 (2 : Fin 6)) = canonicalInput29246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29246 hH))).trans (oldProjectionSound3250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1209 (3 : Fin 6)) = canonicalInput29316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6932 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6932 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29316 hH))).trans (reductionSound6932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1209 (4 : Fin 6)) = canonicalInput29320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12054 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29320 hH))).trans (reductionSound12054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1209 (5 : Fin 6)) = canonicalInput29321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11712 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1209 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11712 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29321 hH))).trans (reductionSound11712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1209 (j : Fin 6)))
    144 1440 ![180, 1440, 1440, 288, 1440, 1440] ![-1152, -144, -144, -720, -144, -144] (extendRow Arithmetic.row1209) ![reductionProjection9448, reductionProjection8825, oldProjection3250, reductionProjection6932, reductionProjection12054, reductionProjection11712]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1219 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 2, 1, -3]]

theorem rowSound1219 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1219) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1219 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1219 H]
  have hshape : boundaryInput1219 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1219 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6739, reductionProjection6759, reductionProjection6827, reductionProjection6029, reductionProjection6658, reductionProjection12037] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1219 (0 : Fin 6)) = canonicalInput24879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6739 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24879 hH))).trans (reductionSound6739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1219 (1 : Fin 6)) = canonicalInput29995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6759 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6759 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29995 hH))).trans (reductionSound6759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1219 (2 : Fin 6)) = canonicalInput30076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6827 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6827 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30076 hH))).trans (reductionSound6827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1219 (3 : Fin 6)) = canonicalInput30078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30078 hH))).trans (reductionSound6029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1219 (4 : Fin 6)) = canonicalInput30080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6658 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6658 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30080 hH))).trans (reductionSound6658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1219 (5 : Fin 6)) = canonicalInput30081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12037 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1219 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12037 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30081 hH))).trans (reductionSound12037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1219 (j : Fin 6)))
    288 1440 ![360, 1440, 1440, 1440, 720, 288] ![-1152, -288, -288, -288, -576, -1440] (extendRow Arithmetic.row1219) ![reductionProjection6739, reductionProjection6759, reductionProjection6827, reductionProjection6029, reductionProjection6658, reductionProjection12037]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1220 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3]]

theorem rowSound1220 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1220) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1220 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1220 H]
  have hshape : boundaryInput1220 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1220 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![180, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9374, reductionProjection9381, reductionProjection9230, reductionProjection11946, reductionProjection6942, reductionProjection12055] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1220 (0 : Fin 6)) = canonicalInput24880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9374 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24880 hH))).trans (reductionSound9374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1220 (1 : Fin 6)) = canonicalInput29996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9381 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9381 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29996 hH))).trans (reductionSound9381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1220 (2 : Fin 6)) = canonicalInput30077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30077 hH))).trans (reductionSound9230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1220 (3 : Fin 6)) = canonicalInput30079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11946 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11946 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30079 hH))).trans (reductionSound11946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1220 (4 : Fin 6)) = canonicalInput30082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6942 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6942 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30082 hH))).trans (reductionSound6942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1220 (5 : Fin 6)) = canonicalInput30083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12055 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1220 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12055 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30083 hH))).trans (reductionSound12055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1220 (j : Fin 6)))
    288 1440 ![180, 1440, 1440, 1440, 1440, 720] ![-2304, -288, -288, -288, -288, -576] (extendRow Arithmetic.row1220) ![reductionProjection9374, reductionProjection9381, reductionProjection9230, reductionProjection11946, reductionProjection6942, reductionProjection12055]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput563 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -2, 0, 0]]

theorem rowSound563 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 563) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row563 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row563 H]
  have hshape : boundaryInput563 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput563 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 1440, 1440, 2880, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7180, reductionProjection12086, reductionProjection12087, reductionProjection5005, reductionProjection3783, reductionProjection11230] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput563 (0 : Fin 6)) = canonicalInput15993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7180 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15993 hH))).trans (reductionSound7180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput563 (1 : Fin 6)) = canonicalInput24999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12086 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12086 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24999 hH))).trans (reductionSound12086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput563 (2 : Fin 6)) = canonicalInput25342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12087 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12087 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25342 hH))).trans (reductionSound12087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput563 (3 : Fin 6)) = canonicalInput25349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5005 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25349 hH))).trans (reductionSound5005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput563 (4 : Fin 6)) = canonicalInput25351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3783 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3783 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25351 hH))).trans (reductionSound3783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput563 (5 : Fin 6)) = canonicalInput25352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput563 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25352 hH))).trans (reductionSound11230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput563 (j : Fin 6)))
    720 2880 ![2880, 1440, 1440, 2880, 1440, 1440] ![-720, -1440, -1440, -720, -1440, -1440] (extendRow Arithmetic.row563) ![reductionProjection7180, reductionProjection12086, reductionProjection12087, reductionProjection5005, reductionProjection3783, reductionProjection11230]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

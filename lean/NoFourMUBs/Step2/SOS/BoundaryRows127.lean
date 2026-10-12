import NoFourMUBs.Step2.SOS.Canonical116
import NoFourMUBs.Step2.SOS.Canonical120
import NoFourMUBs.Step2.SOS.Canonical134
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical390
import NoFourMUBs.Step2.SOS.Canonical392
import NoFourMUBs.Step2.SOS.Canonical393
import NoFourMUBs.Step2.SOS.Canonical394
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions114
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions360
import NoFourMUBs.Step2.SOS.Reductions363
import NoFourMUBs.Step2.SOS.Reductions365
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions371
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions380
import NoFourMUBs.Step2.SOS.Reductions383

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput348 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, -2, 2, -2]]

theorem rowSound348 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 348) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row348 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row348 H]
  have hshape : boundaryInput348 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput348 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7710, reductionProjection9572, reductionProjection9572, reductionProjection9592, reductionProjection9598, reductionProjection12279] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput348 (0 : Fin 6)) = canonicalInput7688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7710 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7710 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7688 hH))).trans (reductionSound7710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput348 (1 : Fin 6)) = canonicalInput20757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9572 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20757 hH))).trans (reductionSound9572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput348 (2 : Fin 6)) = canonicalInput20980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9572 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20980 hH))).trans (reductionSound9572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput348 (3 : Fin 6)) = canonicalInput20985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9592 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9592 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20985 hH))).trans (reductionSound9592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput348 (4 : Fin 6)) = canonicalInput20987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9598 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9598 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20987 hH))).trans (reductionSound9598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput348 (5 : Fin 6)) = canonicalInput20988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12279 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput348 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12279 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20988 hH))).trans (reductionSound12279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput348 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 288, 1440, 1440] ![-2880, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row348) ![reductionProjection7710, reductionProjection9572, reductionProjection9572, reductionProjection9592, reductionProjection9598, reductionProjection12279]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput350 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, -1, 3, -3]]

theorem rowSound350 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 350) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row350 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row350 H]
  have hshape : boundaryInput350 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput350 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7729, reductionProjection11868, reductionProjection11895, reductionProjection12187, reductionProjection12117, reductionProjection12268] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput350 (0 : Fin 6)) = canonicalInput7716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7729 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7716 hH))).trans (reductionSound7729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput350 (1 : Fin 6)) = canonicalInput20761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11868 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20761 hH))).trans (reductionSound11868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput350 (2 : Fin 6)) = canonicalInput20984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11895 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11895 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20984 hH))).trans (reductionSound11895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput350 (3 : Fin 6)) = canonicalInput20992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12187 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20992 hH))).trans (reductionSound12187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput350 (4 : Fin 6)) = canonicalInput20996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12117 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12117 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20996 hH))).trans (reductionSound12117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput350 (5 : Fin 6)) = canonicalInput20998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12268 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput350 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12268 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20998 hH))).trans (reductionSound12268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput350 (j : Fin 6)))
    720 1440 ![1440, 288, 1440, 1440, 288, 720] ![-720, -3600, -720, -720, -3600, -1440] (extendRow Arithmetic.row350) ![reductionProjection7729, reductionProjection11868, reductionProjection11895, reductionProjection12187, reductionProjection12117, reductionProjection12268]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput352 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, 0, 2, -4]]

theorem rowSound352 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 352) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row352 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row352 H]
  have hshape : boundaryInput352 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput352 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6466, reductionProjection6469, reductionProjection6469, reductionProjection6560, reductionProjection6520, reductionProjection12270] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput352 (0 : Fin 6)) = canonicalInput7429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6466 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6466 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7429 hH))).trans (reductionSound6466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput352 (1 : Fin 6)) = canonicalInput20721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6469 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20721 hH))).trans (reductionSound6469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput352 (2 : Fin 6)) = canonicalInput20864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6469 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20864 hH))).trans (reductionSound6469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput352 (3 : Fin 6)) = canonicalInput20873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6560 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6560 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20873 hH))).trans (reductionSound6560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput352 (4 : Fin 6)) = canonicalInput20877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6520 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6520 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20877 hH))).trans (reductionSound6520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput352 (5 : Fin 6)) = canonicalInput20878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12270 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput352 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12270 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20878 hH))).trans (reductionSound12270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput352 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 720, 1440, 1440] ![-7200, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row352) ![reductionProjection6466, reductionProjection6469, reductionProjection6469, reductionProjection6560, reductionProjection6520, reductionProjection12270]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput353 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]

theorem rowSound353 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 353) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row353 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row353 H]
  have hshape : boundaryInput353 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput353 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7600, reductionProjection11644, reductionProjection11809, reductionProjection11846, reductionProjection11802, reductionProjection12273] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput353 (0 : Fin 6)) = canonicalInput7469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7600 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7600 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7469 hH))).trans (reductionSound7600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput353 (1 : Fin 6)) = canonicalInput20726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11644 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11644 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20726 hH))).trans (reductionSound11644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput353 (2 : Fin 6)) = canonicalInput20868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11809 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11809 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20868 hH))).trans (reductionSound11809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput353 (3 : Fin 6)) = canonicalInput20885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11846 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20885 hH))).trans (reductionSound11846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput353 (4 : Fin 6)) = canonicalInput20889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11802 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11802 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20889 hH))).trans (reductionSound11802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput353 (5 : Fin 6)) = canonicalInput20891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12273 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput353 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12273 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20891 hH))).trans (reductionSound12273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput353 (j : Fin 6)))
    1440 1440 ![288, 288, 288, 288, 288, 1440] ![-7200, -7200, -7200, -7200, -7200, -1440] (extendRow Arithmetic.row353) ![reductionProjection7600, reductionProjection11644, reductionProjection11809, reductionProjection11846, reductionProjection11802, reductionProjection12273]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput477 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -3, 0, 2], ![0, 2, 2, -4]]

theorem rowSound477 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 477) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row477 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row477 H]
  have hshape : boundaryInput477 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput477 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 72, 288, 1440, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8184, reductionProjection11531, reductionProjection11693, reductionProjection12278, reductionProjection12260, reductionProjection9906] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput477 (0 : Fin 6)) = canonicalInput8637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8184 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8184 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8637 hH))).trans (reductionSound8184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput477 (1 : Fin 6)) = canonicalInput21711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11531 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11531 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21711 hH))).trans (reductionSound11531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput477 (2 : Fin 6)) = canonicalInput21759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11693 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11693 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21759 hH))).trans (reductionSound11693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput477 (3 : Fin 6)) = canonicalInput21765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12278 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21765 hH))).trans (reductionSound12278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput477 (4 : Fin 6)) = canonicalInput21769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12260 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12260 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21769 hH))).trans (reductionSound12260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput477 (5 : Fin 6)) = canonicalInput21771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9906 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput477 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21771 hH))).trans (reductionSound9906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput477 (j : Fin 6)))
    1440 1440 ![1440, 72, 288, 1440, 288, 360] ![-1440, -28800, -7200, -1440, -7200, -5760] (extendRow Arithmetic.row477) ![reductionProjection8184, reductionProjection11531, reductionProjection11693, reductionProjection12278, reductionProjection12260, reductionProjection9906]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput587 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, -1, 0], ![-1, 2, 1, 0, -2]]

theorem rowSound587 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 587) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row587 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row587 H]
  have hshape : boundaryInput587 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput587 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 2880, 2880, 576, 576, 2880] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3490, reductionProjection3495, reductionProjection3582, reductionProjection3505, reductionProjection12282, reductionProjection3498] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput587 (0 : Fin 6)) = canonicalInput15861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3490 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3490 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15861 hH))).trans (reductionSound3490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput587 (1 : Fin 6)) = canonicalInput24966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3495 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3495 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24966 hH))).trans (reductionSound3495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput587 (2 : Fin 6)) = canonicalInput25136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3582 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3582 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25136 hH))).trans (reductionSound3582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput587 (3 : Fin 6)) = canonicalInput25215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3505 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3505 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25215 hH))).trans (reductionSound3505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput587 (4 : Fin 6)) = canonicalInput25232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12282 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12282 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25232 hH))).trans (reductionSound12282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput587 (5 : Fin 6)) = canonicalInput25234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3498 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput587 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3498 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25234 hH))).trans (reductionSound3498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput587 (j : Fin 6)))
    2880 2880 ![2880, 2880, 2880, 576, 576, 2880] ![-2880, -2880, -2880, -14400, -14400, -2880] (extendRow Arithmetic.row587) ![reductionProjection3490, reductionProjection3495, reductionProjection3582, reductionProjection3505, reductionProjection12282, reductionProjection3498]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput589 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, -1, 0], ![-1, 2, 1, 0, -2]]

theorem rowSound589 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 589) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row589 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row589 H]
  have hshape : boundaryInput589 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput589 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![2880, 720, 1440, 2880, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3523, reductionProjection3539, reductionProjection3604, reductionProjection3528, reductionProjection12283, reductionProjection3517] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput589 (0 : Fin 6)) = canonicalInput15859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3523 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15859 hH))).trans (reductionSound3523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput589 (1 : Fin 6)) = canonicalInput24964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3539 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24964 hH))).trans (reductionSound3539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput589 (2 : Fin 6)) = canonicalInput25134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3604 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3604 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25134 hH))).trans (reductionSound3604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput589 (3 : Fin 6)) = canonicalInput25210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3528 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3528 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25210 hH))).trans (reductionSound3528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput589 (4 : Fin 6)) = canonicalInput25228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12283 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25228 hH))).trans (reductionSound12283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput589 (5 : Fin 6)) = canonicalInput25230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3517 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput589 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3517 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25230 hH))).trans (reductionSound3517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput589 (j : Fin 6)))
    2880 2880 ![2880, 720, 1440, 2880, 1440, 720] ![-2880, -11520, -5760, -2880, -5760, -11520] (extendRow Arithmetic.row589) ![reductionProjection3523, reductionProjection3539, reductionProjection3604, reductionProjection3528, reductionProjection12283, reductionProjection3517]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput596 : Matrix (Fin 7) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, -1, 0, 0], ![-1, 0, 1, 2, -2]]

theorem rowSound596 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 596) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row596 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row596 H]
  have hshape : boundaryInput596 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput596 4 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 2880, 576, 2880, 2880, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3862, reductionProjection3857, reductionProjection3850, reductionProjection3648, reductionProjection12284, reductionProjection3639] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput596 (0 : Fin 6)) = canonicalInput15864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3862 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3862 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15864 hH))).trans (reductionSound3862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput596 (1 : Fin 6)) = canonicalInput24969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3857 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3857 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24969 hH))).trans (reductionSound3857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput596 (2 : Fin 6)) = canonicalInput25139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3850 (Normalization.momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3850 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25139 hH))).trans (reductionSound3850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput596 (3 : Fin 6)) = canonicalInput25224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3648 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3648 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25224 hH))).trans (reductionSound3648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput596 (4 : Fin 6)) = canonicalInput25238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12284 (Normalization.momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12284 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25238 hH))).trans (reductionSound12284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput596 (5 : Fin 6)) = canonicalInput25240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3639 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput596 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound25240 hH))).trans (reductionSound3639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput596 (j : Fin 6)))
    2880 2880 ![144, 2880, 576, 2880, 2880, 720] ![-57600, -2880, -14400, -2880, -2880, -11520] (extendRow Arithmetic.row596) ![reductionProjection3862, reductionProjection3857, reductionProjection3850, reductionProjection3648, reductionProjection12284, reductionProjection3639]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

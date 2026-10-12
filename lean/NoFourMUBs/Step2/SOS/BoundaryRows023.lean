import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions115
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions177
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical270
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput61 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-2, -1, 3], ![0, 4, -4]]

theorem rowSound61 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 61) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row61 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row61 H]
  have hshape : boundaryInput61 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput61 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 480, 480, 96, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6111, oldProjection1879, oldProjection1879, oldProjection565, reductionProjection260, oldProjection1869] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput61 (0 : Fin 6)) = canonicalInput18667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6111 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6111 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18667 hH))).trans (reductionSound6111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput61 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8655 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8655 hH))).trans (oldProjectionSound1879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput61 (2 : Fin 6)) = canonicalInput26616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26616 hH))).trans (oldProjectionSound1879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput61 (3 : Fin 6)) = canonicalInput26629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection565 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection565 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26629 hH))).trans (oldProjectionSound565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput61 (4 : Fin 6)) = canonicalInput26631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection260 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection260 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26631 hH))).trans (reductionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput61 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8786 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput61 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8786 hH))).trans (oldProjectionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput61 (j : Fin 6)))
    480 480 ![96, 480, 480, 96, 96, 480] ![-2400, -480, -480, -2400, -2400, -480] (extendRow Arithmetic.row61) ![reductionProjection6111, oldProjection1879, oldProjection1879, oldProjection565, reductionProjection260, oldProjection1869]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput251 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 1, 3, -3]]

theorem rowSound251 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 251) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row251 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row251 H]
  have hshape : boundaryInput251 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput251 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5670, reductionProjection6103, reductionProjection5757, reductionProjection5757, reductionProjection4597, reductionProjection5772] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput251 (0 : Fin 6)) = canonicalInput27914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5670 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5670 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27914 hH))).trans (reductionSound5670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput251 (1 : Fin 6)) = canonicalInput29707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6103 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6103 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29707 hH))).trans (reductionSound6103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput251 (2 : Fin 6)) = canonicalInput29906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5757 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29906 hH))).trans (reductionSound5757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput251 (3 : Fin 6)) = canonicalInput29934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5757 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29934 hH))).trans (reductionSound5757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput251 (4 : Fin 6)) = canonicalInput29938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4597 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4597 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29938 hH))).trans (reductionSound4597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput251 (5 : Fin 6)) = canonicalInput29939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5772 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput251 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5772 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29939 hH))).trans (reductionSound5772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput251 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 288, 288, 288] ![-288, -288, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row251) ![reductionProjection5670, reductionProjection6103, reductionProjection5757, reductionProjection5757, reductionProjection4597, reductionProjection5772]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput254 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 3, -3]]

theorem rowSound254 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 254) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row254 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row254 H]
  have hshape : boundaryInput254 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput254 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5680, reductionProjection5762, reductionProjection6103, reductionProjection5780, reductionProjection4605, reductionProjection5777] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput254 (0 : Fin 6)) = canonicalInput27838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5680 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5680 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27838 hH))).trans (reductionSound5680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput254 (1 : Fin 6)) = canonicalInput29359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5762 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5762 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29359 hH))).trans (reductionSound5762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput254 (2 : Fin 6)) = canonicalInput29448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6103 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6103 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29448 hH))).trans (reductionSound6103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput254 (3 : Fin 6)) = canonicalInput29525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5780 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29525 hH))).trans (reductionSound5780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput254 (4 : Fin 6)) = canonicalInput29528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29528 hH))).trans (reductionSound4605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput254 (5 : Fin 6)) = canonicalInput29529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput254 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29529 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput254 (j : Fin 6)))
    288 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-576, -288, -288, -288, -288, -288] (extendRow Arithmetic.row254) ![reductionProjection5680, reductionProjection5762, reductionProjection6103, reductionProjection5780, reductionProjection4605, reductionProjection5777]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput372 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]

theorem rowSound372 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 372) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row372 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row372 H]
  have hshape : boundaryInput372 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput372 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 720, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5655, reductionProjection3711, reductionProjection6097, reductionProjection5729, reductionProjection4580, oldProjection3063] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput372 (0 : Fin 6)) = canonicalInput27782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5655 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5655 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27782 hH))).trans (reductionSound5655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput372 (1 : Fin 6)) = canonicalInput28779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3711 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28779 hH))).trans (reductionSound3711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput372 (2 : Fin 6)) = canonicalInput29030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6097 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6097 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29030 hH))).trans (reductionSound6097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput372 (3 : Fin 6)) = canonicalInput29179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5729 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29179 hH))).trans (reductionSound5729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput372 (4 : Fin 6)) = canonicalInput29180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4580 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4580 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29180 hH))).trans (reductionSound4580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput372 (5 : Fin 6)) = canonicalInput29181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3063 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput372 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3063 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29181 hH))).trans (oldProjectionSound3063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput372 (j : Fin 6)))
    1440 1440 ![360, 720, 1440, 720, 1440, 1440] ![-5760, -2880, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row372) ![reductionProjection5655, reductionProjection3711, reductionProjection6097, reductionProjection5729, reductionProjection4580, oldProjection3063]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput406 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![0, 3, 1, -4]]

theorem rowSound406 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 406) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row406 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row406 H]
  have hshape : boundaryInput406 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput406 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6033, reductionProjection6033, reductionProjection6090, reductionProjection6095, reductionProjection1593, reductionProjection5846] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput406 (0 : Fin 6)) = canonicalInput24793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24793 hH))).trans (reductionSound6033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput406 (1 : Fin 6)) = canonicalInput28100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28100 hH))).trans (reductionSound6033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput406 (2 : Fin 6)) = canonicalInput28488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6090 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6090 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28488 hH))).trans (reductionSound6090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput406 (3 : Fin 6)) = canonicalInput28612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6095 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6095 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28612 hH))).trans (reductionSound6095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput406 (4 : Fin 6)) = canonicalInput28626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1593 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1593 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28626 hH))).trans (reductionSound1593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput406 (5 : Fin 6)) = canonicalInput28628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput406 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5846 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28628 hH))).trans (reductionSound5846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput406 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row406) ![reductionProjection6033, reductionProjection6033, reductionProjection6090, reductionProjection6095, reductionProjection1593, reductionProjection5846]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput521 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 1, -1, 1], ![-1, -2, 2, 1], ![2, 0, 1, -3]]

theorem rowSound521 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 521) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row521 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row521 H]
  have hshape : boundaryInput521 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput521 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 144, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4608, reductionProjection6086, oldProjection1798, reductionProjection6029, reductionProjection4600, reductionProjection5774] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput521 (0 : Fin 6)) = canonicalInput24852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4608 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4608 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24852 hH))).trans (reductionSound4608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput521 (1 : Fin 6)) = canonicalInput28427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6086 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6086 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28427 hH))).trans (reductionSound6086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput521 (2 : Fin 6)) = canonicalInput29416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1798 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29416 hH))).trans (oldProjectionSound1798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput521 (3 : Fin 6)) = canonicalInput29495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6029 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29495 hH))).trans (reductionSound6029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput521 (4 : Fin 6)) = canonicalInput29500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4600 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4600 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29500 hH))).trans (reductionSound4600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput521 (5 : Fin 6)) = canonicalInput29501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5774 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput521 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5774 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29501 hH))).trans (reductionSound5774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput521 (j : Fin 6)))
    288 1440 ![1440, 144, 1440, 1440, 1440, 1440] ![-288, -2880, -288, -288, -288, -288] (extendRow Arithmetic.row521) ![reductionProjection4608, reductionProjection6086, oldProjection1798, reductionProjection6029, reductionProjection4600, reductionProjection5774]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput522 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 1, 1, -3]]

theorem rowSound522 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 522) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row522 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row522 H]
  have hshape : boundaryInput522 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput522 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6043, reductionProjection6079, oldProjection1794, reductionProjection6102, reductionProjection1636, reductionProjection5858] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput522 (0 : Fin 6)) = canonicalInput24853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6043 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6043 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24853 hH))).trans (reductionSound6043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput522 (1 : Fin 6)) = canonicalInput28460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6079 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6079 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28460 hH))).trans (reductionSound6079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput522 (2 : Fin 6)) = canonicalInput29417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1794 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1794 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29417 hH))).trans (oldProjectionSound1794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput522 (3 : Fin 6)) = canonicalInput29510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6102 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6102 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29510 hH))).trans (reductionSound6102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput522 (4 : Fin 6)) = canonicalInput29512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1636 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29512 hH))).trans (reductionSound1636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput522 (5 : Fin 6)) = canonicalInput29515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5858 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput522 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5858 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29515 hH))).trans (reductionSound5858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput522 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-7200, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row522) ![reductionProjection6043, reductionProjection6079, oldProjection1794, reductionProjection6102, reductionProjection1636, reductionProjection5858]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput804 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 3, 0]]

theorem rowSound804 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 804) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row804 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row804 H]
  have hshape : boundaryInput804 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput804 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4669, reductionProjection4669, oldProjection3001, reductionProjection4646, oldProjection2999, reductionProjection6080] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput804 (0 : Fin 6)) = canonicalInput27653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4669 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27653 hH))).trans (reductionSound4669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput804 (1 : Fin 6)) = canonicalInput28155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4669 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28155 hH))).trans (reductionSound4669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput804 (2 : Fin 6)) = canonicalInput28415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3001 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3001 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28415 hH))).trans (oldProjectionSound3001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput804 (3 : Fin 6)) = canonicalInput28462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4646 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4646 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28462 hH))).trans (reductionSound4646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput804 (4 : Fin 6)) = canonicalInput28465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28465 hH))).trans (oldProjectionSound2999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput804 (5 : Fin 6)) = canonicalInput28466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6080 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput804 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6080 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28466 hH))).trans (reductionSound6080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput804 (j : Fin 6)))
    144 1440 ![1440, 1440, 288, 1440, 1440, 1440] ![-144, -144, -720, -144, -144, -144] (extendRow Arithmetic.row804) ![reductionProjection4669, reductionProjection4669, oldProjection3001, reductionProjection4646, oldProjection2999, reductionProjection6080]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

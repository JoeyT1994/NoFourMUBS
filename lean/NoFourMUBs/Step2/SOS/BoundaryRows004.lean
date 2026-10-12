import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical306
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical307

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput135 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -2, 1, 3]]

theorem rowSound135 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 135) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row135 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row135 H]
  have hshape : boundaryInput135 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput135 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1187, reductionProjection1271, reductionProjection1245, reductionProjection1267, reductionProjection1272, reductionProjection768] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput135 (0 : Fin 6)) = canonicalInput27919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1187 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27919 hH))).trans (reductionSound1187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput135 (1 : Fin 6)) = canonicalInput29715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29715 hH))).trans (reductionSound1271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput135 (2 : Fin 6)) = canonicalInput29911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1245 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1245 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29911 hH))).trans (reductionSound1245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput135 (3 : Fin 6)) = canonicalInput29942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1267 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1267 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29942 hH))).trans (reductionSound1267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput135 (4 : Fin 6)) = canonicalInput29948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1272 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29948 hH))).trans (reductionSound1272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput135 (5 : Fin 6)) = canonicalInput29949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection768 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput135 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection768 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29949 hH))).trans (reductionSound768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput135 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-2880, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row135) ![reductionProjection1187, reductionProjection1271, reductionProjection1245, reductionProjection1267, reductionProjection1272, reductionProjection768]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1000 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, -2, 1, 3]]

theorem rowSound1000 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1000) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1000 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1000 H]
  have hshape : boundaryInput1000 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1000 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 144, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1507, oldProjection1507, reductionProjection1293, reductionProjection1293, reductionProjection1299, oldProjection2876] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1000 (0 : Fin 6)) = canonicalInput30143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1507 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30143 hH))).trans (oldProjectionSound1507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1000 (1 : Fin 6)) = canonicalInput31162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1507 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31162 hH))).trans (oldProjectionSound1507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1000 (2 : Fin 6)) = canonicalInput31209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31209 hH))).trans (reductionSound1293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1000 (3 : Fin 6)) = canonicalInput31231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31231 hH))).trans (reductionSound1293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1000 (4 : Fin 6)) = canonicalInput31233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1299 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1299 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31233 hH))).trans (reductionSound1299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1000 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9837 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2876 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1000 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9837 hH))).trans (oldProjectionSound2876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1000 (j : Fin 6)))
    1440 1440 ![1440, 1440, 144, 144, 1440, 720] ![-1440, -1440, -14400, -14400, -1440, -2880] (extendRow Arithmetic.row1000) ![oldProjection1507, oldProjection1507, reductionProjection1293, reductionProjection1293, reductionProjection1299, oldProjection2876]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1001 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, -2, 1, 3]]

theorem rowSound1001 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1001) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1001 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1001 H]
  have hshape : boundaryInput1001 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1001 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 720, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1508, oldProjection1508, reductionProjection1297, reductionProjection1297, reductionProjection1302, reductionProjection817] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1001 (0 : Fin 6)) = canonicalInput30145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1508 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1508 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30145 hH))).trans (oldProjectionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1001 (1 : Fin 6)) = canonicalInput31164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1508 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1508 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31164 hH))).trans (oldProjectionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1001 (2 : Fin 6)) = canonicalInput31220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31220 hH))).trans (reductionSound1297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1001 (3 : Fin 6)) = canonicalInput31236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31236 hH))).trans (reductionSound1297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1001 (4 : Fin 6)) = canonicalInput31237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1302 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1302 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31237 hH))).trans (reductionSound1302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1001 (5 : Fin 6)) = canonicalInput31238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection817 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1001 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection817 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31238 hH))).trans (reductionSound817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1001 (j : Fin 6)))
    288 1440 ![720, 720, 720, 720, 1440, 360] ![-576, -576, -576, -576, -288, -1152] (extendRow Arithmetic.row1001) ![oldProjection1508, oldProjection1508, reductionProjection1297, reductionProjection1297, reductionProjection1302, reductionProjection817]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1002 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-2, -2, 1, 3]]

theorem rowSound1002 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1002) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1002 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1002 H]
  have hshape : boundaryInput1002 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1002 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1506, oldProjection1506, reductionProjection1295, reductionProjection1291, reductionProjection1297, oldProjection2875] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1002 (0 : Fin 6)) = canonicalInput30144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1506 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1506 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30144 hH))).trans (oldProjectionSound1506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1002 (1 : Fin 6)) = canonicalInput31163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1506 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1506 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31163 hH))).trans (oldProjectionSound1506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1002 (2 : Fin 6)) = canonicalInput31218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1295 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31218 hH))).trans (reductionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1002 (3 : Fin 6)) = canonicalInput31235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1291 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1291 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31235 hH))).trans (reductionSound1291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1002 (4 : Fin 6)) = canonicalInput31236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31236 hH))).trans (reductionSound1297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1002 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9846 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2875 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1002 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9846 hH))).trans (oldProjectionSound2875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1002 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 720, 1440] ![-1440, -1440, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row1002) ![oldProjection1506, oldProjection1506, reductionProjection1295, reductionProjection1291, reductionProjection1297, oldProjection2875]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1003 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -2, 1, 3]]

theorem rowSound1003 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1003) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1003 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1003 H]
  have hshape : boundaryInput1003 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1003 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 288, 288, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1504, oldProjection1504, reductionProjection1289, reductionProjection1292, reductionProjection1293, oldProjection2873] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1003 (0 : Fin 6)) = canonicalInput30136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1504 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1504 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30136 hH))).trans (oldProjectionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1003 (1 : Fin 6)) = canonicalInput31155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1504 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1504 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31155 hH))).trans (oldProjectionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1003 (2 : Fin 6)) = canonicalInput31197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1289 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1289 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31197 hH))).trans (reductionSound1289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1003 (3 : Fin 6)) = canonicalInput31206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31206 hH))).trans (reductionSound1292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1003 (4 : Fin 6)) = canonicalInput31209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31209 hH))).trans (reductionSound1293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1003 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9816 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2873 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1003 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9816 hH))).trans (oldProjectionSound2873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1003 (j : Fin 6)))
    288 288 ![288, 288, 288, 288, 144, 288] ![-288, -288, -288, -288, -576, -288] (extendRow Arithmetic.row1003) ![oldProjection1504, oldProjection1504, reductionProjection1289, reductionProjection1292, reductionProjection1293, oldProjection2873]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1004 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 0, -2], ![-2, -2, 1, 3]]

theorem rowSound1004 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1004) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1004 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1004 H]
  have hshape : boundaryInput1004 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1004 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1503, oldProjection1503, reductionProjection1287, reductionProjection1287, reductionProjection1292, oldProjection2872] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1004 (0 : Fin 6)) = canonicalInput30134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1503 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1503 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30134 hH))).trans (oldProjectionSound1503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1004 (1 : Fin 6)) = canonicalInput31153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1503 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1503 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31153 hH))).trans (oldProjectionSound1503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1004 (2 : Fin 6)) = canonicalInput31195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1287 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31195 hH))).trans (reductionSound1287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1004 (3 : Fin 6)) = canonicalInput31204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1287 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31204 hH))).trans (reductionSound1287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1004 (4 : Fin 6)) = canonicalInput31206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31206 hH))).trans (reductionSound1292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1004 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9809 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2872 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1004 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9809 hH))).trans (oldProjectionSound2872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1004 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 288, 720] ![-1440, -1440, -7200, -7200, -7200, -2880] (extendRow Arithmetic.row1004) ![oldProjection1503, oldProjection1503, reductionProjection1287, reductionProjection1287, reductionProjection1292, oldProjection2872]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput436 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 1, 3]]

theorem rowSound436 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 436) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row436 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row436 H]
  have hshape : boundaryInput436 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput436 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 144, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1065, reductionProjection1065, reductionProjection1310, reductionProjection1314, reductionProjection1293, reductionProjection472] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput436 (0 : Fin 6)) = canonicalInput26861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26861 hH))).trans (reductionSound1065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput436 (1 : Fin 6)) = canonicalInput31150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31150 hH))).trans (reductionSound1065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput436 (2 : Fin 6)) = canonicalInput31247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1310 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1310 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31247 hH))).trans (reductionSound1310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput436 (3 : Fin 6)) = canonicalInput31261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31261 hH))).trans (reductionSound1314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput436 (4 : Fin 6)) = canonicalInput31268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31268 hH))).trans (reductionSound1293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput436 (5 : Fin 6)) = canonicalInput31269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection472 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput436 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection472 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31269 hH))).trans (reductionSound472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput436 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 144, 288] ![-288, -288, -288, -288, -2880, -1440] (extendRow Arithmetic.row436) ![reductionProjection1065, reductionProjection1065, reductionProjection1310, reductionProjection1314, reductionProjection1293, reductionProjection472]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput443 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2], ![-2, 1, -2, 3]]

theorem rowSound443 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 443) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row443 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row443 H]
  have hshape : boundaryInput443 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput443 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1347, reductionProjection1355, reductionProjection1355, reductionProjection1358, oldProjection3230, oldProjection3054] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput443 (0 : Fin 6)) = canonicalInput24294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1347 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1347 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24294 hH))).trans (reductionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput443 (1 : Fin 6)) = canonicalInput26728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1355 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1355 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26728 hH))).trans (reductionSound1355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput443 (2 : Fin 6)) = canonicalInput26825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1355 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1355 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26825 hH))).trans (reductionSound1355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput443 (3 : Fin 6)) = canonicalInput26830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1358 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1358 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26830 hH))).trans (reductionSound1358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput443 (4 : Fin 6)) = canonicalInput26834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26834 hH))).trans (oldProjectionSound3230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput443 (5 : Fin 6)) = canonicalInput26835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3054 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput443 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26835 hH))).trans (oldProjectionSound3054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput443 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 288, 1440, 1440] ![-1440, -7200, -7200, -7200, -1440, -1440] (extendRow Arithmetic.row443) ![reductionProjection1347, reductionProjection1355, reductionProjection1355, reductionProjection1358, oldProjection3230, oldProjection3054]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

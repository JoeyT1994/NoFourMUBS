import NoFourMUBs.Step2.SOS.Canonical117
import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions180
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions311
import NoFourMUBs.Step2.SOS.Reductions325
import NoFourMUBs.Step2.SOS.Reductions326
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions357
import NoFourMUBs.Step2.SOS.Reductions359
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions379

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput432 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 2, -3, 2]]

theorem rowSound432 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 432) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row432 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row432 H]
  have hshape : boundaryInput432 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput432 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9975, reductionProjection9976, reductionProjection9958, reductionProjection9958, reductionProjection8641, reductionProjection12105] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput432 (0 : Fin 6)) = canonicalInput24107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9975 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9975 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24107 hH))).trans (reductionSound9975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput432 (1 : Fin 6)) = canonicalInput25546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25546 hH))).trans (reductionSound9976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput432 (2 : Fin 6)) = canonicalInput25784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25784 hH))).trans (reductionSound9958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput432 (3 : Fin 6)) = canonicalInput25793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25793 hH))).trans (reductionSound9958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput432 (4 : Fin 6)) = canonicalInput25796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8641 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8641 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25796 hH))).trans (reductionSound8641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput432 (5 : Fin 6)) = canonicalInput25798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12105 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput432 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12105 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25798 hH))).trans (reductionSound12105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput432 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-1440, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row432) ![reductionProjection9975, reductionProjection9976, reductionProjection9958, reductionProjection9958, reductionProjection8641, reductionProjection12105]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput433 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]

theorem rowSound433 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 433) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row433 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row433 H]
  have hshape : boundaryInput433 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput433 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10435, reductionProjection10437, reductionProjection10440, reductionProjection9958, reductionProjection8577, reductionProjection12112] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput433 (0 : Fin 6)) = canonicalInput24106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10435 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24106 hH))).trans (reductionSound10435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput433 (1 : Fin 6)) = canonicalInput25545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10437 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10437 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25545 hH))).trans (reductionSound10437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput433 (2 : Fin 6)) = canonicalInput25780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10440 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10440 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25780 hH))).trans (reductionSound10440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput433 (3 : Fin 6)) = canonicalInput25786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9958 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25786 hH))).trans (reductionSound9958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput433 (4 : Fin 6)) = canonicalInput25787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8577 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8577 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25787 hH))).trans (reductionSound8577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput433 (5 : Fin 6)) = canonicalInput25789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12112 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput433 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12112 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25789 hH))).trans (reductionSound12112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput433 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 720] ![-1440, -1440, -1440, -1440, -7200, -2880] (extendRow Arithmetic.row433) ![reductionProjection10435, reductionProjection10437, reductionProjection10440, reductionProjection9958, reductionProjection8577, reductionProjection12112]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1243 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]

theorem rowSound1243 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1243) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1243 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1243 H]
  have hshape : boundaryInput1243 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1243 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10406, reductionProjection10407, reductionProjection10404, reductionProjection5777, reductionProjection12112, oldProjection3077] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1243 (0 : Fin 6)) = canonicalInput27871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10406 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27871 hH))).trans (reductionSound10406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1243 (1 : Fin 6)) = canonicalInput29392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10407 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10407 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29392 hH))).trans (reductionSound10407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1243 (2 : Fin 6)) = canonicalInput29584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10404 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10404 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29584 hH))).trans (reductionSound10404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1243 (3 : Fin 6)) = canonicalInput29670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5777 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29670 hH))).trans (reductionSound5777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1243 (4 : Fin 6)) = canonicalInput29675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12112 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12112 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29675 hH))).trans (reductionSound12112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1243 (5 : Fin 6)) = canonicalInput29676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1243 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29676 hH))).trans (oldProjectionSound3077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1243 (j : Fin 6)))
    288 1440 ![1440, 1440, 720, 1440, 720, 1440] ![-288, -288, -576, -288, -576, -288] (extendRow Arithmetic.row1243) ![reductionProjection10406, reductionProjection10407, reductionProjection10404, reductionProjection5777, reductionProjection12112, oldProjection3077]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput191 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]

theorem rowSound191 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 191) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row191 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row191 H]
  have hshape : boundaryInput191 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput191 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11509, reductionProjection11825, reductionProjection12159, reductionProjection10446, reductionProjection8608, reductionProjection12131] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput191 (0 : Fin 6)) = canonicalInput17232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11509 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11509 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17232 hH))).trans (reductionSound11509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput191 (1 : Fin 6)) = canonicalInput25475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11825 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11825 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25475 hH))).trans (reductionSound11825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput191 (2 : Fin 6)) = canonicalInput25864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12159 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12159 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25864 hH))).trans (reductionSound12159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput191 (3 : Fin 6)) = canonicalInput25990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10446 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10446 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25990 hH))).trans (reductionSound10446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput191 (4 : Fin 6)) = canonicalInput25996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8608 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8608 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25996 hH))).trans (reductionSound8608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput191 (5 : Fin 6)) = canonicalInput25997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12131 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput191 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12131 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25997 hH))).trans (reductionSound12131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput191 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row191) ![reductionProjection11509, reductionProjection11825, reductionProjection12159, reductionProjection10446, reductionProjection8608, reductionProjection12131]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput197 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]

theorem rowSound197 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 197) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row197 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row197 H]
  have hshape : boundaryInput197 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput197 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection11445, reductionProjection11445, reductionProjection12159, reductionProjection10448, reductionProjection8553, reductionProjection12105] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput197 (0 : Fin 6)) = canonicalInput17117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11445 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17117 hH))).trans (reductionSound11445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput197 (1 : Fin 6)) = canonicalInput25406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11445 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25406 hH))).trans (reductionSound11445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput197 (2 : Fin 6)) = canonicalInput25624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12159 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12159 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25624 hH))).trans (reductionSound12159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput197 (3 : Fin 6)) = canonicalInput25673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10448 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10448 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25673 hH))).trans (reductionSound10448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput197 (4 : Fin 6)) = canonicalInput25681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8553 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8553 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25681 hH))).trans (reductionSound8553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput197 (5 : Fin 6)) = canonicalInput25682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12105 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput197 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12105 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25682 hH))).trans (reductionSound12105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput197 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-288, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row197) ![reductionProjection11445, reductionProjection11445, reductionProjection12159, reductionProjection10448, reductionProjection8553, reductionProjection12105]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput215 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]

theorem rowSound215 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 215) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row215 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row215 H]
  have hshape : boundaryInput215 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput215 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 144, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7439, reductionProjection11819, reductionProjection12158, reductionProjection11803, reductionProjection10664, reductionProjection11906] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput215 (0 : Fin 6)) = canonicalInput7873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7439 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7873 hH))).trans (reductionSound7439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput215 (1 : Fin 6)) = canonicalInput20774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11819 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11819 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20774 hH))).trans (reductionSound11819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput215 (2 : Fin 6)) = canonicalInput21022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12158 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12158 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21022 hH))).trans (reductionSound12158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput215 (3 : Fin 6)) = canonicalInput21026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11803 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11803 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21026 hH))).trans (reductionSound11803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput215 (4 : Fin 6)) = canonicalInput21029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10664 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21029 hH))).trans (reductionSound10664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput215 (5 : Fin 6)) = canonicalInput21030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11906 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput215 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21030 hH))).trans (reductionSound11906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput215 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 144, 288, 288] ![-7200, -1440, -1440, -14400, -7200, -7200] (extendRow Arithmetic.row215) ![reductionProjection7439, reductionProjection11819, reductionProjection12158, reductionProjection11803, reductionProjection10664, reductionProjection11906]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput344 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -1, 4, -3]]

theorem rowSound344 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 344) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row344 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row344 H]
  have hshape : boundaryInput344 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput344 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6816, reductionProjection6838, reductionProjection12155, reductionProjection6753, reductionProjection8645, reductionProjection6808] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput344 (0 : Fin 6)) = canonicalInput7660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6816 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6816 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7660 hH))).trans (reductionSound6816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput344 (1 : Fin 6)) = canonicalInput20754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6838 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20754 hH))).trans (reductionSound6838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput344 (2 : Fin 6)) = canonicalInput20930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12155 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20930 hH))).trans (reductionSound12155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput344 (3 : Fin 6)) = canonicalInput20974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6753 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6753 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20974 hH))).trans (reductionSound6753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput344 (4 : Fin 6)) = canonicalInput20975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8645 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8645 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20975 hH))).trans (reductionSound8645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput344 (5 : Fin 6)) = canonicalInput20976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6808 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput344 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6808 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20976 hH))).trans (reductionSound6808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput344 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row344) ![reductionProjection6816, reductionProjection6838, reductionProjection12155, reductionProjection6753, reductionProjection8645, reductionProjection6808]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput355 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![0, 2, -4, 2]]

theorem rowSound355 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 355) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row355 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row355 H]
  have hshape : boundaryInput355 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput355 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 72, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6516, reductionProjection6508, reductionProjection12156, reductionProjection2606, reductionProjection6522, reductionProjection8473] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput355 (0 : Fin 6)) = canonicalInput7490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6516 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6516 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7490 hH))).trans (reductionSound6516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput355 (1 : Fin 6)) = canonicalInput20729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6508 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6508 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20729 hH))).trans (reductionSound6508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput355 (2 : Fin 6)) = canonicalInput20871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12156 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12156 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20871 hH))).trans (reductionSound12156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput355 (3 : Fin 6)) = canonicalInput20896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2606 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20896 hH))).trans (reductionSound2606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput355 (4 : Fin 6)) = canonicalInput20897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6522 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20897 hH))).trans (reductionSound6522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput355 (5 : Fin 6)) = canonicalInput20898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8473 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput355 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8473 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20898 hH))).trans (reductionSound8473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput355 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 72, 1440, 288] ![-7200, -7200, -1440, -28800, -1440, -7200] (extendRow Arithmetic.row355) ![reductionProjection6516, reductionProjection6508, reductionProjection12156, reductionProjection2606, reductionProjection6522, reductionProjection8473]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

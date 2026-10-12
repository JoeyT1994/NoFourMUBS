import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions165
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions279
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions281
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical296
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput414 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![1, -2, 3, -2]]

theorem rowSound414 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 414) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row414 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row414 H]
  have hshape : boundaryInput414 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput414 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 288, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5294, reductionProjection8965, oldProjection2189, reductionProjection5357, oldProjection3132, reductionProjection5359] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput414 (0 : Fin 6)) = canonicalInput24856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5294 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5294 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24856 hH))).trans (reductionSound5294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput414 (1 : Fin 6)) = canonicalInput28475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28475 hH))).trans (reductionSound8965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput414 (2 : Fin 6)) = canonicalInput29420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2189 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2189 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29420 hH))).trans (oldProjectionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput414 (3 : Fin 6)) = canonicalInput29522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5357 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5357 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29522 hH))).trans (reductionSound5357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput414 (4 : Fin 6)) = canonicalInput29539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29539 hH))).trans (oldProjectionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput414 (5 : Fin 6)) = canonicalInput29540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5359 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput414 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5359 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29540 hH))).trans (reductionSound5359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput414 (j : Fin 6)))
    1440 1440 ![360, 288, 288, 1440, 288, 1440] ![-5760, -7200, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row414) ![reductionProjection5294, reductionProjection8965, oldProjection2189, reductionProjection5357, oldProjection3132, reductionProjection5359]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput415 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]

theorem rowSound415 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 415) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row415 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row415 H]
  have hshape : boundaryInput415 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput415 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5291, reductionProjection8967, oldProjection2228, reductionProjection5355, reductionProjection6947, reductionProjection5357] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput415 (0 : Fin 6)) = canonicalInput24854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5291 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5291 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24854 hH))).trans (reductionSound5291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput415 (1 : Fin 6)) = canonicalInput28463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8967 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8967 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28463 hH))).trans (reductionSound8967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput415 (2 : Fin 6)) = canonicalInput29418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2228 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29418 hH))).trans (oldProjectionSound2228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput415 (3 : Fin 6)) = canonicalInput29511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5355 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5355 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29511 hH))).trans (reductionSound5355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput415 (4 : Fin 6)) = canonicalInput29520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29520 hH))).trans (reductionSound6947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput415 (5 : Fin 6)) = canonicalInput29522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5357 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput415 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5357 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29522 hH))).trans (reductionSound5357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput415 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row415) ![reductionProjection5291, reductionProjection8967, oldProjection2228, reductionProjection5355, reductionProjection6947, reductionProjection5357]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1063 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 2, -2]]

theorem rowSound1063 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1063) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1063 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1063 H]
  have hshape : boundaryInput1063 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1063 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8935, reductionProjection5435, reductionProjection8986, reductionProjection8988, reductionProjection8711, oldProjection3031] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1063 (0 : Fin 6)) = canonicalInput27766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8935 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27766 hH))).trans (reductionSound8935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1063 (1 : Fin 6)) = canonicalInput28763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5435 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5435 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28763 hH))).trans (reductionSound5435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1063 (2 : Fin 6)) = canonicalInput29002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8986 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8986 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29002 hH))).trans (reductionSound8986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1063 (3 : Fin 6)) = canonicalInput29134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8988 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8988 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29134 hH))).trans (reductionSound8988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1063 (4 : Fin 6)) = canonicalInput29142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29142 hH))).trans (reductionSound8711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1063 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9500 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3031 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1063 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3031 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9500 hH))).trans (oldProjectionSound3031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1063 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 288, 720] ![-288, -288, -288, -288, -1440, -576] (extendRow Arithmetic.row1063) ![reductionProjection8935, reductionProjection5435, reductionProjection8986, reductionProjection8988, reductionProjection8711, oldProjection3031]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1067 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 2, -3]]

theorem rowSound1067 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1067) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1067 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1067 H]
  have hshape : boundaryInput1067 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1067 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8939, oldProjection1716, reductionProjection8990, reductionProjection8990, oldProjection3237, oldProjection3037] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1067 (0 : Fin 6)) = canonicalInput27798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27798 hH))).trans (reductionSound8939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1067 (1 : Fin 6)) = canonicalInput28793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1716 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1716 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28793 hH))).trans (oldProjectionSound1716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1067 (2 : Fin 6)) = canonicalInput29204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8990 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29204 hH))).trans (reductionSound8990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1067 (3 : Fin 6)) = canonicalInput29262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8990 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29262 hH))).trans (reductionSound8990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1067 (4 : Fin 6)) = canonicalInput29266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3237 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3237 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29266 hH))).trans (oldProjectionSound3237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1067 (5 : Fin 6)) = canonicalInput29267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3037 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1067 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3037 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29267 hH))).trans (oldProjectionSound3037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1067 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1067) ![reductionProjection8939, oldProjection1716, reductionProjection8990, reductionProjection8990, oldProjection3237, oldProjection3037]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1130 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![2, -1, 1, -2]]

theorem rowSound1130 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1130) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1130 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1130 H]
  have hshape : boundaryInput1130 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1130 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 720, 1440, 720, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8962, reductionProjection3141, reductionProjection3141, reductionProjection8958, reductionProjection8959, reductionProjection8013] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1130 (0 : Fin 6)) = canonicalInput27700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8962 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8962 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27700 hH))).trans (reductionSound8962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1130 (1 : Fin 6)) = canonicalInput28695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3141 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28695 hH))).trans (reductionSound3141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1130 (2 : Fin 6)) = canonicalInput28839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3141 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28839 hH))).trans (reductionSound3141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1130 (3 : Fin 6)) = canonicalInput28868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8958 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8958 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28868 hH))).trans (reductionSound8958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1130 (4 : Fin 6)) = canonicalInput28870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8959 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8959 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28870 hH))).trans (reductionSound8959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1130 (5 : Fin 6)) = canonicalInput28871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1130 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28871 hH))).trans (reductionSound8013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1130 (j : Fin 6)))
    480 1440 ![1440, 720, 720, 1440, 720, 480] ![-480, -960, -960, -480, -960, -1440] (extendRow Arithmetic.row1130) ![reductionProjection8962, reductionProjection3141, reductionProjection3141, reductionProjection8958, reductionProjection8959, reductionProjection8013]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput224 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -2, -1, 2]]

theorem rowSound224 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 224) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row224 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row224 H]
  have hshape : boundaryInput224 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput224 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 360, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8950, reductionProjection9000, reductionProjection8997, reductionProjection8998, reductionProjection5429, reductionProjection8729] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput224 (0 : Fin 6)) = canonicalInput27921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8950 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8950 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27921 hH))).trans (reductionSound8950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput224 (1 : Fin 6)) = canonicalInput29717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9000 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29717 hH))).trans (reductionSound9000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput224 (2 : Fin 6)) = canonicalInput29914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8997 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8997 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29914 hH))).trans (reductionSound8997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput224 (3 : Fin 6)) = canonicalInput29953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8998 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8998 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29953 hH))).trans (reductionSound8998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput224 (4 : Fin 6)) = canonicalInput29954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5429 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29954 hH))).trans (reductionSound5429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput224 (5 : Fin 6)) = canonicalInput29955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8729 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput224 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29955 hH))).trans (reductionSound8729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput224 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 360, 1440, 1440] ![-1440, -2880, -1440, -5760, -1440, -1440] (extendRow Arithmetic.row224) ![reductionProjection8950, reductionProjection9000, reductionProjection8997, reductionProjection8998, reductionProjection5429, reductionProjection8729]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput257 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 0, 4, -4]]

theorem rowSound257 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 257) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row257 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row257 H]
  have hshape : boundaryInput257 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput257 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 720, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8953, reductionProjection9001, reductionProjection9005, reductionProjection9005, reductionProjection8732, oldProjection3263] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput257 (0 : Fin 6)) = canonicalInput27869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8953 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27869 hH))).trans (reductionSound8953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput257 (1 : Fin 6)) = canonicalInput29390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9001 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9001 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29390 hH))).trans (reductionSound9001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput257 (2 : Fin 6)) = canonicalInput29581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9005 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29581 hH))).trans (reductionSound9005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput257 (3 : Fin 6)) = canonicalInput29665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9005 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29665 hH))).trans (reductionSound9005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput257 (4 : Fin 6)) = canonicalInput29667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8732 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8732 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29667 hH))).trans (reductionSound8732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput257 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9592 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3263 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput257 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3263 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9592 hH))).trans (oldProjectionSound3263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput257 (j : Fin 6)))
    288 1440 ![144, 720, 1440, 1440, 288, 288] ![-2880, -576, -288, -288, -1440, -1440] (extendRow Arithmetic.row257) ![reductionProjection8953, reductionProjection9001, reductionProjection9005, reductionProjection9005, reductionProjection8732, oldProjection3263]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput514 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 1, -2], ![2, -1, 1, -2]]

theorem rowSound514 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 514) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row514 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row514 H]
  have hshape : boundaryInput514 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput514 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 240, 288, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5879, reductionProjection5879, reductionProjection9007, reductionProjection5876, reductionProjection8886, reductionProjection5875] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput514 (0 : Fin 6)) = canonicalInput24776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5879 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24776 hH))).trans (reductionSound5879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput514 (1 : Fin 6)) = canonicalInput28085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5879 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5879 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28085 hH))).trans (reductionSound5879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput514 (2 : Fin 6)) = canonicalInput28240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9007 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28240 hH))).trans (reductionSound9007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput514 (3 : Fin 6)) = canonicalInput28366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5876 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28366 hH))).trans (reductionSound5876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput514 (4 : Fin 6)) = canonicalInput28370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8886 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28370 hH))).trans (reductionSound8886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput514 (5 : Fin 6)) = canonicalInput28372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5875 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput514 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5875 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28372 hH))).trans (reductionSound5875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput514 (j : Fin 6)))
    720 1440 ![1440, 1440, 240, 288, 144, 1440] ![-720, -720, -4320, -3600, -7200, -720] (extendRow Arithmetic.row514) ![reductionProjection5879, reductionProjection5879, reductionProjection9007, reductionProjection5876, reductionProjection8886, reductionProjection5875]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

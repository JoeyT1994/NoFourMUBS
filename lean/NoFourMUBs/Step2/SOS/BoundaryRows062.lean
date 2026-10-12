import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions290

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput863 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, -1, 0]]

theorem rowSound863 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 863) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row863 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row863 H]
  have hshape : boundaryInput863 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput863 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 36, 36, 480, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9252, oldProjection2072, oldProjection2072, reductionProjection8013, reductionProjection8092, reductionProjection8975] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput863 (0 : Fin 6)) = canonicalInput27702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9252 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27702 hH))).trans (reductionSound9252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput863 (1 : Fin 6)) = canonicalInput28697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2072 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28697 hH))).trans (oldProjectionSound2072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput863 (2 : Fin 6)) = canonicalInput28841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2072 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28841 hH))).trans (oldProjectionSound2072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput863 (3 : Fin 6)) = canonicalInput28872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28872 hH))).trans (reductionSound8013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput863 (4 : Fin 6)) = canonicalInput28873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8092 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8092 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28873 hH))).trans (reductionSound8092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput863 (5 : Fin 6)) = canonicalInput28874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8975 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput863 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8975 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28874 hH))).trans (reductionSound8975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput863 (j : Fin 6)))
    180 1440 ![720, 36, 36, 480, 720, 1440] ![-360, -7200, -7200, -540, -360, -180] (extendRow Arithmetic.row863) ![reductionProjection9252, oldProjection2072, oldProjection2072, reductionProjection8013, reductionProjection8092, reductionProjection8975]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1124 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, 2, -2]]

theorem rowSound1124 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1124) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1124 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1124 H]
  have hshape : boundaryInput1124 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1124 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 1440, 144, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9247, reductionProjection9247, reductionProjection9269, reductionProjection8969, oldProjection3040, reductionProjection8014] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1124 (0 : Fin 6)) = canonicalInput27666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9247 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9247 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27666 hH))).trans (reductionSound9247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1124 (1 : Fin 6)) = canonicalInput28164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9247 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9247 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28164 hH))).trans (reductionSound9247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1124 (2 : Fin 6)) = canonicalInput28499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9269 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28499 hH))).trans (reductionSound9269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1124 (3 : Fin 6)) = canonicalInput28542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8969 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8969 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28542 hH))).trans (reductionSound8969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1124 (4 : Fin 6)) = canonicalInput28546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3040 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3040 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28546 hH))).trans (oldProjectionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1124 (5 : Fin 6)) = canonicalInput28547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8014 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1124 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8014 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28547 hH))).trans (reductionSound8014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1124 (j : Fin 6)))
    288 1440 ![1440, 1440, 360, 1440, 144, 144] ![-288, -288, -1152, -288, -2880, -2880] (extendRow Arithmetic.row1124) ![reductionProjection9247, reductionProjection9247, reductionProjection9269, reductionProjection8969, oldProjection3040, reductionProjection8014]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1125 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -1, 1, -1], ![0, 1, 2, -3]]

theorem rowSound1125 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1125) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1125 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1125 H]
  have hshape : boundaryInput1125 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1125 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9248, reductionProjection9248, reductionProjection9271, reductionProjection8971, oldProjection2976, reductionProjection8014] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1125 (0 : Fin 6)) = canonicalInput27667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9248 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27667 hH))).trans (reductionSound9248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1125 (1 : Fin 6)) = canonicalInput28165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9248 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9248 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28165 hH))).trans (reductionSound9248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1125 (2 : Fin 6)) = canonicalInput28500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9271 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9271 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28500 hH))).trans (reductionSound9271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1125 (3 : Fin 6)) = canonicalInput28543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8971 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8971 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28543 hH))).trans (reductionSound8971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1125 (4 : Fin 6)) = canonicalInput28549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28549 hH))).trans (oldProjectionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1125 (5 : Fin 6)) = canonicalInput28550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8014 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1125 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8014 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28550 hH))).trans (reductionSound8014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1125 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 1440, 144] ![-1440, -1440, -2880, -1440, -1440, -14400] (extendRow Arithmetic.row1125) ![reductionProjection9248, reductionProjection9248, reductionProjection9271, reductionProjection8971, oldProjection2976, reductionProjection8014]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1128 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 2, 1, -1]]

theorem rowSound1128 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1128) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1128 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1128 H]
  have hshape : boundaryInput1128 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1128 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9260, reductionProjection3872, reductionProjection3872, reductionProjection9259, reductionProjection9272, reductionProjection8011] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1128 (0 : Fin 6)) = canonicalInput27706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9260 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9260 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27706 hH))).trans (reductionSound9260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1128 (1 : Fin 6)) = canonicalInput28700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28700 hH))).trans (reductionSound3872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1128 (2 : Fin 6)) = canonicalInput28844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28844 hH))).trans (reductionSound3872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1128 (3 : Fin 6)) = canonicalInput28884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9259 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28884 hH))).trans (reductionSound9259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1128 (4 : Fin 6)) = canonicalInput28885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9272 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9272 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28885 hH))).trans (reductionSound9272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1128 (5 : Fin 6)) = canonicalInput28886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8011 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1128 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8011 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28886 hH))).trans (reductionSound8011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1128 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1128) ![reductionProjection9260, reductionProjection3872, reductionProjection3872, reductionProjection9259, reductionProjection9272, reductionProjection8011]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1153 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, 0, 3, -3]]

theorem rowSound1153 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1153) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1153 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1153 H]
  have hshape : boundaryInput1153 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1153 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9254, reductionProjection9278, reductionProjection9276, reductionProjection9000, reductionProjection8997, reductionProjection7498] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1153 (0 : Fin 6)) = canonicalInput27910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9254 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9254 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27910 hH))).trans (reductionSound9254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1153 (1 : Fin 6)) = canonicalInput29685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9278 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29685 hH))).trans (reductionSound9278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1153 (2 : Fin 6)) = canonicalInput29902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9276 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9276 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29902 hH))).trans (reductionSound9276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1153 (3 : Fin 6)) = canonicalInput29913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9000 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29913 hH))).trans (reductionSound9000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1153 (4 : Fin 6)) = canonicalInput29915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8997 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8997 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29915 hH))).trans (reductionSound8997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1153 (5 : Fin 6)) = canonicalInput29916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7498 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1153 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7498 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29916 hH))).trans (reductionSound7498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1153 (j : Fin 6)))
    288 1440 ![1440, 720, 1440, 720, 1440, 1440] ![-288, -576, -288, -576, -288, -288] (extendRow Arithmetic.row1153) ![reductionProjection9254, reductionProjection9278, reductionProjection9276, reductionProjection9000, reductionProjection8997, reductionProjection7498]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1292 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, 0, -2], ![0, -3, 3, 0]]

theorem rowSound1292 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1292) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1292 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1292 H]
  have hshape : boundaryInput1292 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1292 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 72, 288, 288, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7321, reductionProjection7325, reductionProjection9261, reductionProjection5345, reductionProjection9116, reductionProjection6670] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1292 (0 : Fin 6)) = canonicalInput27827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7321 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7321 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27827 hH))).trans (reductionSound7321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1292 (1 : Fin 6)) = canonicalInput29348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7325 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29348 hH))).trans (reductionSound7325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1292 (2 : Fin 6)) = canonicalInput29429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9261 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29429 hH))).trans (reductionSound9261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1292 (3 : Fin 6)) = canonicalInput29470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5345 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29470 hH))).trans (reductionSound5345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1292 (4 : Fin 6)) = canonicalInput29475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9116 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9116 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29475 hH))).trans (reductionSound9116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1292 (5 : Fin 6)) = canonicalInput29476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6670 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1292 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6670 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29476 hH))).trans (reductionSound6670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1292 (j : Fin 6)))
    1440 1440 ![720, 72, 288, 288, 720, 720] ![-2880, -28800, -7200, -7200, -2880, -2880] (extendRow Arithmetic.row1292) ![reductionProjection7321, reductionProjection7325, reductionProjection9261, reductionProjection5345, reductionProjection9116, reductionProjection6670]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput80 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![-3, 2, 1], ![3, -2, -1]]

theorem rowSound80 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 80) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row80 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row80 H]
  have hshape : boundaryInput80 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput80 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![24, 24, 480, 96, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection388, reductionProjection388, reductionProjection9307, oldProjection1421, reductionProjection40, oldProjection1426] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput80 (0 : Fin 6)) = canonicalInput18647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection388 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection388 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18647 hH))).trans (reductionSound388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput80 (1 : Fin 6)) = canonicalInput26388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection388 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection388 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26388 hH))).trans (reductionSound388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput80 (2 : Fin 6)) = canonicalInput26432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9307 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9307 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26432 hH))).trans (reductionSound9307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput80 (3 : Fin 6)) = canonicalInput26484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26484 hH))).trans (oldProjectionSound1421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput80 (4 : Fin 6)) = canonicalInput26492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection40 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection40 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26492 hH))).trans (reductionSound40 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput80 (5 : Fin 6)) = canonicalInput26493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1426 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput80 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1426 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26493 hH))).trans (oldProjectionSound1426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput80 (j : Fin 6)))
    480 480 ![24, 24, 480, 96, 96, 480] ![-9600, -9600, -480, -2400, -2400, -480] (extendRow Arithmetic.row80) ![reductionProjection388, reductionProjection388, reductionProjection9307, oldProjection1421, reductionProjection40, oldProjection1426]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput479 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 3, 1, -2]]

theorem rowSound479 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 479) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row479 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row479 H]
  have hshape : boundaryInput479 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput479 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7886, reductionProjection7886, reductionProjection7886, reductionProjection1338, reductionProjection1119, reductionProjection9284] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput479 (0 : Fin 6)) = canonicalInput24759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7886 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24759 hH))).trans (reductionSound7886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput479 (1 : Fin 6)) = canonicalInput28069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7886 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28069 hH))).trans (reductionSound7886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput479 (2 : Fin 6)) = canonicalInput28217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7886 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28217 hH))).trans (reductionSound7886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput479 (3 : Fin 6)) = canonicalInput28249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1338 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28249 hH))).trans (reductionSound1338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput479 (4 : Fin 6)) = canonicalInput28251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1119 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1119 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28251 hH))).trans (reductionSound1119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput479 (5 : Fin 6)) = canonicalInput28252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9284 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput479 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9284 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28252 hH))).trans (reductionSound9284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput479 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 72] ![-1440, -1440, -1440, -1440, -1440, -28800] (extendRow Arithmetic.row479) ![reductionProjection7886, reductionProjection7886, reductionProjection7886, reductionProjection1338, reductionProjection1119, reductionProjection9284]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

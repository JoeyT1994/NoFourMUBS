import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions245
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions287

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput868 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -1, -1, 0]]

theorem rowSound868 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 868) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row868 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row868 H]
  have hshape : boundaryInput868 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput868 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 180, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9178, oldProjection2065, reductionProjection8056, reductionProjection8899, reductionProjection8073, reductionProjection8870] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput868 (0 : Fin 6)) = canonicalInput27740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9178 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9178 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27740 hH))).trans (reductionSound9178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput868 (1 : Fin 6)) = canonicalInput28734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28734 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput868 (2 : Fin 6)) = canonicalInput28942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8056 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28942 hH))).trans (reductionSound8056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput868 (3 : Fin 6)) = canonicalInput29055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8899 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8899 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29055 hH))).trans (reductionSound8899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput868 (4 : Fin 6)) = canonicalInput29061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8073 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8073 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29061 hH))).trans (reductionSound8073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput868 (5 : Fin 6)) = canonicalInput29062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8870 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput868 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29062 hH))).trans (reductionSound8870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput868 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 180, 288] ![-1440, -1440, -7200, -1440, -11520, -7200] (extendRow Arithmetic.row868) ![reductionProjection9178, oldProjection2065, reductionProjection8056, reductionProjection8899, reductionProjection8073, reductionProjection8870]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1155 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 0, -1], ![-1, 0, 3, -2]]

theorem rowSound1155 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1155) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1155 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1155 H]
  have hshape : boundaryInput1155 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1155 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 360, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9080, reductionProjection9098, reductionProjection9165, reductionProjection9077, reductionProjection9072, reductionProjection8084] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1155 (0 : Fin 6)) = canonicalInput27829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9080 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9080 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27829 hH))).trans (reductionSound9080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1155 (1 : Fin 6)) = canonicalInput29350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9098 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9098 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29350 hH))).trans (reductionSound9098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1155 (2 : Fin 6)) = canonicalInput29432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9165 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9165 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29432 hH))).trans (reductionSound9165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1155 (3 : Fin 6)) = canonicalInput29481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29481 hH))).trans (reductionSound9077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1155 (4 : Fin 6)) = canonicalInput29486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29486 hH))).trans (reductionSound9072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1155 (5 : Fin 6)) = canonicalInput29487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8084 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1155 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8084 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29487 hH))).trans (reductionSound8084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1155 (j : Fin 6)))
    1440 1440 ![288, 360, 1440, 1440, 288, 288] ![-7200, -5760, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row1155) ![reductionProjection9080, reductionProjection9098, reductionProjection9165, reductionProjection9077, reductionProjection9072, reductionProjection8084]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1189 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, -1, 0, -1], ![-1, -1, -1, 3]]

theorem rowSound1189 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1189) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1189 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1189 H]
  have hshape : boundaryInput1189 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1189 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2069, reductionProjection9092, reductionProjection9164, oldProjection3203, reductionProjection9078, reductionProjection9071] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1189 (0 : Fin 6)) = canonicalInput30162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2069 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2069 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30162 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1189 (1 : Fin 6)) = canonicalInput31305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9092 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9092 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31305 hH))).trans (reductionSound9092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1189 (2 : Fin 6)) = canonicalInput31334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9164 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9164 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31334 hH))).trans (reductionSound9164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1189 (3 : Fin 6)) = canonicalInput31390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3203 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3203 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31390 hH))).trans (oldProjectionSound3203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1189 (4 : Fin 6)) = canonicalInput31392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31392 hH))).trans (reductionSound9078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1189 (5 : Fin 6)) = canonicalInput31393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9071 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1189 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9071 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31393 hH))).trans (reductionSound9071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1189 (j : Fin 6)))
    1440 1440 ![144, 1440, 1440, 720, 288, 1440] ![-14400, -1440, -1440, -2880, -7200, -1440] (extendRow Arithmetic.row1189) ![oldProjection2069, reductionProjection9092, reductionProjection9164, oldProjection3203, reductionProjection9078, reductionProjection9071]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1210 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, -1, -1], ![-1, -1, 3, -1]]

theorem rowSound1210 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1210) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1210 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1210 H]
  have hshape : boundaryInput1210 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1210 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8016, oldProjection2539, oldProjection2539, reductionProjection8007, reductionProjection9164, reductionProjection4436] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1210 (0 : Fin 6)) = canonicalInput24870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8016 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8016 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24870 hH))).trans (reductionSound8016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1210 (1 : Fin 6)) = canonicalInput28750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2539 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28750 hH))).trans (oldProjectionSound2539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1210 (2 : Fin 6)) = canonicalInput29750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2539 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29750 hH))).trans (oldProjectionSound2539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1210 (3 : Fin 6)) = canonicalInput29791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8007 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29791 hH))).trans (reductionSound8007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1210 (4 : Fin 6)) = canonicalInput29804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9164 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9164 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29804 hH))).trans (reductionSound9164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1210 (5 : Fin 6)) = canonicalInput29805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4436 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1210 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4436 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29805 hH))).trans (reductionSound4436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1210 (j : Fin 6)))
    1440 1440 ![72, 288, 288, 1440, 1440, 1440] ![-28800, -7200, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row1210) ![reductionProjection8016, oldProjection2539, oldProjection2539, reductionProjection8007, reductionProjection9164, reductionProjection4436]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1279 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![1, -3, 2, 0]]

theorem rowSound1279 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1279) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1279 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1279 H]
  have hshape : boundaryInput1279 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1279 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 360, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7840, oldProjection1643, reductionProjection9044, reductionProjection5390, reductionProjection9180, reductionProjection7935] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1279 (0 : Fin 6)) = canonicalInput27805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7840 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7840 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27805 hH))).trans (reductionSound7840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1279 (1 : Fin 6)) = canonicalInput28802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1643 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1643 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28802 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1279 (2 : Fin 6)) = canonicalInput29287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9044 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9044 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29287 hH))).trans (reductionSound9044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1279 (3 : Fin 6)) = canonicalInput29304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5390 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5390 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29304 hH))).trans (reductionSound5390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1279 (4 : Fin 6)) = canonicalInput29305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9180 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29305 hH))).trans (reductionSound9180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1279 (5 : Fin 6)) = canonicalInput29306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7935 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1279 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29306 hH))).trans (reductionSound7935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1279 (j : Fin 6)))
    1440 1440 ![288, 360, 1440, 1440, 288, 1440] ![-7200, -5760, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1279) ![reductionProjection7840, oldProjection1643, reductionProjection9044, reductionProjection5390, reductionProjection9180, reductionProjection7935]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1326 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, -1, -1], ![0, -3, 2, 1]]

theorem rowSound1326 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1326) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1326 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1326 H]
  have hshape : boundaryInput1326 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1326 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 36] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1653, reductionProjection7865, reductionProjection9182, reductionProjection5552, reductionProjection7647, reductionProjection8053] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1326 (0 : Fin 6)) = canonicalInput30153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1653 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1653 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30153 hH))).trans (oldProjectionSound1653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1326 (1 : Fin 6)) = canonicalInput31296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7865 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31296 hH))).trans (reductionSound7865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1326 (2 : Fin 6)) = canonicalInput31325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9182 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9182 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31325 hH))).trans (reductionSound9182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1326 (3 : Fin 6)) = canonicalInput31361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5552 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5552 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31361 hH))).trans (reductionSound5552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1326 (4 : Fin 6)) = canonicalInput31364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31364 hH))).trans (reductionSound7647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1326 (5 : Fin 6)) = canonicalInput31365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8053 (Normalization.momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1326 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8053 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31365 hH))).trans (reductionSound8053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1326 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 36] ![-1440, -1440, -1440, -1440, -1440, -57600] (extendRow Arithmetic.row1326) ![oldProjection1653, reductionProjection7865, reductionProjection9182, reductionProjection5552, reductionProjection7647, reductionProjection8053]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1327 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![0, -3, 2, 1]]

theorem rowSound1327 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1327) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1327 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1327 H]
  have hshape : boundaryInput1327 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1327 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 720, 720, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1648, reductionProjection7993, reductionProjection9045, reductionProjection5641, reductionProjection9181, reductionProjection7990] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1327 (0 : Fin 6)) = canonicalInput30232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1648 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1648 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30232 hH))).trans (oldProjectionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1327 (1 : Fin 6)) = canonicalInput31732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7993 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7993 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31732 hH))).trans (reductionSound7993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1327 (2 : Fin 6)) = canonicalInput31737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9045 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9045 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31737 hH))).trans (reductionSound9045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1327 (3 : Fin 6)) = canonicalInput31738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5641 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5641 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31738 hH))).trans (reductionSound5641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1327 (4 : Fin 6)) = canonicalInput31739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9181 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9181 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31739 hH))).trans (reductionSound9181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1327 (5 : Fin 6)) = canonicalInput31740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7990 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1327 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31740 hH))).trans (reductionSound7990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1327 (j : Fin 6)))
    720 1440 ![144, 720, 720, 720, 288, 1440] ![-7200, -1440, -1440, -1440, -3600, -720] (extendRow Arithmetic.row1327) ![oldProjection1648, reductionProjection7993, reductionProjection9045, reductionProjection5641, reductionProjection9181, reductionProjection7990]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput484 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, -1, 0, -1], ![-1, 2, 2, -3]]

theorem rowSound484 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 484) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row484 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row484 H]
  have hshape : boundaryInput484 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput484 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8225, reductionProjection8225, reductionProjection8735, reductionProjection8224, reductionProjection7536, reductionProjection9199] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput484 (0 : Fin 6)) = canonicalInput24777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8225 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8225 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24777 hH))).trans (reductionSound8225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput484 (1 : Fin 6)) = canonicalInput28086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8225 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8225 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28086 hH))).trans (reductionSound8225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput484 (2 : Fin 6)) = canonicalInput28241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8735 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8735 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28241 hH))).trans (reductionSound8735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput484 (3 : Fin 6)) = canonicalInput28367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8224 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8224 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28367 hH))).trans (reductionSound8224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput484 (4 : Fin 6)) = canonicalInput28373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7536 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7536 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28373 hH))).trans (reductionSound7536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput484 (5 : Fin 6)) = canonicalInput28374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9199 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput484 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9199 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28374 hH))).trans (reductionSound9199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput484 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 720, 1440] ![-1440, -1440, -2880, -1440, -2880, -1440] (extendRow Arithmetic.row484) ![reductionProjection8225, reductionProjection8225, reductionProjection8735, reductionProjection8224, reductionProjection7536, reductionProjection9199]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

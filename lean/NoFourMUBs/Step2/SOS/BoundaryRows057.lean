import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions286

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1207 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]

theorem rowSound1207 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1207) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1207 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1207 H]
  have hshape : boundaryInput1207 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1207 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9060, reductionProjection9063, reductionProjection9064, reductionProjection8774, reductionProjection9037, reductionProjection7492] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1207 (0 : Fin 6)) = canonicalInput31871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9060 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31871 hH))).trans (reductionSound9060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1207 (1 : Fin 6)) = canonicalInput32099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9063 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9063 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32099 hH))).trans (reductionSound9063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1207 (2 : Fin 6)) = canonicalInput32103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9064 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32103 hH))).trans (reductionSound9064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1207 (3 : Fin 6)) = canonicalInput32109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8774 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8774 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32109 hH))).trans (reductionSound8774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1207 (4 : Fin 6)) = canonicalInput32110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9037 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9037 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32110 hH))).trans (reductionSound9037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1207 (5 : Fin 6)) = canonicalInput32111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7492 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1207 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7492 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32111 hH))).trans (reductionSound7492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1207 (j : Fin 6)))
    1440 1440 ![720, 288, 1440, 720, 1440, 1440] ![-2880, -7200, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row1207) ![reductionProjection9060, reductionProjection9063, reductionProjection9064, reductionProjection8774, reductionProjection9037, reductionProjection7492]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1306 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 1, 1, -3]]

theorem rowSound1306 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1306) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1306 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1306 H]
  have hshape : boundaryInput1306 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1306 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8187, reductionProjection8212, reductionProjection8171, reductionProjection8033, reductionProjection9082, reductionProjection8072] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1306 (0 : Fin 6)) = canonicalInput27853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8187 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8187 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27853 hH))).trans (reductionSound8187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1306 (1 : Fin 6)) = canonicalInput29374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8212 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8212 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29374 hH))).trans (reductionSound8212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1306 (2 : Fin 6)) = canonicalInput29562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8171 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8171 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29562 hH))).trans (reductionSound8171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1306 (3 : Fin 6)) = canonicalInput29605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8033 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8033 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29605 hH))).trans (reductionSound8033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1306 (4 : Fin 6)) = canonicalInput29614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9082 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9082 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29614 hH))).trans (reductionSound9082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1306 (5 : Fin 6)) = canonicalInput29615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8072 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1306 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29615 hH))).trans (reductionSound8072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1306 (j : Fin 6)))
    144 1440 ![720, 288, 1440, 1440, 1440, 1440] ![-288, -720, -144, -144, -144, -144] (extendRow Arithmetic.row1306) ![reductionProjection8187, reductionProjection8212, reductionProjection8171, reductionProjection8033, reductionProjection9082, reductionProjection8072]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1133 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 1, 2, -1]]

theorem rowSound1133 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1133) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1133 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1133 H]
  have hshape : boundaryInput1133 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1133 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 720, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9115, oldProjection1842, reductionProjection8899, reductionProjection9113, reductionProjection8898, reductionProjection8056] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1133 (0 : Fin 6)) = canonicalInput27760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9115 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9115 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27760 hH))).trans (reductionSound9115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1133 (1 : Fin 6)) = canonicalInput28757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1842 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1842 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28757 hH))).trans (oldProjectionSound1842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1133 (2 : Fin 6)) = canonicalInput28976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8899 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8899 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28976 hH))).trans (reductionSound8899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1133 (3 : Fin 6)) = canonicalInput29114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9113 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9113 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29114 hH))).trans (reductionSound9113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1133 (4 : Fin 6)) = canonicalInput29115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8898 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8898 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29115 hH))).trans (reductionSound8898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1133 (5 : Fin 6)) = canonicalInput29116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8056 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1133 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29116 hH))).trans (reductionSound8056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1133 (j : Fin 6)))
    288 1440 ![1440, 288, 1440, 720, 1440, 288] ![-288, -1440, -288, -576, -288, -1440] (extendRow Arithmetic.row1133) ![reductionProjection9115, oldProjection1842, reductionProjection8899, reductionProjection9113, reductionProjection8898, reductionProjection8056]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1298 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![0, 2, 1, -3]]

theorem rowSound1298 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1298) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1298 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1298 H]
  have hshape : boundaryInput1298 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1298 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 720, 720, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8134, reductionProjection8159, reductionProjection8180, reductionProjection7491, reductionProjection9090, reductionProjection7508] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1298 (0 : Fin 6)) = canonicalInput27846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8134 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8134 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27846 hH))).trans (reductionSound8134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1298 (1 : Fin 6)) = canonicalInput29367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8159 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8159 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29367 hH))).trans (reductionSound8159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1298 (2 : Fin 6)) = canonicalInput29555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8180 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8180 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29555 hH))).trans (reductionSound8180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1298 (3 : Fin 6)) = canonicalInput29589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7491 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7491 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29589 hH))).trans (reductionSound7491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1298 (4 : Fin 6)) = canonicalInput29595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9090 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9090 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29595 hH))).trans (reductionSound9090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1298 (5 : Fin 6)) = canonicalInput29596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7508 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1298 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7508 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29596 hH))).trans (reductionSound7508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1298 (j : Fin 6)))
    1440 1440 ![720, 1440, 720, 720, 720, 720] ![-2880, -1440, -2880, -2880, -2880, -2880] (extendRow Arithmetic.row1298) ![reductionProjection8134, reductionProjection8159, reductionProjection8180, reductionProjection7491, reductionProjection9090, reductionProjection7508]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1300 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![0, 2, 1, -3]]

theorem rowSound1300 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1300) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1300 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1300 H]
  have hshape : boundaryInput1300 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1300 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 720, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7311, reductionProjection7318, reductionProjection7307, reductionProjection9090, reductionProjection7303, reductionProjection7393] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1300 (0 : Fin 6)) = canonicalInput27848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7311 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7311 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27848 hH))).trans (reductionSound7311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1300 (1 : Fin 6)) = canonicalInput29369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7318 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29369 hH))).trans (reductionSound7318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1300 (2 : Fin 6)) = canonicalInput29557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7307 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7307 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29557 hH))).trans (reductionSound7307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1300 (3 : Fin 6)) = canonicalInput29595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9090 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9090 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29595 hH))).trans (reductionSound9090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1300 (4 : Fin 6)) = canonicalInput29599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7303 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7303 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29599 hH))).trans (reductionSound7303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1300 (5 : Fin 6)) = canonicalInput29600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7393 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1300 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29600 hH))).trans (reductionSound7393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1300 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 720, 1440, 144] ![-2880, -2880, -1440, -2880, -1440, -14400] (extendRow Arithmetic.row1300) ![reductionProjection7311, reductionProjection7318, reductionProjection7307, reductionProjection9090, reductionProjection7303, reductionProjection7393]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput805 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![-1, -1, 3, -1]]

theorem rowSound805 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 805) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row805 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row805 H]
  have hshape : boundaryInput805 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput805 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9132, reductionProjection9132, reductionProjection9130, oldProjection3301, oldProjection3197, oldProjection3217] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput805 (0 : Fin 6)) = canonicalInput27692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9132 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27692 hH))).trans (reductionSound9132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput805 (1 : Fin 6)) = canonicalInput28190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9132 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28190 hH))).trans (reductionSound9132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput805 (2 : Fin 6)) = canonicalInput28529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9130 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28529 hH))).trans (reductionSound9130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput805 (3 : Fin 6)) = canonicalInput28635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28635 hH))).trans (oldProjectionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput805 (4 : Fin 6)) = canonicalInput28649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28649 hH))).trans (oldProjectionSound3197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput805 (5 : Fin 6)) = canonicalInput28650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput805 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28650 hH))).trans (oldProjectionSound3217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput805 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 1440, 1440] ![-1440, -1440, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row805) ![reductionProjection9132, reductionProjection9132, reductionProjection9130, oldProjection3301, oldProjection3197, oldProjection3217]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput544 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]

theorem rowSound544 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 544) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row544 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row544 H]
  have hshape : boundaryInput544 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput544 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7822, reductionProjection7822, reductionProjection7826, reductionProjection7543, reductionProjection9163, reductionProjection9166] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput544 (0 : Fin 6)) = canonicalInput24277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7822 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7822 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24277 hH))).trans (reductionSound7822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput544 (1 : Fin 6)) = canonicalInput26707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7822 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7822 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26707 hH))).trans (reductionSound7822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput544 (2 : Fin 6)) = canonicalInput26744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26744 hH))).trans (reductionSound7826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput544 (3 : Fin 6)) = canonicalInput26751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7543 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7543 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26751 hH))).trans (reductionSound7543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput544 (4 : Fin 6)) = canonicalInput26753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9163 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9163 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26753 hH))).trans (reductionSound9163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput544 (5 : Fin 6)) = canonicalInput26754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9166 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput544 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9166 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26754 hH))).trans (reductionSound9166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput544 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row544) ![reductionProjection7822, reductionProjection7822, reductionProjection7826, reductionProjection7543, reductionProjection9163, reductionProjection9166]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput545 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]

theorem rowSound545 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 545) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row545 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row545 H]
  have hshape : boundaryInput545 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput545 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8215, reductionProjection8215, reductionProjection8210, reductionProjection6746, reductionProjection9167, reductionProjection8220] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput545 (0 : Fin 6)) = canonicalInput24278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8215 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8215 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24278 hH))).trans (reductionSound8215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput545 (1 : Fin 6)) = canonicalInput26708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8215 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8215 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26708 hH))).trans (reductionSound8215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput545 (2 : Fin 6)) = canonicalInput26745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8210 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8210 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26745 hH))).trans (reductionSound8210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput545 (3 : Fin 6)) = canonicalInput26752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6746 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6746 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26752 hH))).trans (reductionSound6746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput545 (4 : Fin 6)) = canonicalInput26755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9167 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9167 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26755 hH))).trans (reductionSound9167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput545 (5 : Fin 6)) = canonicalInput26756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8220 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput545 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8220 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26756 hH))).trans (reductionSound8220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput545 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 288, 288, 288] ![-1440, -1440, -7200, -7200, -7200, -7200] (extendRow Arithmetic.row545) ![reductionProjection8215, reductionProjection8215, reductionProjection8210, reductionProjection6746, reductionProjection9167, reductionProjection8220]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

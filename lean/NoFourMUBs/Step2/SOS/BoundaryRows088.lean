import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions319
import NoFourMUBs.Step2.SOS.Reductions323
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions340
import NoFourMUBs.Step2.SOS.Reductions342

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1092 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]

theorem rowSound1092 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1092) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1092 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1092 H]
  have hshape : boundaryInput1092 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1092 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10905, reductionProjection10905, reductionProjection10901, reductionProjection10903, reductionProjection10628, oldProjection3301] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1092 (0 : Fin 6)) = canonicalInput32082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32082 hH))).trans (reductionSound10905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1092 (1 : Fin 6)) = canonicalInput32548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32548 hH))).trans (reductionSound10905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1092 (2 : Fin 6)) = canonicalInput32617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10901 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10901 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32617 hH))).trans (reductionSound10901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1092 (3 : Fin 6)) = canonicalInput32654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32654 hH))).trans (reductionSound10903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1092 (4 : Fin 6)) = canonicalInput32670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10628 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32670 hH))).trans (reductionSound10628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1092 (5 : Fin 6)) = canonicalInput32671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1092 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3301 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32671 hH))).trans (oldProjectionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1092 (j : Fin 6)))
    1440 1440 ![360, 360, 1440, 288, 1440, 1440] ![-5760, -5760, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row1092) ![reductionProjection10905, reductionProjection10905, reductionProjection10901, reductionProjection10903, reductionProjection10628, oldProjection3301]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1178 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![-1, -1, -1, 3]]

theorem rowSound1178 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1178) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1178 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1178 H]
  have hshape : boundaryInput1178 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1178 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2315, reductionProjection10888, reductionProjection10887, reductionProjection10872, reductionProjection10889, reductionProjection10612] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1178 (0 : Fin 6)) = canonicalInput30209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2315 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2315 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30209 hH))).trans (oldProjectionSound2315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1178 (1 : Fin 6)) = canonicalInput31458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10888 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10888 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31458 hH))).trans (reductionSound10888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1178 (2 : Fin 6)) = canonicalInput31598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10887 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10887 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31598 hH))).trans (reductionSound10887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1178 (3 : Fin 6)) = canonicalInput31628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31628 hH))).trans (reductionSound10872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1178 (4 : Fin 6)) = canonicalInput31629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10889 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10889 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31629 hH))).trans (reductionSound10889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1178 (5 : Fin 6)) = canonicalInput31630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10612 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1178 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10612 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31630 hH))).trans (reductionSound10612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1178 (j : Fin 6)))
    1440 1440 ![1440, 720, 288, 1440, 1440, 1440] ![-1440, -2880, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row1178) ![oldProjection2315, reductionProjection10888, reductionProjection10887, reductionProjection10872, reductionProjection10889, reductionProjection10612]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1228 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]

theorem rowSound1228 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1228) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1228 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1228 H]
  have hshape : boundaryInput1228 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1228 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10232, reductionProjection10232, reductionProjection10230, reductionProjection10230, oldProjection2979, reductionProjection10903] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1228 (0 : Fin 6)) = canonicalInput27688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10232 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27688 hH))).trans (reductionSound10232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1228 (1 : Fin 6)) = canonicalInput28186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10232 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28186 hH))).trans (reductionSound10232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1228 (2 : Fin 6)) = canonicalInput28523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28523 hH))).trans (reductionSound10230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1228 (3 : Fin 6)) = canonicalInput28616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10230 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10230 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28616 hH))).trans (reductionSound10230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1228 (4 : Fin 6)) = canonicalInput28623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2979 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28623 hH))).trans (oldProjectionSound2979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1228 (5 : Fin 6)) = canonicalInput28624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1228 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28624 hH))).trans (reductionSound10903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1228 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-1440, -1440, -1440, -1440, -2880, -7200] (extendRow Arithmetic.row1228) ![reductionProjection10232, reductionProjection10232, reductionProjection10230, reductionProjection10230, oldProjection2979, reductionProjection10903]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1253 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]

theorem rowSound1253 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1253) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1253 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1253 H]
  have hshape : boundaryInput1253 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1253 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10906, reductionProjection10906, reductionProjection10902, reductionProjection10903, oldProjection3362, oldProjection3197] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1253 (0 : Fin 6)) = canonicalInput24797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24797 hH))).trans (reductionSound10906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1253 (1 : Fin 6)) = canonicalInput28104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28104 hH))).trans (reductionSound10906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1253 (2 : Fin 6)) = canonicalInput28492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10902 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10902 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28492 hH))).trans (reductionSound10902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1253 (3 : Fin 6)) = canonicalInput28624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28624 hH))).trans (reductionSound10903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1253 (4 : Fin 6)) = canonicalInput28643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28643 hH))).trans (oldProjectionSound3362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1253 (5 : Fin 6)) = canonicalInput28645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1253 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3197 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28645 hH))).trans (oldProjectionSound3197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1253 (j : Fin 6)))
    720 1440 ![1440, 1440, 288, 288, 1440, 1440] ![-720, -720, -3600, -3600, -720, -720] (extendRow Arithmetic.row1253) ![reductionProjection10906, reductionProjection10906, reductionProjection10902, reductionProjection10903, oldProjection3362, oldProjection3197]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput384 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![1, 1, -3, 1]]

theorem rowSound384 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 384) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row384 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row384 H]
  have hshape : boundaryInput384 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput384 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 144, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10605, reductionProjection10886, reductionProjection10886, reductionProjection10899, reductionProjection10964, reductionProjection10667] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput384 (0 : Fin 6)) = canonicalInput30223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10605 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30223 hH))).trans (reductionSound10605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput384 (1 : Fin 6)) = canonicalInput31472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10886 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31472 hH))).trans (reductionSound10886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput384 (2 : Fin 6)) = canonicalInput31627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10886 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31627 hH))).trans (reductionSound10886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput384 (3 : Fin 6)) = canonicalInput31671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10899 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10899 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31671 hH))).trans (reductionSound10899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput384 (4 : Fin 6)) = canonicalInput31672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10964 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10964 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31672 hH))).trans (reductionSound10964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput384 (5 : Fin 6)) = canonicalInput31673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10667 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput384 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31673 hH))).trans (reductionSound10667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput384 (j : Fin 6)))
    1440 1440 ![288, 144, 144, 1440, 288, 288] ![-7200, -14400, -14400, -1440, -7200, -7200] (extendRow Arithmetic.row384) ![reductionProjection10605, reductionProjection10886, reductionProjection10886, reductionProjection10899, reductionProjection10964, reductionProjection10667]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput556 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![-2, 3, -1, 0], ![3, -1, -1, -1]]

theorem rowSound556 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 556) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row556 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row556 H]
  have hshape : boundaryInput556 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput556 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection317, reductionProjection298, reductionProjection10894, reductionProjection10974, reductionProjection164, reductionProjection6789] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput556 (0 : Fin 6)) = canonicalInput17201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection317 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17201 hH))).trans (reductionSound317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput556 (1 : Fin 6)) = canonicalInput25453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection298 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection298 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25453 hH))).trans (reductionSound298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput556 (2 : Fin 6)) = canonicalInput25835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10894 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10894 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25835 hH))).trans (reductionSound10894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput556 (3 : Fin 6)) = canonicalInput25913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10974 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10974 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25913 hH))).trans (reductionSound10974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput556 (4 : Fin 6)) = canonicalInput25916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection164 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection164 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25916 hH))).trans (reductionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput556 (5 : Fin 6)) = canonicalInput25917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6789 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput556 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25917 hH))).trans (reductionSound6789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput556 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-288, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row556) ![reductionProjection317, reductionProjection298, reductionProjection10894, reductionProjection10974, reductionProjection164, reductionProjection6789]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput557 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, -1, 2, 0], ![-1, 3, -1, -1], ![3, -1, -1, -1]]

theorem rowSound557 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 557) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row557 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row557 H]
  have hshape : boundaryInput557 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput557 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 18, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection374, reductionProjection359, reductionProjection10906, reductionProjection371, reductionProjection10974, reductionProjection8035] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput557 (0 : Fin 6)) = canonicalInput17200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection374 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17200 hH))).trans (reductionSound374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput557 (1 : Fin 6)) = canonicalInput25452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection359 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection359 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25452 hH))).trans (reductionSound359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput557 (2 : Fin 6)) = canonicalInput25834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25834 hH))).trans (reductionSound10906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput557 (3 : Fin 6)) = canonicalInput25912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection371 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection371 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25912 hH))).trans (reductionSound371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput557 (4 : Fin 6)) = canonicalInput25913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10974 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10974 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25913 hH))).trans (reductionSound10974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput557 (5 : Fin 6)) = canonicalInput25914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8035 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput557 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25914 hH))).trans (reductionSound8035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput557 (j : Fin 6)))
    720 1440 ![18, 18, 1440, 288, 1440, 288] ![-57600, -57600, -720, -3600, -720, -3600] (extendRow Arithmetic.row557) ![reductionProjection374, reductionProjection359, reductionProjection10906, reductionProjection371, reductionProjection10974, reductionProjection8035]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1289 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![1, -2, 0, 1], ![-1, -1, 3, -1]]

theorem rowSound1289 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1289) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1289 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1289 H]
  have hshape : boundaryInput1289 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1289 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 72, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10881, reductionProjection10890, reductionProjection10880, reductionProjection10972, reductionProjection10338, reductionProjection7998] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1289 (0 : Fin 6)) = canonicalInput27913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10881 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10881 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27913 hH))).trans (reductionSound10881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1289 (1 : Fin 6)) = canonicalInput29688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10890 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10890 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29688 hH))).trans (reductionSound10890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1289 (2 : Fin 6)) = canonicalInput29905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10880 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10880 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29905 hH))).trans (reductionSound10880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1289 (3 : Fin 6)) = canonicalInput29923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10972 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10972 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29923 hH))).trans (reductionSound10972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1289 (4 : Fin 6)) = canonicalInput29924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10338 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29924 hH))).trans (reductionSound10338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1289 (5 : Fin 6)) = canonicalInput29925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7998 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1289 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7998 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29925 hH))).trans (reductionSound7998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1289 (j : Fin 6)))
    1440 1440 ![1440, 1440, 360, 72, 288, 720] ![-1440, -1440, -5760, -28800, -7200, -2880] (extendRow Arithmetic.row1289) ![reductionProjection10881, reductionProjection10890, reductionProjection10880, reductionProjection10972, reductionProjection10338, reductionProjection7998]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

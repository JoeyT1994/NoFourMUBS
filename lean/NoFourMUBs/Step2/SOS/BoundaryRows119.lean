import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical116
import NoFourMUBs.Step2.SOS.Canonical118
import NoFourMUBs.Step2.SOS.Canonical166
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical325
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions080
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions334
import NoFourMUBs.Step2.SOS.Reductions335
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions356
import NoFourMUBs.Step2.SOS.Reductions360
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions379
import NoFourMUBs.Step2.SOS.Reductions380
import NoFourMUBs.Step2.SOS.Reductions381

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput213 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]

theorem rowSound213 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 213) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row213 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row213 H]
  have hshape : boundaryInput213 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput213 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7421, reductionProjection10647, reductionProjection10693, reductionProjection10770, reductionProjection10644, reductionProjection12164] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput213 (0 : Fin 6)) = canonicalInput7473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7421 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7421 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7473 hH))).trans (reductionSound7421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput213 (1 : Fin 6)) = canonicalInput20728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20728 hH))).trans (reductionSound10647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput213 (2 : Fin 6)) = canonicalInput20870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10693 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10693 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20870 hH))).trans (reductionSound10693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput213 (3 : Fin 6)) = canonicalInput20893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10770 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10770 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20893 hH))).trans (reductionSound10770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput213 (4 : Fin 6)) = canonicalInput20894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10644 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10644 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20894 hH))).trans (reductionSound10644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput213 (5 : Fin 6)) = canonicalInput20895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12164 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput213 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12164 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20895 hH))).trans (reductionSound12164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput213 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 720, 288] ![-1440, -1440, -1440, -2880, -2880, -7200] (extendRow Arithmetic.row213) ![reductionProjection7421, reductionProjection10647, reductionProjection10693, reductionProjection10770, reductionProjection10644, reductionProjection12164]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput219 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]

theorem rowSound219 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 219) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row219 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row219 H]
  have hshape : boundaryInput219 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput219 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9029, reductionProjection11796, reductionProjection12163, reductionProjection12161, reductionProjection10750, reductionProjection11914] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput219 (0 : Fin 6)) = canonicalInput10677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9029 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9029 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10677 hH))).trans (reductionSound9029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput219 (1 : Fin 6)) = canonicalInput22846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11796 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11796 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22846 hH))).trans (reductionSound11796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput219 (2 : Fin 6)) = canonicalInput22896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12163 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12163 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22896 hH))).trans (reductionSound12163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput219 (3 : Fin 6)) = canonicalInput22907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12161 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12161 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22907 hH))).trans (reductionSound12161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput219 (4 : Fin 6)) = canonicalInput22908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10750 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10750 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22908 hH))).trans (reductionSound10750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput219 (5 : Fin 6)) = canonicalInput22909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput219 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11914 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22909 hH))).trans (reductionSound11914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput219 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 288, 288, 1440] ![-1440, -7200, -1440, -7200, -7200, -1440] (extendRow Arithmetic.row219) ![reductionProjection9029, reductionProjection11796, reductionProjection12163, reductionProjection12161, reductionProjection10750, reductionProjection11914]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput312 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]

theorem rowSound312 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 312) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row312 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row312 H]
  have hshape : boundaryInput312 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput312 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6545, oldProjection3122, reductionProjection12184, oldProjection2768, reductionProjection6615, reductionProjection2590] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput312 (0 : Fin 6)) = canonicalInput20353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6545 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6545 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20353 hH))).trans (reductionSound6545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput312 (1 : Fin 6)) = canonicalInput28056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3122 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28056 hH))).trans (oldProjectionSound3122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput312 (2 : Fin 6)) = canonicalInput29745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12184 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12184 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29745 hH))).trans (reductionSound12184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput312 (3 : Fin 6)) = canonicalInput29930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2768 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2768 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29930 hH))).trans (oldProjectionSound2768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput312 (4 : Fin 6)) = canonicalInput29943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6615 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6615 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29943 hH))).trans (reductionSound6615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput312 (5 : Fin 6)) = canonicalInput29947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput312 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29947 hH))).trans (reductionSound2590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput312 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row312) ![reductionProjection6545, oldProjection3122, reductionProjection12184, oldProjection2768, reductionProjection6615, reductionProjection2590]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput347 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 2, -3, 1], ![0, 0, 4, -4]]

theorem rowSound347 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 347) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row347 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row347 H]
  have hshape : boundaryInput347 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput347 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6767, reductionProjection6764, reductionProjection12147, reductionProjection12182, reductionProjection8631, reductionProjection6770] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput347 (0 : Fin 6)) = canonicalInput7421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6767 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6767 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7421 hH))).trans (reductionSound6767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput347 (1 : Fin 6)) = canonicalInput20719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6764 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6764 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20719 hH))).trans (reductionSound6764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput347 (2 : Fin 6)) = canonicalInput20835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12147 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12147 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20835 hH))).trans (reductionSound12147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput347 (3 : Fin 6)) = canonicalInput20858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12182 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12182 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20858 hH))).trans (reductionSound12182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput347 (4 : Fin 6)) = canonicalInput20861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8631 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20861 hH))).trans (reductionSound8631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput347 (5 : Fin 6)) = canonicalInput20862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6770 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput347 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6770 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20862 hH))).trans (reductionSound6770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput347 (j : Fin 6)))
    1440 1440 ![288, 144, 288, 1440, 288, 1440] ![-7200, -14400, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row347) ![reductionProjection6767, reductionProjection6764, reductionProjection12147, reductionProjection12182, reductionProjection8631, reductionProjection6770]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput471 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![2, 0, -3, 1], ![0, 3, 1, -4]]

theorem rowSound471 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 471) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row471 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row471 H]
  have hshape : boundaryInput471 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput471 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 144, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7472, reductionProjection8338, reductionProjection8344, reductionProjection8344, reductionProjection12175, reductionProjection4320] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput471 (0 : Fin 6)) = canonicalInput7395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7472 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7472 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7395 hH))).trans (reductionSound7472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput471 (1 : Fin 6)) = canonicalInput20712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8338 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20712 hH))).trans (reductionSound8338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput471 (2 : Fin 6)) = canonicalInput20823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20823 hH))).trans (reductionSound8344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput471 (3 : Fin 6)) = canonicalInput20838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20838 hH))).trans (reductionSound8344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput471 (4 : Fin 6)) = canonicalInput20843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12175 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12175 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20843 hH))).trans (reductionSound12175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput471 (5 : Fin 6)) = canonicalInput20845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4320 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput471 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20845 hH))).trans (reductionSound4320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput471 (j : Fin 6)))
    1440 1440 ![18, 144, 1440, 1440, 288, 720] ![-115200, -14400, -1440, -1440, -7200, -2880] (extendRow Arithmetic.row471) ![reductionProjection7472, reductionProjection8338, reductionProjection8344, reductionProjection8344, reductionProjection12175, reductionProjection4320]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput786 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 1, 0, -2]]

theorem rowSound786 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 786) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row786 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row786 H]
  have hshape : boundaryInput786 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput786 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 720, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7444, oldProjection2625, reductionProjection11523, reductionProjection10939, reductionProjection12171, reductionProjection11532] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput786 (0 : Fin 6)) = canonicalInput27790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7444 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7444 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27790 hH))).trans (reductionSound7444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput786 (1 : Fin 6)) = canonicalInput28785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2625 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2625 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28785 hH))).trans (oldProjectionSound2625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput786 (2 : Fin 6)) = canonicalInput29195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11523 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29195 hH))).trans (reductionSound11523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput786 (3 : Fin 6)) = canonicalInput29227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29227 hH))).trans (reductionSound10939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput786 (4 : Fin 6)) = canonicalInput29231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12171 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12171 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29231 hH))).trans (reductionSound12171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput786 (5 : Fin 6)) = canonicalInput29232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11532 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput786 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11532 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29232 hH))).trans (reductionSound11532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput786 (j : Fin 6)))
    1440 1440 ![1440, 288, 720, 1440, 144, 1440] ![-1440, -7200, -2880, -1440, -14400, -1440] (extendRow Arithmetic.row786) ![reductionProjection7444, oldProjection2625, reductionProjection11523, reductionProjection10939, reductionProjection12171, reductionProjection11532]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput789 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, 0, -2]]

theorem rowSound789 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 789) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row789 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row789 H]
  have hshape : boundaryInput789 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput789 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection3298, reductionProjection11398, reductionProjection7997, reductionProjection10872, reductionProjection12170, reductionProjection11399] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput789 (0 : Fin 6)) = canonicalInput30207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3298 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3298 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30207 hH))).trans (reductionSound3298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput789 (1 : Fin 6)) = canonicalInput31456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11398 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11398 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31456 hH))).trans (reductionSound11398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput789 (2 : Fin 6)) = canonicalInput31596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7997 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7997 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31596 hH))).trans (reductionSound7997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput789 (3 : Fin 6)) = canonicalInput31622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31622 hH))).trans (reductionSound10872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput789 (4 : Fin 6)) = canonicalInput31624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12170 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12170 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31624 hH))).trans (reductionSound12170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput789 (5 : Fin 6)) = canonicalInput31625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection11399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput789 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection11399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31625 hH))).trans (reductionSound11399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput789 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 720, 1440] ![-2880, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row789) ![reductionProjection3298, reductionProjection11398, reductionProjection7997, reductionProjection10872, reductionProjection12170, reductionProjection11399]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput110 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, 2, 2, -5]]

theorem rowSound110 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 110) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row110 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row110 H]
  have hshape : boundaryInput110 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput110 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1886, reductionProjection1905, reductionProjection1905, reductionProjection1905, reductionProjection10032, reductionProjection12221] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput110 (0 : Fin 6)) = canonicalInput7614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1886 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1886 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7614 hH))).trans (reductionSound1886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput110 (1 : Fin 6)) = canonicalInput20736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1905 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20736 hH))).trans (reductionSound1905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput110 (2 : Fin 6)) = canonicalInput20918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1905 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20918 hH))).trans (reductionSound1905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput110 (3 : Fin 6)) = canonicalInput20932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1905 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20932 hH))).trans (reductionSound1905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput110 (4 : Fin 6)) = canonicalInput20938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10032 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10032 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20938 hH))).trans (reductionSound10032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput110 (5 : Fin 6)) = canonicalInput20941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection12221 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput110 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection12221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20941 hH))).trans (reductionSound12221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput110 (j : Fin 6)))
    288 1440 ![1440, 288, 288, 288, 1440, 1440] ![-288, -1440, -1440, -1440, -288, -288] (extendRow Arithmetic.row110) ![reductionProjection1886, reductionProjection1905, reductionProjection1905, reductionProjection1905, reductionProjection10032, reductionProjection12221]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

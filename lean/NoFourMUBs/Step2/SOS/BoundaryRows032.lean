import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical466
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions216
import NoFourMUBs.Step2.SOS.Reductions217
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical299
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical300
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical301
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical310
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical313

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput282 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3]]

theorem rowSound282 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 282) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row282 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row282 H]
  have hshape : boundaryInput282 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput282 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6903, oldProjection3218, reductionProjection6912, reductionProjection6915, reductionProjection6585, oldProjection3130] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput282 (0 : Fin 6)) = canonicalInput31852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6903 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31852 hH))).trans (reductionSound6903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput282 (1 : Fin 6)) = canonicalInput31960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3218 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3218 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31960 hH))).trans (oldProjectionSound3218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput282 (2 : Fin 6)) = canonicalInput31995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6912 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6912 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31995 hH))).trans (reductionSound6912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput282 (3 : Fin 6)) = canonicalInput32015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6915 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6915 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32015 hH))).trans (reductionSound6915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput282 (4 : Fin 6)) = canonicalInput32019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6585 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6585 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32019 hH))).trans (reductionSound6585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput282 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10046 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput282 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10046 hH))).trans (oldProjectionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput282 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 288, 288, 144] ![-720, -720, -720, -3600, -3600, -7200] (extendRow Arithmetic.row282) ![reductionProjection6903, oldProjection3218, reductionProjection6912, reductionProjection6915, reductionProjection6585, oldProjection3130]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput306 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-1, 2, -3, 2]]

theorem rowSound306 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 306) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row306 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row306 H]
  have hshape : boundaryInput306 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput306 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6856, reductionProjection6757, reductionProjection6756, reductionProjection6756, reductionProjection4571, reductionProjection6931] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput306 (0 : Fin 6)) = canonicalInput20294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6856 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6856 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20294 hH))).trans (reductionSound6856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput306 (1 : Fin 6)) = canonicalInput28022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6757 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6757 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28022 hH))).trans (reductionSound6757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput306 (2 : Fin 6)) = canonicalInput28853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6756 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6756 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28853 hH))).trans (reductionSound6756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput306 (3 : Fin 6)) = canonicalInput29322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6756 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6756 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29322 hH))).trans (reductionSound6756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput306 (4 : Fin 6)) = canonicalInput29324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4571 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4571 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29324 hH))).trans (reductionSound4571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput306 (5 : Fin 6)) = canonicalInput29325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6931 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput306 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6931 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29325 hH))).trans (reductionSound6931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput306 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 720] ![-288, -288, -288, -288, -288, -576] (extendRow Arithmetic.row306) ![reductionProjection6856, reductionProjection6757, reductionProjection6756, reductionProjection6756, reductionProjection4571, reductionProjection6931]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput130 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, -2, 3, -2]]

theorem rowSound130 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 130) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row130 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row130 H]
  have hshape : boundaryInput130 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput130 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6921, oldProjection3132, oldProjection3132, reductionProjection6955, reductionProjection6586, reductionProjection4220] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput130 (0 : Fin 6)) = canonicalInput27895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6921 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6921 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27895 hH))).trans (reductionSound6921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput130 (1 : Fin 6)) = canonicalInput29539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29539 hH))).trans (oldProjectionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput130 (2 : Fin 6)) = canonicalInput29771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29771 hH))).trans (oldProjectionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput130 (3 : Fin 6)) = canonicalInput29831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29831 hH))).trans (reductionSound6955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput130 (4 : Fin 6)) = canonicalInput29842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6586 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29842 hH))).trans (reductionSound6586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput130 (5 : Fin 6)) = canonicalInput29843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4220 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput130 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4220 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29843 hH))).trans (reductionSound4220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput130 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 288, 720] ![-1440, -7200, -7200, -1440, -7200, -2880] (extendRow Arithmetic.row130) ![reductionProjection6921, oldProjection3132, oldProjection3132, reductionProjection6955, reductionProjection6586, reductionProjection4220]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput133 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -1, 3, -3]]

theorem rowSound133 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 133) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row133 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row133 H]
  have hshape : boundaryInput133 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput133 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6923, reductionProjection6947, reductionProjection6947, reductionProjection6957, reductionProjection6588, oldProjection2945] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput133 (0 : Fin 6)) = canonicalInput27887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6923 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6923 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27887 hH))).trans (reductionSound6923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput133 (1 : Fin 6)) = canonicalInput29520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29520 hH))).trans (reductionSound6947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput133 (2 : Fin 6)) = canonicalInput29763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29763 hH))).trans (reductionSound6947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput133 (3 : Fin 6)) = canonicalInput29815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29815 hH))).trans (reductionSound6957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput133 (4 : Fin 6)) = canonicalInput29817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29817 hH))).trans (reductionSound6588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput133 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9625 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2945 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput133 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2945 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9625 hH))).trans (oldProjectionSound2945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput133 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-288, -288, -288, -288, -288, -288] (extendRow Arithmetic.row133) ![reductionProjection6923, reductionProjection6947, reductionProjection6947, reductionProjection6957, reductionProjection6588, oldProjection2945]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput138 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 1, 3, -4]]

theorem rowSound138 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 138) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row138 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row138 H]
  have hshape : boundaryInput138 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput138 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 360, 720, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6926, oldProjection3133, reductionProjection6960, reductionProjection6960, reductionProjection6590, oldProjection2946] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput138 (0 : Fin 6)) = canonicalInput27901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6926 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6926 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27901 hH))).trans (reductionSound6926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput138 (1 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9590 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3133 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9590 hH))).trans (oldProjectionSound3133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput138 (2 : Fin 6)) = canonicalInput29856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6960 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6960 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29856 hH))).trans (reductionSound6960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput138 (3 : Fin 6)) = canonicalInput29879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6960 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6960 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29879 hH))).trans (reductionSound6960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput138 (4 : Fin 6)) = canonicalInput29880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6590 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29880 hH))).trans (reductionSound6590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput138 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9658 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2946 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput138 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2946 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9658 hH))).trans (oldProjectionSound2946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput138 (j : Fin 6)))
    1440 1440 ![288, 360, 720, 720, 288, 1440] ![-7200, -5760, -2880, -2880, -7200, -1440] (extendRow Arithmetic.row138) ![reductionProjection6926, oldProjection3133, reductionProjection6960, reductionProjection6960, reductionProjection6590, oldProjection2946]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput184 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]

theorem rowSound184 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 184) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row184 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row184 H]
  have hshape : boundaryInput184 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput184 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6713, reductionProjection6957, oldProjection2770, oldProjection2770, reductionProjection2538, reductionProjection6955] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput184 (0 : Fin 6)) = canonicalInput20336.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6713 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6713 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20336 hH))).trans (reductionSound6713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput184 (1 : Fin 6)) = canonicalInput28043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28043 hH))).trans (reductionSound6957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput184 (2 : Fin 6)) = canonicalInput29422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2770 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2770 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29422 hH))).trans (oldProjectionSound2770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput184 (3 : Fin 6)) = canonicalInput29723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2770 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2770 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29723 hH))).trans (oldProjectionSound2770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput184 (4 : Fin 6)) = canonicalInput29729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2538 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29729 hH))).trans (reductionSound2538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput184 (5 : Fin 6)) = canonicalInput29731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput184 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29731 hH))).trans (reductionSound6955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput184 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row184) ![reductionProjection6713, reductionProjection6957, oldProjection2770, oldProjection2770, reductionProjection2538, reductionProjection6955]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput260 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-2, 1, -2, 3]]

theorem rowSound260 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 260) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row260 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row260 H]
  have hshape : boundaryInput260 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput260 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1980, oldProjection3132, reductionProjection6952, reductionProjection6955, oldProjection3189, reductionProjection6946] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput260 (0 : Fin 6)) = canonicalInput30222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1980 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1980 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30222 hH))).trans (oldProjectionSound1980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput260 (1 : Fin 6)) = canonicalInput31471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3132 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31471 hH))).trans (oldProjectionSound3132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput260 (2 : Fin 6)) = canonicalInput31611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6952 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6952 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31611 hH))).trans (reductionSound6952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput260 (3 : Fin 6)) = canonicalInput31663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31663 hH))).trans (reductionSound6955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput260 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9947 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3189 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9947 hH))).trans (oldProjectionSound3189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput260 (5 : Fin 6)) = canonicalInput31667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6946 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput260 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6946 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31667 hH))).trans (reductionSound6946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput260 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 1440] ![-1440, -7200, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row260) ![oldProjection1980, oldProjection3132, reductionProjection6952, reductionProjection6955, oldProjection3189, reductionProjection6946]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput452 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -1, 3, -3]]

theorem rowSound452 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 452) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row452 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row452 H]
  have hshape : boundaryInput452 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput452 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6947, reductionProjection6947, oldProjection1978, reductionProjection4253, reductionProjection2311, reductionProjection4255] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput452 (0 : Fin 6)) = canonicalInput29520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29520 hH))).trans (reductionSound6947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput452 (1 : Fin 6)) = canonicalInput31925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6947 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31925 hH))).trans (reductionSound6947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput452 (2 : Fin 6)) = canonicalInput31933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1978 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1978 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31933 hH))).trans (oldProjectionSound1978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput452 (3 : Fin 6)) = canonicalInput31938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4253 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4253 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31938 hH))).trans (reductionSound4253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput452 (4 : Fin 6)) = canonicalInput31939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2311 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2311 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31939 hH))).trans (reductionSound2311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput452 (5 : Fin 6)) = canonicalInput31940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput452 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31940 hH))).trans (reductionSound4255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput452 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row452) ![reductionProjection6947, reductionProjection6947, oldProjection1978, reductionProjection4253, reductionProjection2311, reductionProjection4255]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

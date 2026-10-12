import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions189
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical263
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical289
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical315

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput845 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2]]

theorem rowSound845 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 845) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row845 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row845 H]
  have hshape : boundaryInput845 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput845 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 720, 720, 72, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6046, reductionProjection6046, reductionProjection5636, reductionProjection5636, oldProjection3043, oldProjection2976] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput845 (0 : Fin 6)) = canonicalInput32073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6046 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6046 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32073 hH))).trans (reductionSound6046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput845 (1 : Fin 6)) = canonicalInput32543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6046 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6046 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32543 hH))).trans (reductionSound6046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput845 (2 : Fin 6)) = canonicalInput32612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5636 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32612 hH))).trans (reductionSound5636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput845 (3 : Fin 6)) = canonicalInput32640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5636 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32640 hH))).trans (reductionSound5636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput845 (4 : Fin 6)) = canonicalInput32658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3043 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3043 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32658 hH))).trans (oldProjectionSound3043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput845 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10084 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput845 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10084 hH))).trans (oldProjectionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput845 (j : Fin 6)))
    1440 1440 ![360, 360, 720, 720, 72, 1440] ![-5760, -5760, -2880, -2880, -28800, -1440] (extendRow Arithmetic.row845) ![reductionProjection6046, reductionProjection6046, reductionProjection5636, reductionProjection5636, oldProjection3043, oldProjection2976]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1174 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 0, -2], ![-1, -2, 2, 1]]

theorem rowSound1174 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1174) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1174 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1174 H]
  have hshape : boundaryInput1174 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1174 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1834, reductionProjection5615, reductionProjection6036, reductionProjection6004, reductionProjection5614, reductionProjection5317] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1174 (0 : Fin 6)) = canonicalInput30210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30210 hH))).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1174 (1 : Fin 6)) = canonicalInput31459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5615 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5615 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31459 hH))).trans (reductionSound5615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1174 (2 : Fin 6)) = canonicalInput31599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6036 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6036 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31599 hH))).trans (reductionSound6036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1174 (3 : Fin 6)) = canonicalInput31631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6004 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6004 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31631 hH))).trans (reductionSound6004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1174 (4 : Fin 6)) = canonicalInput31632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31632 hH))).trans (reductionSound5614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1174 (5 : Fin 6)) = canonicalInput31633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5317 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1174 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31633 hH))).trans (reductionSound5317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1174 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-288, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row1174) ![oldProjection1834, reductionProjection5615, reductionProjection6036, reductionProjection6004, reductionProjection5614, reductionProjection5317]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1182 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, 0, 0, -2], ![-2, -1, 2, 1]]

theorem rowSound1182 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1182) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1182 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1182 H]
  have hshape : boundaryInput1182 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1182 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 288, 288, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1833, reductionProjection6034, reductionProjection5613, reductionProjection6000, reductionProjection5611, reductionProjection5314] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1182 (0 : Fin 6)) = canonicalInput30165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1833 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1833 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30165 hH))).trans (oldProjectionSound1833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1182 (1 : Fin 6)) = canonicalInput31308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6034 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6034 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31308 hH))).trans (reductionSound6034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1182 (2 : Fin 6)) = canonicalInput31337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5613 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5613 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31337 hH))).trans (reductionSound5613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1182 (3 : Fin 6)) = canonicalInput31397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6000 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31397 hH))).trans (reductionSound6000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1182 (4 : Fin 6)) = canonicalInput31400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5611 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5611 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31400 hH))).trans (reductionSound5611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1182 (5 : Fin 6)) = canonicalInput31401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1182 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31401 hH))).trans (reductionSound5314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1182 (j : Fin 6)))
    1440 1440 ![360, 288, 288, 720, 1440, 1440] ![-5760, -7200, -7200, -2880, -1440, -1440] (extendRow Arithmetic.row1182) ![oldProjection1833, reductionProjection6034, reductionProjection5613, reductionProjection6000, reductionProjection5611, reductionProjection5314]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1183 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, 0, -2], ![-1, -2, 2, 1]]

theorem rowSound1183 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1183) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1183 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1183 H]
  have hshape : boundaryInput1183 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1183 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 360, 1440, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1838, reductionProjection6037, reductionProjection5616, reductionProjection6007, reductionProjection5617, reductionProjection5321] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1183 (0 : Fin 6)) = canonicalInput30161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1838 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1838 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30161 hH))).trans (oldProjectionSound1838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1183 (1 : Fin 6)) = canonicalInput31304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6037 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6037 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31304 hH))).trans (reductionSound6037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1183 (2 : Fin 6)) = canonicalInput31333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5616 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5616 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31333 hH))).trans (reductionSound5616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1183 (3 : Fin 6)) = canonicalInput31383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6007 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31383 hH))).trans (reductionSound6007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1183 (4 : Fin 6)) = canonicalInput31388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5617 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5617 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31388 hH))).trans (reductionSound5617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1183 (5 : Fin 6)) = canonicalInput31389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5321 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1183 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5321 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31389 hH))).trans (reductionSound5321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1183 (j : Fin 6)))
    72 1440 ![1440, 1440, 288, 360, 1440, 360] ![-72, -72, -360, -288, -72, -288] (extendRow Arithmetic.row1183) ![oldProjection1838, reductionProjection6037, reductionProjection5616, reductionProjection6007, reductionProjection5617, reductionProjection5321]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput404 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 2, 1, -4]]

theorem rowSound404 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 404) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row404 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row404 H]
  have hshape : boundaryInput404 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput404 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6025, reductionProjection6025, oldProjection2924, reductionProjection6077, reductionProjection1579, reductionProjection5832] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput404 (0 : Fin 6)) = canonicalInput24782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6025 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6025 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24782 hH))).trans (reductionSound6025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput404 (1 : Fin 6)) = canonicalInput28091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6025 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6025 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28091 hH))).trans (reductionSound6025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput404 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9271 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2924 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2924 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9271 hH))).trans (oldProjectionSound2924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput404 (3 : Fin 6)) = canonicalInput28404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28404 hH))).trans (reductionSound6077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput404 (4 : Fin 6)) = canonicalInput28411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1579 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1579 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28411 hH))).trans (reductionSound1579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput404 (5 : Fin 6)) = canonicalInput28413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5832 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput404 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5832 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28413 hH))).trans (reductionSound5832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput404 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row404) ![reductionProjection6025, reductionProjection6025, oldProjection2924, reductionProjection6077, reductionProjection1579, reductionProjection5832]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput424 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 2, 1, -4]]

theorem rowSound424 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 424) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row424 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row424 H]
  have hshape : boundaryInput424 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput424 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5994, reductionProjection6017, oldProjection2906, reductionProjection6056, reductionProjection1463, reductionProjection5564] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput424 (0 : Fin 6)) = canonicalInput24134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5994 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5994 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24134 hH))).trans (reductionSound5994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput424 (1 : Fin 6)) = canonicalInput25560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6017 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25560 hH))).trans (reductionSound6017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput424 (2 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8440 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2906 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2906 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8440 hH))).trans (oldProjectionSound2906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput424 (3 : Fin 6)) = canonicalInput25957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6056 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25957 hH))).trans (reductionSound6056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput424 (4 : Fin 6)) = canonicalInput25964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1463 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1463 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25964 hH))).trans (reductionSound1463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput424 (5 : Fin 6)) = canonicalInput25966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput424 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25966 hH))).trans (reductionSound5564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput424 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 720] ![-1440, -1440, -1440, -2880, -1440, -2880] (extendRow Arithmetic.row424) ![reductionProjection5994, reductionProjection6017, oldProjection2906, reductionProjection6056, reductionProjection1463, reductionProjection5564]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput800 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-2, -1, 3, 0]]

theorem rowSound800 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 800) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row800 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row800 H]
  have hshape : boundaryInput800 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput800 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![72, 72, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4667, reductionProjection4667, oldProjection2997, oldProjection2997, oldProjection2996, reductionProjection6078] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput800 (0 : Fin 6)) = canonicalInput27651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4667 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27651 hH))).trans (reductionSound4667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput800 (1 : Fin 6)) = canonicalInput28153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4667 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28153 hH))).trans (reductionSound4667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput800 (2 : Fin 6)) = canonicalInput28399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2997 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2997 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28399 hH))).trans (oldProjectionSound2997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput800 (3 : Fin 6)) = canonicalInput28440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2997 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2997 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28440 hH))).trans (oldProjectionSound2997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput800 (4 : Fin 6)) = canonicalInput28455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2996 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28455 hH))).trans (oldProjectionSound2996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput800 (5 : Fin 6)) = canonicalInput28456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput800 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28456 hH))).trans (reductionSound6078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput800 (j : Fin 6)))
    144 1440 ![72, 72, 1440, 1440, 1440, 288] ![-2880, -2880, -144, -144, -144, -720] (extendRow Arithmetic.row800) ![reductionProjection4667, reductionProjection4667, oldProjection2997, oldProjection2997, oldProjection2996, reductionProjection6078]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1058 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 1, -2]]

theorem rowSound1058 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1058) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1058 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1058 H]
  have hshape : boundaryInput1058 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1058 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6068, reductionProjection6068, reductionProjection5826, reductionProjection5826, reductionProjection5704, reductionProjection6078] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1058 (0 : Fin 6)) = canonicalInput27646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6068 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6068 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27646 hH))).trans (reductionSound6068 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1058 (1 : Fin 6)) = canonicalInput28148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6068 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6068 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28148 hH))).trans (reductionSound6068 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1058 (2 : Fin 6)) = canonicalInput28391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28391 hH))).trans (reductionSound5826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1058 (3 : Fin 6)) = canonicalInput28435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5826 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28435 hH))).trans (reductionSound5826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1058 (4 : Fin 6)) = canonicalInput28443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5704 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5704 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28443 hH))).trans (reductionSound5704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1058 (5 : Fin 6)) = canonicalInput28444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1058 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28444 hH))).trans (reductionSound6078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1058 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-288, -288, -288, -288, -1440, -1440] (extendRow Arithmetic.row1058) ![reductionProjection6068, reductionProjection6068, reductionProjection5826, reductionProjection5826, reductionProjection5704, reductionProjection6078]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

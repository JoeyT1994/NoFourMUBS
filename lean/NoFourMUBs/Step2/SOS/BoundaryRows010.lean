import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions080
import NoFourMUBs.Step2.SOS.Reductions081
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical306
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical309
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical310
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical315

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput152 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -2, -1, 4]]

theorem rowSound152 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 152) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row152 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row152 H]
  have hshape : boundaryInput152 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput152 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2468, reductionProjection2468, reductionProjection2458, reductionProjection2466, oldProjection2918, reductionProjection1878] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput152 (0 : Fin 6)) = canonicalInput32086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32086 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput152 (1 : Fin 6)) = canonicalInput32551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32551 hH))).trans (reductionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput152 (2 : Fin 6)) = canonicalInput32620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32620 hH))).trans (reductionSound2458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput152 (3 : Fin 6)) = canonicalInput32659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2466 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2466 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32659 hH))).trans (reductionSound2466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput152 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10087 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2918 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2918 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10087 hH))).trans (oldProjectionSound2918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput152 (5 : Fin 6)) = canonicalInput32675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1878 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput152 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1878 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32675 hH))).trans (reductionSound1878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput152 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row152) ![reductionProjection2468, reductionProjection2468, reductionProjection2458, reductionProjection2466, oldProjection2918, reductionProjection1878]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput142 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2], ![-2, -1, -1, 4]]

theorem rowSound142 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 142) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row142 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row142 H]
  have hshape : boundaryInput142 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput142 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1548, oldProjection1548, reductionProjection2559, oldProjection2925, oldProjection2911, reductionProjection1891] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput142 (0 : Fin 6)) = canonicalInput30135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1548 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1548 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30135 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput142 (1 : Fin 6)) = canonicalInput31154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1548 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1548 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31154 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput142 (2 : Fin 6)) = canonicalInput31196.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2559 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2559 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31196 hH))).trans (reductionSound2559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput142 (3 : Fin 6)) = canonicalInput31205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2925 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2925 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31205 hH))).trans (oldProjectionSound2925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput142 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9815 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2911 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2911 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9815 hH))).trans (oldProjectionSound2911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput142 (5 : Fin 6)) = canonicalInput31208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1891 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput142 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1891 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31208 hH))).trans (reductionSound1891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput142 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 720, 1440, 1440] ![-1440, -1440, -1440, -2880, -1440, -1440] (extendRow Arithmetic.row142) ![oldProjection1548, oldProjection1548, reductionProjection2559, oldProjection2925, oldProjection2911, reductionProjection1891]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput144 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-2, -1, -1, 4]]

theorem rowSound144 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 144) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row144 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row144 H]
  have hshape : boundaryInput144 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput144 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 288, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1558, oldProjection1558, reductionProjection2561, reductionProjection2567, oldProjection2920, reductionProjection1898] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput144 (0 : Fin 6)) = canonicalInput30138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1558 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30138 hH))).trans (oldProjectionSound1558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput144 (1 : Fin 6)) = canonicalInput31157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1558 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1558 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31157 hH))).trans (oldProjectionSound1558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput144 (2 : Fin 6)) = canonicalInput31199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2561 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2561 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31199 hH))).trans (reductionSound2561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput144 (3 : Fin 6)) = canonicalInput31215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2567 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2567 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31215 hH))).trans (reductionSound2567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput144 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9823 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2920 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2920 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9823 hH))).trans (oldProjectionSound2920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput144 (5 : Fin 6)) = canonicalInput31216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1898 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput144 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1898 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31216 hH))).trans (reductionSound1898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput144 (j : Fin 6)))
    720 1440 ![288, 288, 1440, 288, 1440, 720] ![-3600, -3600, -720, -3600, -720, -1440] (extendRow Arithmetic.row144) ![oldProjection1558, oldProjection1558, reductionProjection2561, reductionProjection2567, oldProjection2920, reductionProjection1898]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput145 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -2, -1, 4]]

theorem rowSound145 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 145) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row145 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row145 H]
  have hshape : boundaryInput145 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput145 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 288, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1552, reductionProjection2590, reductionProjection2578, reductionProjection2583, oldProjection2914, reductionProjection1928] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput145 (0 : Fin 6)) = canonicalInput30221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1552 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1552 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30221 hH))).trans (oldProjectionSound1552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput145 (1 : Fin 6)) = canonicalInput31470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31470 hH))).trans (reductionSound2590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput145 (2 : Fin 6)) = canonicalInput31610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2578 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2578 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31610 hH))).trans (reductionSound2578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput145 (3 : Fin 6)) = canonicalInput31662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2583 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31662 hH))).trans (reductionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput145 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9945 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2914 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2914 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9945 hH))).trans (oldProjectionSound2914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput145 (5 : Fin 6)) = canonicalInput31666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1928 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput145 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1928 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31666 hH))).trans (reductionSound1928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput145 (j : Fin 6)))
    288 1440 ![1440, 1440, 288, 288, 720, 1440] ![-288, -288, -1440, -1440, -576, -288] (extendRow Arithmetic.row145) ![oldProjection1552, reductionProjection2590, reductionProjection2578, reductionProjection2583, oldProjection2914, reductionProjection1928]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput149 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3], ![-2, -1, -1, 4]]

theorem rowSound149 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 149) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row149 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row149 H]
  have hshape : boundaryInput149 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput149 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1551, reductionProjection2575, oldProjection2936, reductionProjection2588, oldProjection2913, reductionProjection1924] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput149 (0 : Fin 6)) = canonicalInput30168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1551 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1551 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30168 hH))).trans (oldProjectionSound1551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput149 (1 : Fin 6)) = canonicalInput31311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2575 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2575 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31311 hH))).trans (reductionSound2575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput149 (2 : Fin 6)) = canonicalInput31340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2936 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2936 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31340 hH))).trans (oldProjectionSound2936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput149 (3 : Fin 6)) = canonicalInput31408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2588 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31408 hH))).trans (reductionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput149 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9890 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2913 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2913 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9890 hH))).trans (oldProjectionSound2913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput149 (5 : Fin 6)) = canonicalInput31409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1924 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput149 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1924 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31409 hH))).trans (reductionSound1924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput149 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 720, 1440, 1440] ![-1440, -7200, -7200, -2880, -1440, -1440] (extendRow Arithmetic.row149) ![oldProjection1551, reductionProjection2575, oldProjection2936, reductionProjection2588, oldProjection2913, reductionProjection1924]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput311 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -2, 4, -1]]

theorem rowSound311 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 311) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row311 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row311 H]
  have hshape : boundaryInput311 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput311 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection2449, oldProjection2936, reductionProjection2399, reductionProjection2399, reductionProjection2586, reductionProjection842] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput311 (0 : Fin 6)) = canonicalInput20355.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2449 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2449 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20355 hH))).trans (reductionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput311 (1 : Fin 6)) = canonicalInput28058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2936 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2936 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28058 hH))).trans (oldProjectionSound2936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput311 (2 : Fin 6)) = canonicalInput29751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29751 hH))).trans (reductionSound2399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput311 (3 : Fin 6)) = canonicalInput29970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29970 hH))).trans (reductionSound2399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput311 (4 : Fin 6)) = canonicalInput29975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2586 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2586 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29975 hH))).trans (reductionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput311 (5 : Fin 6)) = canonicalInput29976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection842 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput311 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection842 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29976 hH))).trans (reductionSound842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput311 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 1440, 720] ![-1440, -7200, -1440, -1440, -1440, -2880] (extendRow Arithmetic.row311) ![reductionProjection2449, oldProjection2936, reductionProjection2399, reductionProjection2399, reductionProjection2586, reductionProjection842]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput147 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -1, -1, 4]]

theorem rowSound147 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 147) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row147 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row147 H]
  have hshape : boundaryInput147 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput147 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1605, oldProjection2937, reductionProjection2594, reductionProjection2597, oldProjection2938, reductionProjection1939] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput147 (0 : Fin 6)) = canonicalInput30194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1605 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30194 hH))).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput147 (1 : Fin 6)) = canonicalInput31441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31441 hH))).trans (oldProjectionSound2937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput147 (2 : Fin 6)) = canonicalInput31516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2594 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2594 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31516 hH))).trans (reductionSound2594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput147 (3 : Fin 6)) = canonicalInput31561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2597 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2597 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31561 hH))).trans (reductionSound2597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput147 (4 : Fin 6)) = canonicalInput31571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2938 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2938 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31571 hH))).trans (oldProjectionSound2938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput147 (5 : Fin 6)) = canonicalInput31572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput147 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31572 hH))).trans (reductionSound1939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput147 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 360, 1440] ![-1440, -1440, -7200, -1440, -5760, -1440] (extendRow Arithmetic.row147) ![oldProjection1605, oldProjection2937, reductionProjection2594, reductionProjection2597, oldProjection2938, reductionProjection1939]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput150 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -1, -1, 4]]

theorem rowSound150 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 150) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row150 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row150 H]
  have hshape : boundaryInput150 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput150 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1563, reductionProjection2581, reductionProjection2592, oldProjection2937, oldProjection2921, reductionProjection1935] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput150 (0 : Fin 6)) = canonicalInput30173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1563 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1563 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30173 hH))).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput150 (1 : Fin 6)) = canonicalInput31316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2581 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2581 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31316 hH))).trans (reductionSound2581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput150 (2 : Fin 6)) = canonicalInput31426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection2592 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection2592 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31426 hH))).trans (reductionSound2592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput150 (3 : Fin 6)) = canonicalInput31441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31441 hH))).trans (oldProjectionSound2937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput150 (4 : Fin 6)) = canonicalInput31446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2921 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2921 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31446 hH))).trans (oldProjectionSound2921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput150 (5 : Fin 6)) = canonicalInput31447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1935 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput150 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1935 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31447 hH))).trans (reductionSound1935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput150 (j : Fin 6)))
    720 1440 ![1440, 288, 288, 1440, 1440, 1440] ![-720, -3600, -3600, -720, -720, -720] (extendRow Arithmetic.row150) ![oldProjection1563, reductionProjection2581, reductionProjection2592, oldProjection2937, oldProjection2921, reductionProjection1935]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics

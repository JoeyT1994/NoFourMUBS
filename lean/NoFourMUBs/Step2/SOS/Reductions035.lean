import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical024
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical083
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical210
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions034
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical131
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical61
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical73
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1120 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (247, -40), (434, -180), (1242, -360), (1251, -10), (1388, 60)]

def reductionPivot1120 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound1120 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode544).moment H =
      Integer.Sparse.eval reductionProjection1120 (momentVector H) := by
  have heq : reductionPivot1120 = (fun u v => (normalNode544).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode544).moment H = injectiveMoment H reductionPivot1120 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode544).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1120 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1120 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 180, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1120 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection477, oldProjection987, reductionProjection709, reductionProjection709] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1120 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1120 (1 : Fin 4)) = canonicalInput1599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection987 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1599 hH))).trans (oldProjectionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1120 (2 : Fin 4)) = canonicalInput1494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1494 hH))).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1120 (3 : Fin 4)) = canonicalInput1491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1120 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1491 hH))).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode544).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1120 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode544).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1120 (j : Fin 4)))
      2 360 360 2 ![1, 180, 1, 1] ![360, 2, 360, 360] reductionProjection1120 ![oldProjection477, oldProjection987, reductionProjection709, reductionProjection709]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1121 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -60), (81, -480), (94, 160), (247, 400), (434, 1440), (542, 720), (683, -240), (696, -240), (697, -720), (698, 480), (704, 80), (1058, -480), (1059, 80), (1125, 720), (1226, 80), (1227, 240), (1242, 2880), (1250, 120), (1251, -45), (1388, -480)]

def reductionPivot1121 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1121 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode533).moment H =
      Integer.Sparse.eval reductionProjection1121 (momentVector H) := by
  have heq : reductionPivot1121 = (fun u v => (normalNode533).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode533).moment H = injectiveMoment H reductionPivot1121 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode533).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1121 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1121 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1121 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1649, oldProjection1506, reductionProjection1112, reductionProjection1120, reductionProjection1034] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1121 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1121 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1506⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1506 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1121 (2 : Fin 5)) = (normalNode555).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1112 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1121 (3 : Fin 5)) = (normalNode544).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1120 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1121 (4 : Fin 5)) = (normalNode543).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1034 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1121 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1034 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode533).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1121 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode533).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1121 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 360, 1440] ![1, 1, 1, 4, 1] reductionProjection1121 ![oldProjection1649, oldProjection1506, reductionProjection1112, reductionProjection1120, reductionProjection1034]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1122 : Integer.Sparse (Fin 1613) := [(0, 1), (549, -720), (698, -160), (1126, -720), (1219, 240), (1226, -80), (1227, -160), (1242, -720), (1251, 15)]

def reductionPivot1122 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound1122 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode556).moment H =
      Integer.Sparse.eval reductionProjection1122 (momentVector H) := by
  have heq : reductionPivot1122 = (fun u v => (normalNode556).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode556).moment H = injectiveMoment H reductionPivot1122 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode556).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1122 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1122 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1122 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1208, oldProjection502, reductionProjection709, oldProjection682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1122 (0 : Fin 4)) = canonicalInput13496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13496 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1122 (1 : Fin 4)) = canonicalInput1760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1760 hH))).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1122 (2 : Fin 4)) = canonicalInput1494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1494 hH))).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1122 (3 : Fin 4)) = canonicalInput1482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1122 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1482 hH))).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode556).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1122 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode556).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1122 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1122 ![oldProjection1208, oldProjection502, reductionProjection709, oldProjection682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1123 : Integer.Sparse (Fin 1613) := [(0, 1), (243, -80), (695, 240), (696, 240), (697, 480), (698, -240), (700, -80), (1059, -80), (1226, -80), (1227, -80), (1242, -720), (1251, 15), (1323, 240), (1389, 240)]

def reductionPivot1123 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound1123 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode551).moment H =
      Integer.Sparse.eval reductionProjection1123 (momentVector H) := by
  have heq : reductionPivot1123 = (fun u v => (normalNode551).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode551).moment H = injectiveMoment H reductionPivot1123 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode551).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1123 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1123 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1123 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1276, oldProjection1256, reductionProjection709, reductionProjection704] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1123 (0 : Fin 4)) = canonicalInput4898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4898 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1123 (1 : Fin 4)) = canonicalInput1616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1256 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1616 hH))).trans (oldProjectionSound1256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1123 (2 : Fin 4)) = canonicalInput1491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1491 hH))).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1123 (3 : Fin 4)) = canonicalInput1488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection704 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1123 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1488 hH))).trans (reductionSound704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode551).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1123 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode551).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1123 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 9] ![2, 160, 1440, 160] reductionProjection1123 ![oldProjection1276, oldProjection1256, reductionProjection709, reductionProjection704]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1124 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -40), (94, 110), (243, 80), (247, 240), (434, 720), (486, 720), (549, 720), (669, 720), (695, -240), (696, -240), (697, -720), (698, 800), (700, 160), (1058, -240), (1059, 240), (1126, 720), (1219, -240), (1226, 240), (1227, 400), (1242, 2160), (1250, 60), (1251, -95), (1261, 720), (1323, -240), (1388, -240), (1389, -240)]

def reductionPivot1124 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound1124 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode535).moment H =
      Integer.Sparse.eval reductionProjection1124 (momentVector H) := by
  have heq : reductionPivot1124 = (fun u v => (normalNode535).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode535).moment H = injectiveMoment H reductionPivot1124 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode535).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1124 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1124 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1124 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1652, oldProjection1506, reductionProjection1122, reductionProjection1052, reductionProjection1123] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1124 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1652 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1124 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1214 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1506 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1214 hH))).trans (oldProjectionSound1506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1124 (2 : Fin 5)) = (normalNode556).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1122 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1124 (3 : Fin 5)) = (normalNode553).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1052 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1124 (4 : Fin 5)) = (normalNode551).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1123 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1124 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode535).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1124 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode535).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1124 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 1440] ![1, 1, 1, 720, 1] reductionProjection1124 ![oldProjection1652, oldProjection1506, reductionProjection1122, reductionProjection1052, reductionProjection1123]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1125 : Integer.Sparse (Fin 1613) := [(0, 1), (547, -720), (697, 240), (698, -80), (1126, -720), (1227, -80), (1251, 15), (1261, -720), (1389, 240)]

def reductionPivot1125 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]

theorem reductionSound1125 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode557).moment H =
      Integer.Sparse.eval reductionProjection1125 (momentVector H) := by
  have heq : reductionPivot1125 = (fun u v => (normalNode557).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode557).moment H = injectiveMoment H reductionPivot1125 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode557).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1125 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1125 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1125 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1276, reductionProjection1083, reductionProjection1047, oldProjection682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1125 (0 : Fin 4)) = canonicalInput13850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13850 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1125 (1 : Fin 4)) = canonicalInput1766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1766 hH))).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1125 (2 : Fin 4)) = canonicalInput1495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1495 hH))).trans (reductionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1125 (3 : Fin 4)) = canonicalInput1482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1125 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1482 hH))).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode557).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1125 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode557).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1125 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1125 ![oldProjection1276, reductionProjection1083, reductionProjection1047, oldProjection682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1126 : Integer.Sparse (Fin 1613) := [(0, 2), (56, 240), (81, 240), (94, -25), (503, -720), (683, 240), (695, 240), (696, 240), (697, 240), (698, -160), (700, -80), (704, -80), (1059, -80), (1251, -15)]

def reductionPivot1126 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound1126 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode552).moment H =
      Integer.Sparse.eval reductionProjection1126 (momentVector H) := by
  have heq : reductionPivot1126 = (fun u v => (normalNode552).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode552).moment H = injectiveMoment H reductionPivot1126 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode552).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1126 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1126 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1126 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1007, reductionProjection783, reductionProjection1078, reductionProjection152] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1126 (0 : Fin 4)) = canonicalInput4899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4899 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1126 (1 : Fin 4)) = canonicalInput1617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection783 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1617 hH))).trans (reductionSound783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1126 (2 : Fin 4)) = canonicalInput1492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1492 hH))).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1126 (3 : Fin 4)) = canonicalInput1489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection152 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1126 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1489 hH))).trans (reductionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode552).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1126 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode552).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1126 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 72] ![2, 160, 1440, 20] reductionProjection1126 ![oldProjection1007, reductionProjection783, reductionProjection1078, reductionProjection152]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1127 : Integer.Sparse (Fin 1613) := [(19, -4), (56, -48), (81, -96), (94, 15), (247, 16), (433, 144), (486, 144), (503, 144), (547, 144), (669, 144), (683, -48), (695, -48), (696, -48), (697, -192), (698, 160), (700, 48), (704, 16), (1055, -48), (1058, -48), (1059, 80), (1126, 144), (1219, -96), (1227, 64), (1242, 144), (1250, 12), (1251, -29), (1261, 288), (1389, -48)]

def reductionPivot1127 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound1127 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode536).moment H =
      Integer.Sparse.eval reductionProjection1127 (momentVector H) := by
  have heq : reductionPivot1127 = (fun u v => (normalNode536).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode536).moment H = injectiveMoment H reductionPivot1127 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode536).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1127 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1127 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1127 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1653, oldProjection1508, reductionProjection1125, reductionProjection1052, reductionProjection1126] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1127 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1653 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1127 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1508⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1508 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1127 (2 : Fin 5)) = (normalNode557).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1125 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1127 (3 : Fin 5)) = canonicalInput1475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1052 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1475 hH))).trans (reductionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1127 (4 : Fin 5)) = (normalNode552).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1126 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1127 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode536).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1127 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode536).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1127 (j : Fin 5)))
      1 288 1440 5 ![1440, 720, 1440, 2, 1440] ![1, 2, 1, 720, 1] reductionProjection1127 ![oldProjection1653, oldProjection1508, reductionProjection1125, reductionProjection1052, reductionProjection1126]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1128 : Integer.Sparse (Fin 1613) := [(73, 24), (94, -1), (436, -72), (683, 48), (696, 24), (698, -16), (700, -32), (704, -16), (1251, -1)]

def reductionPivot1128 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]

theorem reductionSound1128 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode559).moment H =
      Integer.Sparse.eval reductionProjection1128 (momentVector H) := by
  have heq : reductionPivot1128 = (fun u v => (normalNode559).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode559).moment H = injectiveMoment H reductionPivot1128 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode559).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1128 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1128 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1128 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1015, reductionProjection1105, reductionProjection152, reductionProjection1062] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1128 (0 : Fin 4)) = canonicalInput13851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1015 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13851 hH))).trans (oldProjectionSound1015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1128 (1 : Fin 4)) = canonicalInput1767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1105 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1767 hH))).trans (reductionSound1105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1128 (2 : Fin 4)) = canonicalInput1496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection152 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1496 hH))).trans (reductionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1128 (3 : Fin 4)) = canonicalInput1484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1128 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1484 hH))).trans (reductionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode559).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1128 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode559).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1128 (j : Fin 4)))
      2 144 144 2 ![72, 72, 72, 1] ![2, 2, 2, 144] reductionProjection1128 ![oldProjection1015, reductionProjection1105, reductionProjection152, reductionProjection1062]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1129 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -4), (73, -48), (81, -96), (94, 13), (241, 16), (423, 144), (436, 144), (542, 288), (683, -96), (696, -48), (697, -192), (698, 176), (700, 64), (704, 32), (1050, -48), (1052, -144), (1058, -48), (1059, 96), (1125, 288), (1227, 32), (1242, 288), (1250, 12), (1251, -21)]

def reductionPivot1129 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound1129 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode538).moment H =
      Integer.Sparse.eval reductionProjection1129 (momentVector H) := by
  have heq : reductionPivot1129 = (fun u v => (normalNode538).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode538).moment H = injectiveMoment H reductionPivot1129 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode538).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1129 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1129 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1129 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1654, oldProjection1507, reductionProjection1128, reductionProjection1112, reductionProjection1112] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1129 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1129 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1217 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1507 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1217 hH))).trans (oldProjectionSound1507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1129 (2 : Fin 5)) = (normalNode559).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1128 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1129 (3 : Fin 5)) = canonicalInput1478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1112 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1478 hH))).trans (reductionSound1112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1129 (4 : Fin 5)) = (normalNode555).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1112 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1129 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode538).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1129 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode538).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1129 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 144, 1440, 1440] ![1, 1, 10, 1, 1] reductionProjection1129 ![oldProjection1654, oldProjection1507, reductionProjection1128, reductionProjection1112, reductionProjection1112]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1130 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (76, -240), (81, -240), (90, 80), (94, 100), (241, 240), (243, 80), (426, 720), (547, 720), (549, 720), (683, -240), (696, -240), (697, -480), (698, 1040), (700, 80), (704, 80), (913, 720), (1055, -240), (1058, -240), (1126, 1440), (1219, -240), (1226, 400), (1227, 320), (1242, 720), (1250, 60), (1251, -85), (1261, 720), (1323, -240), (1389, -240)]

def reductionPivot1130 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1130 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode540).moment H =
      Integer.Sparse.eval reductionProjection1130 (momentVector H) := by
  have heq : reductionPivot1130 = (fun u v => (normalNode540).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode540).moment H = injectiveMoment H reductionPivot1130 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode540).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1130 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1130 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1130 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1655, oldProjection1504, reductionProjection733, reductionProjection1125, reductionProjection1122] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1130 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1130 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1219 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1504 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1219 hH))).trans (oldProjectionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1130 (2 : Fin 5)) = (normalNode560).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection733 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1130 (3 : Fin 5)) = canonicalInput1480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1125 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1480 hH))).trans (reductionSound1125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1130 (4 : Fin 5)) = (normalNode556).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1122 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1130 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode540).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1130 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode540).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1130 (j : Fin 5)))
      1 1440 1440 1 ![72, 288, 1440, 1440, 1440] ![20, 5, 1, 1, 1] reductionProjection1130 ![oldProjection1655, oldProjection1504, reductionProjection733, reductionProjection1125, reductionProjection1122]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1131 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (426, -72), (698, -16), (913, -72), (1055, 24), (1126, -72), (1251, 3)]

def reductionPivot1131 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]

theorem reductionSound1131 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode541).moment H =
      Integer.Sparse.eval reductionProjection1131 (momentVector H) := by
  have heq : reductionPivot1131 = (fun u v => (normalNode541).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode541).moment H = injectiveMoment H reductionPivot1131 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode541).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1131 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1131 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1131 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection473, oldProjection976, reductionProjection202, oldProjection682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1131 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1131 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1220 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection976 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1220 hH))).trans (oldProjectionSound976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1131 (2 : Fin 4)) = canonicalInput1485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1485 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1131 (3 : Fin 4)) = canonicalInput1482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1131 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1482 hH))).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode541).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1131 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode541).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1131 (j : Fin 4)))
      2 144 144 2 ![1, 72, 1, 1] ![144, 2, 144, 144] reductionProjection1131 ![oldProjection473, oldProjection976, reductionProjection202, oldProjection682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1132 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (94, -30), (243, -80), (696, 240), (698, -240), (1058, 240), (1226, -160), (1227, -80), (1250, -60), (1251, -5), (1261, -720), (1323, 240)]

def reductionPivot1132 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound1132 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode542).moment H =
      Integer.Sparse.eval reductionProjection1132 (momentVector H) := by
  have heq : reductionPivot1132 = (fun u v => (normalNode542).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode542).moment H = injectiveMoment H reductionPivot1132 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode542).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1132 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1132 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1132 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1277, oldProjection1222, reductionProjection1047, reductionProjection704] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1132 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1793 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1793 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1132 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1223 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1223 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1132 (2 : Fin 4)) = canonicalInput1490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1490 hH))).trans (reductionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1132 (3 : Fin 4)) = canonicalInput1488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection704 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1132 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1488 hH))).trans (reductionSound704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode542).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1132 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode542).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1132 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1, 9] ![2, 2, 1440, 160] reductionProjection1132 ![oldProjection1277, oldProjection1222, reductionProjection1047, reductionProjection704]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1133 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (462, -720), (695, 240), (697, 240), (698, -240), (700, -320), (1052, 240), (1059, -80), (1251, 15)]

def reductionPivot1133 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]

theorem reductionSound1133 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode679).moment H =
      Integer.Sparse.eval reductionProjection1133 (momentVector H) := by
  have heq : reductionPivot1133 = (fun u v => (normalNode679).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode679).moment H = injectiveMoment H reductionPivot1133 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode679).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1133 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1133 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1133 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection806, oldProjection804, oldProjection482, reductionProjection783] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1133 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1964 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection806 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1964 hH))).trans (oldProjectionSound806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1133 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1265 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1265 hH))).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1133 (2 : Fin 4)) = canonicalInput1609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection482 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1609 hH))).trans (oldProjectionSound482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1133 (3 : Fin 4)) = canonicalInput1603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection783 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1133 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1603 hH))).trans (reductionSound783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode679).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1133 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode679).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1133 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 9] ![160, 2, 1440, 160] reductionProjection1133 ![oldProjection806, oldProjection804, oldProjection482, reductionProjection783]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1134 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (484, -720), (503, -720), (698, -80), (1052, 240), (1059, -80), (1125, -720), (1251, 15)]

def reductionPivot1134 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound1134 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode554).moment H =
      Integer.Sparse.eval reductionProjection1134 (momentVector H) := by
  have heq : reductionPivot1134 = (fun u v => (normalNode554).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode554).moment H = injectiveMoment H reductionPivot1134 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode554).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1134 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1134 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1134 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1190, oldProjection488, reductionProjection1078, reductionProjection1030] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1134 (0 : Fin 4)) = canonicalInput13495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1190 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13495 hH))).trans (oldProjectionSound1190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1134 (1 : Fin 4)) = canonicalInput1759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1759 hH))).trans (oldProjectionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1134 (2 : Fin 4)) = canonicalInput1493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1493 hH))).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1134 (3 : Fin 4)) = canonicalInput1479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1134 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1479 hH))).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode554).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1134 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode554).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1134 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1134 ![oldProjection1190, oldProjection488, reductionProjection1078, reductionProjection1030]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1135 : Integer.Sparse (Fin 1613) := [(0, -1), (56, -48), (76, -48), (81, -96), (90, 16), (94, 10), (243, 16), (462, 144), (484, 144), (503, 144), (542, 144), (668, 144), (683, -48), (695, -48), (696, -48), (697, -144), (698, 128), (700, 80), (704, 16), (913, 144), (1052, -96), (1059, 64), (1125, 288), (1221, -48), (1226, 16), (1227, 16), (1242, 144), (1251, -13), (1323, -48), (1389, -48)]

def reductionPivot1135 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1135 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode546).moment H =
      Integer.Sparse.eval reductionProjection1135 (momentVector H) := by
  have heq : reductionPivot1135 = (fun u v => (normalNode546).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode546).moment H = injectiveMoment H reductionPivot1135 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode546).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1135 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1135 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1135 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1838, reductionProjection1133, reductionProjection733, reductionProjection1112, reductionProjection1134] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1135 (0 : Fin 5)) = canonicalInput4884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1838 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4884 hH))).trans (oldProjectionSound1838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1135 (1 : Fin 5)) = canonicalInput1606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1133 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1606 hH))).trans (reductionSound1133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1135 (2 : Fin 5)) = (normalNode560).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection733 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1135 (3 : Fin 5)) = canonicalInput1478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1112 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1478 hH))).trans (reductionSound1112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1135 (4 : Fin 5)) = (normalNode554).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1134 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1135 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode546).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1135 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode546).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1135 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection1135 ![oldProjection1838, reductionProjection1133, reductionProjection733, reductionProjection1112, reductionProjection1134]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1136 : Integer.Sparse (Fin 1613) := [(636, 1)]

theorem reductionSound1136 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code636).moment H =
      Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
  have hc : coordinates (636 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code636) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1136, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1137 : Integer.Sparse (Fin 1613) := [(0, -1), (563, -720), (636, -720), (666, -720), (698, -80), (1227, -160), (1251, 25), (1389, 240)]

def reductionPivot1137 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -2, 1]]

theorem reductionSound1137 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2575).moment H =
      Integer.Sparse.eval reductionProjection1137 (momentVector H) := by
  have heq : reductionPivot1137 = (fun u v => (normalNode2575).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2575).moment H = injectiveMoment H reductionPivot1137 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2575).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1137 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1137 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1137 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1078, reductionProjection1136, reductionProjection1046, oldProjection520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1137 (0 : Fin 4)) = canonicalInput18219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18219 hH))).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1137 (1 : Fin 4)) = canonicalInput5352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5352 hH))).trans (reductionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1137 (2 : Fin 4)) = canonicalInput4907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4907 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1137 (3 : Fin 4)) = canonicalInput4888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection520 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1137 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4888 hH))).trans (oldProjectionSound520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2575).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1137 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2575).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1137 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1137 ![oldProjection1078, reductionProjection1136, reductionProjection1046, oldProjection520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1138 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (160, -720), (170, -720), (462, -720), (698, -80), (1059, -80), (1221, 240), (1251, 15)]

def reductionPivot1138 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, 0, -1, -1]]

theorem reductionSound1138 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode674).moment H =
      Integer.Sparse.eval reductionProjection1138 (momentVector H) := by
  have heq : reductionPivot1138 = (fun u v => (normalNode674).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode674).moment H = injectiveMoment H reductionPivot1138 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode674).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1138 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1138 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1138 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection844, reductionProjection837, oldProjection482, oldProjection407] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1138 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2363 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2363 hH))).trans (oldProjectionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1138 (1 : Fin 4)) = canonicalInput1711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection837 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1711 hH))).trans (reductionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1138 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1227 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection482 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1227 hH))).trans (oldProjectionSound482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1138 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node407⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection407 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1138 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode674).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1138 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode674).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1138 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1138 ![oldProjection844, reductionProjection837, oldProjection482, oldProjection407]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1139 : Integer.Sparse (Fin 1613) := [(183, 1)]

theorem reductionSound1139 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code183).moment H =
      Integer.Sparse.eval reductionProjection1139 (momentVector H) := by
  have hc : coordinates (183 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code183) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1139, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1140 : Integer.Sparse (Fin 1613) := [(81, 48), (94, -1), (183, -144), (682, 48), (698, -16), (912, -144), (1226, -16), (1251, 3), (1263, -144)]

def reductionPivot1140 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -2, 1]]

theorem reductionSound1140 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode561).moment H =
      Integer.Sparse.eval reductionProjection1140 (momentVector H) := by
  have heq : reductionPivot1140 = (fun u v => (normalNode561).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode561).moment H = injectiveMoment H reductionPivot1140 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode561).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1140 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1140 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1140 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection824, reductionProjection1139, reductionProjection1048, reductionProjection1069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1140 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1140 (1 : Fin 4)) = canonicalInput1769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1139 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1769 hH))).trans (reductionSound1139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1140 (2 : Fin 4)) = canonicalInput1498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1048 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1498 hH))).trans (reductionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1140 (3 : Fin 4)) = canonicalInput1486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1069 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1140 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1486 hH))).trans (reductionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode561).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1140 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode561).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1140 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection1140 ![oldProjection824, reductionProjection1139, reductionProjection1048, reductionProjection1069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1141 : Integer.Sparse (Fin 1613) := [(148, 1)]

theorem reductionSound1141 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code148).moment H =
      Integer.Sparse.eval reductionProjection1141 (momentVector H) := by
  have hc : coordinates (148 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code148) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1141, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1142 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -480), (94, 5), (148, -1440), (160, 720), (170, 720), (183, 720), (462, 720), (547, 720), (563, 720), (636, 720), (666, 720), (682, -240), (697, -240), (698, 320), (912, 720), (1059, 80), (1126, 720), (1221, -240), (1226, 80), (1227, 240), (1251, -70), (1261, 720), (1263, 720), (1389, -480)]

def reductionPivot1142 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound1142 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode547).moment H =
      Integer.Sparse.eval reductionProjection1142 (momentVector H) := by
  have heq : reductionPivot1142 = (fun u v => (normalNode547).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode547).moment H = injectiveMoment H reductionPivot1142 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode547).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1142 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1142 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1142 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1137, reductionProjection1138, reductionProjection1140, reductionProjection1125, reductionProjection1141] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1142 (0 : Fin 5)) = (normalNode2575).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1137 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1142 (1 : Fin 5)) = canonicalInput1607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1138 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1607 hH))).trans (reductionSound1138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1142 (2 : Fin 5)) = (normalNode561).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1140 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1142 (3 : Fin 5)) = canonicalInput1480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1125 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1480 hH))).trans (reductionSound1125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1142 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code148).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1141 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1142 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode547).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1142 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode547).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1142 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 1440, 1] ![1, 1, 5, 1, 1440] reductionProjection1142 ![reductionProjection1137, reductionProjection1138, reductionProjection1140, reductionProjection1125, reductionProjection1141]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1143 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -12), (696, 12), (698, -12), (912, -36), (1226, -8), (1251, 1), (1323, 24)]

def reductionPivot1143 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]

theorem reductionSound1143 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode562).moment H =
      Integer.Sparse.eval reductionProjection1143 (momentVector H) := by
  have heq : reductionPivot1143 = (fun u v => (normalNode562).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode562).moment H = injectiveMoment H reductionPivot1143 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode562).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1143 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1143 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1143 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1214, oldProjection1074, reductionProjection704, reductionProjection1069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1143 (0 : Fin 4)) = canonicalInput13500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13500 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1143 (1 : Fin 4)) = canonicalInput1763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1763 hH))).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1143 (2 : Fin 4)) = canonicalInput1497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection704 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1497 hH))).trans (reductionSound704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1143 (3 : Fin 4)) = canonicalInput1486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1069 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1143 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1486 hH))).trans (reductionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode562).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1143 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode562).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1143 (j : Fin 4)))
      2 72 72 2 ![72, 72, 9, 1] ![1, 1, 8, 72] reductionProjection1143 ![oldProjection1214, oldProjection1074, reductionProjection704, reductionProjection1069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1144 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 5), (241, 80), (243, 240), (462, 720), (549, 1440), (666, 720), (695, -240), (696, -240), (697, -720), (698, 960), (700, 160), (912, 720), (1059, 160), (1126, 1440), (1219, -480), (1226, 320), (1227, 480), (1242, 1440), (1251, -140), (1323, -480), (1389, -480)]

def reductionPivot1144 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound1144 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode548).moment H =
      Integer.Sparse.eval reductionProjection1144 (momentVector H) := by
  have heq : reductionPivot1144 = (fun u v => (normalNode548).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode548).moment H = injectiveMoment H reductionPivot1144 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode548).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1144 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1144 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 72, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1144 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1837, oldProjection1509, reductionProjection1143, reductionProjection1122, reductionProjection1122] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1144 (0 : Fin 5)) = canonicalInput4887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1837 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4887 hH))).trans (oldProjectionSound1837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1144 (1 : Fin 5)) = canonicalInput1608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1509 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1608 hH))).trans (oldProjectionSound1509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1144 (2 : Fin 5)) = (normalNode562).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1143 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1144 (3 : Fin 5)) = canonicalInput1481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1122 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1481 hH))).trans (reductionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1144 (4 : Fin 5)) = (normalNode556).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1122 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1144 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode548).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1144 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode548).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1144 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 72, 1440, 1440] ![1, 1, 20, 1, 1] reductionProjection1144 ![oldProjection1837, oldProjection1509, reductionProjection1143, reductionProjection1122, reductionProjection1122]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1145 : Integer.Sparse (Fin 1613) := [(147, 1)]

theorem reductionSound1145 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code147).moment H =
      Integer.Sparse.eval reductionProjection1145 (momentVector H) := by
  have hc : coordinates (147 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code147) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1145, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1146 : Integer.Sparse (Fin 1613) := [(94, -1), (458, -144), (478, -144), (698, -16), (1052, 48), (1221, 48), (1226, -16), (1251, 3), (1261, -144)]

def reductionPivot1146 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 1, -2, 0]]

theorem reductionSound1146 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode558).moment H =
      Integer.Sparse.eval reductionProjection1146 (momentVector H) := by
  have heq : reductionPivot1146 = (fun u v => (normalNode558).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode558).moment H = injectiveMoment H reductionPivot1146 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode558).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1146 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1146 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1146 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1223, oldProjection484, reductionProjection1047, oldProjection480] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1146 (0 : Fin 4)) = canonicalInput13497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1223 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13497 hH))).trans (oldProjectionSound1223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1146 (1 : Fin 4)) = canonicalInput1761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1761 hH))).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1146 (2 : Fin 4)) = canonicalInput1495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1495 hH))).trans (reductionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1146 (3 : Fin 4)) = canonicalInput1483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection480 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1146 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1483 hH))).trans (oldProjectionSound480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode558).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1146 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode558).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1146 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection1146 ![oldProjection1223, oldProjection484, reductionProjection1047, oldProjection480]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1147 : Integer.Sparse (Fin 1613) := [(151, 1)]

theorem reductionSound1147 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code151).moment H =
      Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
  have hc : coordinates (151 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code151) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1147, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1148 : Integer.Sparse (Fin 1613) := [(82, -3), (238, -3), (241, 1), (243, 1), (698, 1)]

def reductionPivot1148 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![1, 2, -4, 1], ![2, -2, 2, -2]]

theorem reductionSound1148 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7050).moment H =
      Integer.Sparse.eval reductionProjection1148 (momentVector H) := by
  have heq : reductionPivot1148 = (fun u v => (normalNode7050).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7050).moment H = injectiveMoment H reductionPivot1148 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7050).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7050).entries)).symm
  have hshape : reductionPivot1148 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1148 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1148 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection112, oldProjection151, oldProjection146] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1148 (0 : Fin 3)) = canonicalInput572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1148 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection112 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1148 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound572 hH))).trans (oldProjectionSound112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1148 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4194 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1148 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection151 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1148 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4194 hH))).trans (oldProjectionSound151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1148 (2 : Fin 3)) = canonicalInput9464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1148 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection146 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1148 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9464 hH))).trans (oldProjectionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7050).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1148 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7050).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1148 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1148 ![oldProjection112, oldProjection151, oldProjection146]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1149 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (56, 240), (82, 240), (238, 480), (241, -80), (243, -80), (695, 240), (698, -240), (700, -160), (1058, 480), (1059, -160), (1250, -60), (1251, 15)]

def reductionPivot1149 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, 1, 0, -3]]

theorem reductionSound1149 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode797).moment H =
      Integer.Sparse.eval reductionProjection1149 (momentVector H) := by
  have heq : reductionPivot1149 = (fun u v => (normalNode797).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode797).moment H = injectiveMoment H reductionPivot1149 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode797).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1149 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1149 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1149 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection783, oldProjection1052, oldProjection1255, reductionProjection1148] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1149 (0 : Fin 4)) = canonicalInput2235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection783 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2235 hH))).trans (reductionSound783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1149 (1 : Fin 4)) = canonicalInput1914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1914 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1149 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1278 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1255 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1278 hH))).trans (oldProjectionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1149 (3 : Fin 4)) = canonicalInput1872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1148 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1149 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1872 hH))).trans (reductionSound1148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode797).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1149 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode797).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1149 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 9, 9] ![160, 2, 160, 160] reductionProjection1149 ![reductionProjection783, oldProjection1052, oldProjection1255, reductionProjection1148]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1150 : Integer.Sparse (Fin 1613) := [(152, 1)]

theorem reductionSound1150 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code152).moment H =
      Integer.Sparse.eval reductionProjection1150 (momentVector H) := by
  have hc : coordinates (152 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code152) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1150, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1151 : Integer.Sparse (Fin 1613) := [(152, -3), (153, -3), (159, -3), (690, 1), (1044, 1), (1050, 1)]

def reductionPivot1151 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 0, 2, -2], ![2, 1, 0, -3]]

theorem reductionSound1151 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode570).moment H =
      Integer.Sparse.eval reductionProjection1151 (momentVector H) := by
  have heq : reductionPivot1151 = (fun u v => (normalNode570).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode570).moment H = injectiveMoment H reductionPivot1151 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode570).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1151 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1151 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1151 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection789, reductionProjection547, oldProjection405, reductionProjection1150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1151 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1804 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1804 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1151 (1 : Fin 4)) = canonicalInput1624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection547 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1624 hH))).trans (reductionSound547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1151 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node405⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection405 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1151 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code152).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1151 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode570).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1151 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode570).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1151 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection1151 ![oldProjection789, reductionProjection547, oldProjection405, reductionProjection1150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

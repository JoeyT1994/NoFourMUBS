import NoFourMUBs.Step2.SOS.Canonical120
import NoFourMUBs.Step2.SOS.Canonical121
import NoFourMUBs.Step2.SOS.Canonical122
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical124
import NoFourMUBs.Step2.SOS.Canonical133
import NoFourMUBs.Step2.SOS.Canonical134
import NoFourMUBs.Step2.SOS.Canonical135
import NoFourMUBs.Step2.SOS.Canonical136
import NoFourMUBs.Step2.SOS.Canonical138
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical174
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions123
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions240
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical109
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical110
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical111
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical112
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical113
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical116
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical118
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical119
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical143
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical156
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection7712 : Integer.Sparse (Fin 1613) := [(100, 3), (102, 6), (105, -1), (106, -1), (228, 3), (241, -3), (243, -5), (698, -3), (1223, 9), (1225, -1), (1226, -1)]

def reductionPivot7712 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 1, 2, -4]]

theorem reductionSound7712 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4087).moment H =
      Integer.Sparse.eval reductionProjection7712 (momentVector H) := by
  have heq : reductionPivot7712 = (fun u v => (normalNode4087).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4087).moment H = injectiveMoment H reductionPivot7712 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4087).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7712 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7712 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7712 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1251, oldProjection1254, oldProjection1234, reductionProjection6642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7712 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3826 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1251 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3826 hH))).trans (oldProjectionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7712 (1 : Fin 4)) = canonicalInput7885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1254 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7885 hH))).trans (oldProjectionSound1254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7712 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3583 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3583 hH))).trans (oldProjectionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7712 (3 : Fin 4)) = canonicalInput7870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6642 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7712 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7870 hH))).trans (reductionSound6642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4087).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7712 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4087).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7712 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection7712 ![oldProjection1251, oldProjection1254, oldProjection1234, reductionProjection6642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7713 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 25), (100, -240), (102, -720), (105, 80), (106, 80), (156, 720), (158, 1440), (228, -480), (241, 640), (243, 960), (691, -240), (698, 1600), (700, 80), (1052, -240), (1057, -240), (1058, -240), (1092, 720), (1219, -720), (1223, -1920), (1225, 160), (1226, 1040), (1227, 720), (1251, -120)]

def reductionPivot7713 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 1, 1, -3]]

theorem reductionSound7713 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4065).moment H =
      Integer.Sparse.eval reductionProjection7713 (momentVector H) := by
  have heq : reductionPivot7713 = (fun u v => (normalNode4065).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4065).moment H = injectiveMoment H reductionPivot7713 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4065).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7713 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7713 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 6, 1440, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7713 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection908, reductionProjection7711, reductionProjection1171, oldProjection1758, reductionProjection7712] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7713 (0 : Fin 5)) = (normalNode4501).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection908 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7713 (1 : Fin 5)) = (normalNode4100).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7711 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7713 (2 : Fin 5)) = canonicalInput7719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1171 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7719 hH))).trans (reductionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7713 (3 : Fin 5)) = canonicalInput7710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7710 hH))).trans (oldProjectionSound1758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7713 (4 : Fin 5)) = (normalNode4087).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7712 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7713 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7712 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4065).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7713 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4065).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7713 (j : Fin 5)))
      1 1440 1440 1 ![288, 6, 1440, 1440, 18] ![5, 240, 1, 1, 80] reductionProjection7713 ![reductionProjection908, reductionProjection7711, reductionProjection1171, oldProjection1758, reductionProjection7712]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7714 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (243, 80), (426, 720), (427, 720), (698, 1200), (700, 160), (782, 1440), (890, 1440), (919, 1440), (1015, 1440), (1052, -240), (1058, -240), (1059, 400), (1219, -240), (1221, -480), (1226, 560), (1227, 480), (1251, -260)]

def reductionPivot7714 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, -3, 1]]

theorem reductionSound7714 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4066).moment H =
      Integer.Sparse.eval reductionProjection7714 (momentVector H) := by
  have heq : reductionPivot7714 = (fun u v => (normalNode4066).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4066).moment H = injectiveMoment H reductionPivot7714 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4066).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7714 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7714 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 2, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7714 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2069, reductionProjection7587, reductionProjection3949, reductionProjection5099, oldProjection2023] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7714 (0 : Fin 5)) = canonicalInput8695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8695 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7714 (1 : Fin 5)) = (normalNode4101).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7587 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7714 (2 : Fin 5)) = (normalNode4091).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3949 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7714 (3 : Fin 5)) = (normalNode4088).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5099 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7714 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3489 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7714 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3489 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4066).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7714 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4066).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7714 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 2, 1440, 720] ![10, 1, 720, 1, 2] reductionProjection7714 ![oldProjection2069, reductionProjection7587, reductionProjection3949, reductionProjection5099, oldProjection2023]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7715 : Integer.Sparse (Fin 1613) := [(479, 9), (602, 36), (698, 12), (869, 9), (906, -18), (1027, 18), (1050, -6), (1059, 14), (1227, 4), (1251, -6)]

def reductionPivot7715 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound7715 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4067).moment H =
      Integer.Sparse.eval reductionProjection7715 (momentVector H) := by
  have heq : reductionPivot7715 = (fun u v => (normalNode4067).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4067).moment H = injectiveMoment H reductionPivot7715 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4067).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7715 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7715 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 1440, 360, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7715 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3381, reductionProjection3290, reductionProjection3381, oldProjection2003, reductionProjection7576] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7715 (0 : Fin 5)) = canonicalInput8700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3381 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8700 hH))).trans (reductionSound3381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7715 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code906).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3290 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7715 (2 : Fin 5)) = canonicalInput7733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3381 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7733 hH))).trans (reductionSound3381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7715 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3492 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2003 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3492 hH))).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7715 (4 : Fin 5)) = (normalNode4095).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7576 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7715 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4067).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7715 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4067).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7715 (j : Fin 5)))
      1 18 1440 80 ![1440, 1, 1440, 360, 720] ![1, 1440, 1, 4, 2] reductionProjection7715 ![reductionProjection3381, reductionProjection3290, reductionProjection3381, oldProjection2003, reductionProjection7576]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7716 : Integer.Sparse (Fin 1613) := [(578, -1), (602, -1), (924, -1), (1026, -1)]

def reductionPivot7716 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -1, -2, 2], ![1, -1, 2, -2]]

theorem reductionSound7716 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4097).moment H =
      Integer.Sparse.eval reductionProjection7716 (momentVector H) := by
  have heq : reductionPivot7716 = (fun u v => (normalNode4097).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4097).moment H = injectiveMoment H reductionPivot7716 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4097).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7716 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7716 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7716 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1419, oldProjection506, oldProjection510, reductionProjection2042] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7716 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1026).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1419 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7716 (1 : Fin 4)) = canonicalInput7932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7932 hH))).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7716 (2 : Fin 4)) = canonicalInput7928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7928 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7716 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code924).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2042 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7716 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4097).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7716 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4097).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7716 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7716 ![reductionProjection1419, oldProjection506, oldProjection510, reductionProjection2042]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7717 : Integer.Sparse (Fin 1613) := [(0, -1), (465, 144), (578, 288), (602, 720), (698, 80), (908, -288), (924, 144), (1026, 288), (1027, 288), (1059, 112), (1227, 16), (1251, -39)]

def reductionPivot7717 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, -2, 2], ![1, -1, 1, -1]]

theorem reductionSound7717 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4068).moment H =
      Integer.Sparse.eval reductionProjection7717 (momentVector H) := by
  have heq : reductionPivot7717 = (fun u v => (normalNode4068).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4068).moment H = injectiveMoment H reductionPivot7717 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4068).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7717 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7717 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 360, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7717 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2116, reductionProjection3360, oldProjection1761, reductionProjection3381, reductionProjection7716] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7717 (0 : Fin 5)) = canonicalInput8702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2116 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8702 hH))).trans (reductionSound2116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7717 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code908).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3360 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7717 (2 : Fin 5)) = canonicalInput7737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1761 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7737 hH))).trans (oldProjectionSound1761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7717 (3 : Fin 5)) = canonicalInput7733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3381 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7733 hH))).trans (reductionSound3381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7717 (4 : Fin 5)) = (normalNode4097).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7716 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7717 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4068).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7717 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4068).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7717 (j : Fin 5)))
      1 288 1440 5 ![2, 1, 360, 1440, 2] ![720, 1440, 4, 1, 720] reductionProjection7717 ![reductionProjection2116, reductionProjection3360, oldProjection1761, reductionProjection3381, reductionProjection7716]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7718 : Integer.Sparse (Fin 1613) := [(0, -5), (72, -48), (81, -192), (94, 4), (674, 432), (698, 336), (700, 128), (759, 144), (867, 144), (1050, -48), (1059, 160), (1221, -144), (1227, 96), (1251, -71)]

def reductionPivot7718 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1]]

theorem reductionSound7718 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4070).moment H =
      Integer.Sparse.eval reductionProjection7718 (momentVector H) := by
  have heq : reductionPivot7718 = (fun u v => (normalNode4070).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4070).moment H = injectiveMoment H reductionPivot7718 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4070).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7718 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7718 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 288, 288, 180] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7718 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1846, reductionProjection5747, oldProjection1845, oldProjection1845, oldProjection2001] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7718 (0 : Fin 5)) = canonicalInput8711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8711 hH))).trans (oldProjectionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7718 (1 : Fin 5)) = (normalNode4103).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5747 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7718 (2 : Fin 5)) = canonicalInput7762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1845 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7762 hH))).trans (oldProjectionSound1845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7718 (3 : Fin 5)) = canonicalInput7757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1845 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7757 hH))).trans (oldProjectionSound1845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7718 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3500 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2001 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7718 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3500 hH))).trans (oldProjectionSound2001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4070).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7718 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4070).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7718 (j : Fin 5)))
      1 288 1440 5 ![1440, 72, 288, 288, 180] ![1, 20, 5, 5, 8] reductionProjection7718 ![oldProjection1846, reductionProjection5747, oldProjection1845, oldProjection1845, oldProjection2001]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7719 : Integer.Sparse (Fin 1613) := [(0, -11), (94, 20), (479, 360), (602, 720), (674, 720), (698, 720), (700, 320), (759, 360), (867, 360), (906, -720), (1050, -120), (1059, 400), (1227, 160), (1251, -145)]

def reductionPivot7719 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound7719 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4071).moment H =
      Integer.Sparse.eval reductionProjection7719 (momentVector H) := by
  have heq : reductionPivot7719 = (fun u v => (normalNode4071).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4071).moment H = injectiveMoment H reductionPivot7719 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4071).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7719 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7719 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 36, 1440, 180, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7719 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3361, reductionProjection7405, reductionProjection3361, oldProjection2001, reductionProjection3290] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7719 (0 : Fin 5)) = canonicalInput8715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3361 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8715 hH))).trans (reductionSound3361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7719 (1 : Fin 5)) = (normalNode4108).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7405 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7719 (2 : Fin 5)) = canonicalInput7773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3361 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7773 hH))).trans (reductionSound3361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7719 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3505 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2001 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3505 hH))).trans (oldProjectionSound2001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7719 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code906).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3290 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7719 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4071).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7719 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4071).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7719 (j : Fin 5)))
      1 720 1440 2 ![1440, 36, 1440, 180, 1] ![1, 40, 1, 8, 1440] reductionProjection7719 ![reductionProjection3361, reductionProjection7405, reductionProjection3361, oldProjection2001, reductionProjection3290]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7720 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (578, -360), (698, -160), (1026, -360), (1221, 240), (1226, -80), (1227, -80), (1251, 30)]

def reductionPivot7720 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 2, -2]]

theorem reductionSound7720 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4439).moment H =
      Integer.Sparse.eval reductionProjection7720 (momentVector H) := by
  have heq : reductionPivot7720 = (fun u v => (normalNode4439).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4439).moment H = injectiveMoment H reductionPivot7720 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4439).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7720 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7720 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7720 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1111, reductionProjection1419, oldProjection1111, oldProjection506] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7720 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7720 (1 : Fin 4)) = canonicalInput8981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1419 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8981 hH))).trans (reductionSound1419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7720 (2 : Fin 4)) = canonicalInput8599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8599 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7720 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3736 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7720 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3736 hH))).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4439).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7720 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4439).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7720 (j : Fin 4)))
      2 720 720 2 ![720, 1, 720, 1] ![1, 720, 1, 720] reductionProjection7720 ![oldProjection1111, reductionProjection1419, oldProjection1111, oldProjection506]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7721 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -8), (698, -4), (700, -8), (896, -36), (924, -36), (1052, 24), (1219, 12), (1226, -4), (1251, -1)]

def reductionPivot7721 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 2, -1, -1], ![1, -1, -2, 2]]

theorem reductionSound7721 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode4109).moment H =
      Integer.Sparse.eval reductionProjection7721 (momentVector H) := by
  have heq : reductionPivot7721 = (fun u v => (normalNode4109).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4109).moment H = injectiveMoment H reductionPivot7721 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4109).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7721 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7721 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7721 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1067, reductionProjection2042, reductionProjection1652, reductionProjection1544] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7721 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1067 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7721 (1 : Fin 4)) = canonicalInput7982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2042 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7982 hH))).trans (reductionSound2042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7721 (2 : Fin 4)) = canonicalInput7806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1652 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7806 hH))).trans (reductionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7721 (3 : Fin 4)) = canonicalInput7798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1544 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7721 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7798 hH))).trans (reductionSound1544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4109).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7721 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4109).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7721 (j : Fin 4)))
      2 72 144 4 ![144, 1, 144, 1] ![1, 144, 1, 144] reductionProjection7721 ![oldProjection1067, reductionProjection2042, reductionProjection1652, reductionProjection1544]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7722 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -1), (201, 144), (241, 16), (243, 32), (578, 288), (602, 144), (674, 144), (698, 192), (700, 32), (896, 144), (908, -288), (924, 144), (1026, 144), (1050, -96), (1052, -96), (1055, -48), (1058, -48), (1059, 80), (1219, -48), (1221, -96), (1226, 48), (1227, 64), (1251, -35)]

def reductionPivot7722 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -1, -2, 2], ![1, -1, 0, 0]]

theorem reductionSound7722 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4073).moment H =
      Integer.Sparse.eval reductionProjection7722 (momentVector H) := by
  have heq : reductionPivot7722 = (fun u v => (normalNode4073).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4073).moment H = injectiveMoment H reductionPivot7722 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4073).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7722 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7722 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 72, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7722 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7720, reductionProjection7721, reductionProjection5482, reductionProjection3361, reductionProjection3360] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7722 (0 : Fin 5)) = canonicalInput8717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7720 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8717 hH))).trans (reductionSound7720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7722 (1 : Fin 5)) = (normalNode4109).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7721 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7722 (2 : Fin 5)) = canonicalInput7777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5482 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7777 hH))).trans (reductionSound5482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7722 (3 : Fin 5)) = canonicalInput7773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3361 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7773 hH))).trans (reductionSound3361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7722 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code908).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3360 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7722 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4073).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7722 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4073).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7722 (j : Fin 5)))
      1 288 1440 5 ![720, 72, 1440, 1440, 1] ![2, 20, 1, 1, 1440] reductionProjection7722 ![reductionProjection7720, reductionProjection7721, reductionProjection5482, reductionProjection3361, reductionProjection3360]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7723 : Integer.Sparse (Fin 1613) := [(72, 24), (94, 3), (243, -8), (698, -16), (700, -16), (896, -72), (1058, 72), (1226, -16), (1251, -1)]

def reductionPivot7723 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, -2, 2, -2]]

theorem reductionSound7723 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4420).moment H =
      Integer.Sparse.eval reductionProjection7723 (momentVector H) := by
  have heq : reductionPivot7723 = (fun u v => (normalNode4420).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4420).moment H = injectiveMoment H reductionPivot7723 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4420).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7723 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7723 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7723 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1017, oldProjection1250, reductionProjection1544, reductionProjection4621] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7723 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5020 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5020 hH))).trans (oldProjectionSound1017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7723 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3787 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1250 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3787 hH))).trans (oldProjectionSound1250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7723 (2 : Fin 4)) = canonicalInput8557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1544 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8557 hH))).trans (reductionSound1544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7723 (3 : Fin 4)) = canonicalInput8547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4621 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7723 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8547 hH))).trans (reductionSound4621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4420).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7723 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4420).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7723 (j : Fin 4)))
      2 144 144 2 ![144, 9, 1, 144] ![1, 16, 144, 1] reductionProjection7723 ![oldProjection1017, oldProjection1250, reductionProjection1544, reductionProjection4621]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7724 : Integer.Sparse (Fin 1613) := [(72, 48), (94, 1), (229, 48), (238, 48), (243, -32), (244, -16), (698, -16), (700, -32), (896, -144), (1058, 48), (1059, -16), (1251, -3)]

def reductionPivot7724 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -2, -2, 2]]

theorem reductionSound7724 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4104).moment H =
      Integer.Sparse.eval reductionProjection7724 (momentVector H) := by
  have heq : reductionPivot7724 = (fun u v => (normalNode4104).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4104).moment H = injectiveMoment H reductionPivot7724 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4104).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7724 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7724 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7724 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection729, oldProjection1255, reductionProjection1544, reductionProjection5848] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7724 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4599 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection729 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4599 hH))).trans (oldProjectionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7724 (1 : Fin 4)) = canonicalInput7904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1255 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7904 hH))).trans (oldProjectionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7724 (2 : Fin 4)) = canonicalInput7798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1544 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7798 hH))).trans (reductionSound1544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7724 (3 : Fin 4)) = canonicalInput7795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5848 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7724 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7795 hH))).trans (reductionSound5848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4104).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7724 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4104).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7724 (j : Fin 4)))
      2 288 288 2 ![72, 9, 1, 144] ![4, 32, 288, 2] reductionProjection7724 ![oldProjection729, oldProjection1255, reductionProjection1544, reductionProjection5848]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7725 : Integer.Sparse (Fin 1613) := [(10, -24), (19, -4), (20, 1), (72, -96), (81, -48), (94, -1), (229, -96), (238, -72), (243, 56), (244, 24), (698, 56), (700, 96), (701, 16), (718, 72), (759, 72), (896, 216), (1058, -120), (1059, 40), (1226, 16), (1251, 6)]

def reductionPivot7725 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -2, 2]]

theorem reductionSound7725 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4075).moment H =
      Integer.Sparse.eval reductionProjection7725 (momentVector H) := by
  have heq : reductionPivot7725 = (fun u v => (normalNode4075).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4075).moment H = injectiveMoment H reductionPivot7725 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4075).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7725 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7725 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 144, 288, 288, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7725 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7723, reductionProjection7692, reductionProjection7724, reductionProjection7724, reductionProjection5747] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7725 (0 : Fin 5)) = canonicalInput8724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7723 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8724 hH))).trans (reductionSound7723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7725 (1 : Fin 5)) = (normalNode4112).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7692 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7725 (2 : Fin 5)) = canonicalInput7794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7724 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7794 hH))).trans (reductionSound7724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7725 (3 : Fin 5)) = (normalNode4104).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7724 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7725 (4 : Fin 5)) = (normalNode4103).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5747 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7725 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4075).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7725 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4075).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7725 (j : Fin 5)))
      1 144 288 2 ![144, 144, 288, 288, 72] ![2, 2, 1, 1, 4] reductionProjection7725 ![reductionProjection7723, reductionProjection7692, reductionProjection7724, reductionProjection7724, reductionProjection5747]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7726 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -3), (94, 13), (243, -96), (698, -32), (1047, 48), (1057, 48), (1225, -32), (1226, -48), (1251, 4)]

def reductionPivot7726 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -1, -3, 3], ![1, -1, 0, 0]]

theorem reductionSound7726 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4567).moment H =
      Integer.Sparse.eval reductionProjection7726 (momentVector H) := by
  have heq : reductionPivot7726 = (fun u v => (normalNode4567).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4567).moment H = injectiveMoment H reductionPivot7726 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4567).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7726 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7726 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7726 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1365, oldProjection1275, oldProjection1214, oldProjection1200] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7726 (0 : Fin 4)) = canonicalInput11142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11142 hH))).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7726 (1 : Fin 4)) = canonicalInput8934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1275 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8934 hH))).trans (oldProjectionSound1275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7726 (2 : Fin 4)) = canonicalInput8881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8881 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7726 (3 : Fin 4)) = canonicalInput8877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1200 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7726 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8877 hH))).trans (oldProjectionSound1200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4567).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7726 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4567).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7726 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 144] ![2, 2, 4, 2] reductionProjection7726 ![oldProjection1365, oldProjection1275, oldProjection1214, oldProjection1200]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7727 : Integer.Sparse (Fin 1613) := [(1138, 1)]

theorem reductionSound7727 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1138).moment H =
      Integer.Sparse.eval reductionProjection7727 (momentVector H) := by
  have hc : coordinates (1138 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1138) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7727, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7728 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 4), (105, -16), (241, -32), (243, -48), (698, -48), (700, -16), (747, -144), (1047, 48), (1138, -144), (1226, -16), (1251, 5)]

def reductionPivot7728 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, -1, 3, -3]]

theorem reductionSound7728 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4117).moment H =
      Integer.Sparse.eval reductionProjection7728 (momentVector H) := by
  have heq : reductionPivot7728 = (fun u v => (normalNode4117).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4117).moment H = injectiveMoment H reductionPivot7728 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4117).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7728 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7728 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7728 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7727, reductionProjection6514, oldProjection1320, oldProjection1318] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7728 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1138).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7727 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7728 (1 : Fin 4)) = canonicalInput7918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7918 hH))).trans (reductionSound6514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7728 (2 : Fin 4)) = canonicalInput7828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1320 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7828 hH))).trans (oldProjectionSound1320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7728 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3518 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1318 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7728 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3518 hH))).trans (oldProjectionSound1318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4117).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7728 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4117).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7728 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 144] ![288, 288, 2, 2] reductionProjection7728 ![reductionProjection7727, reductionProjection6514, oldProjection1320, oldProjection1318]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7729 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -40), (19, -240), (20, 70), (33, -240), (94, -40), (105, 400), (106, 160), (235, -240), (241, 640), (243, 1360), (244, 240), (246, 80), (691, -480), (694, -240), (698, 800), (700, 560), (703, 80), (704, 240), (747, 720), (1047, -720), (1057, -240), (1138, 720), (1225, 160), (1226, 400), (1251, 5)]

def reductionPivot7729 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound7729 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4076).moment H =
      Integer.Sparse.eval reductionProjection7729 (momentVector H) := by
  have heq : reductionPivot7729 = (fun u v => (normalNode4076).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4076).moment H = injectiveMoment H reductionPivot7729 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4076).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7729 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7729 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7729 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7726, oldProjection2042, reductionProjection7669, reductionProjection7728, reductionProjection7599] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7729 (0 : Fin 5)) = canonicalInput8735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7726 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8735 hH))).trans (reductionSound7726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7729 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2042⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2042 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7729 (2 : Fin 5)) = (normalNode4119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7669 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7669 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7729 (3 : Fin 5)) = (normalNode4117).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7728 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7729 (4 : Fin 5)) = (normalNode4116).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7599 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7729 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4076).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7729 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4076).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7729 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 288, 288] ![5, 1, 5, 5, 5] reductionProjection7729 ![reductionProjection7726, oldProjection2042, reductionProjection7669, reductionProjection7728, reductionProjection7599]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7730 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (698, 80), (704, -80), (911, -720), (913, -720), (919, -720), (1251, -30)]

def reductionPivot7730 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -2, 2, -1]]

theorem reductionSound7730 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4120).moment H =
      Integer.Sparse.eval reductionProjection7730 (momentVector H) := by
  have heq : reductionPivot7730 = (fun u v => (normalNode4120).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4120).moment H = injectiveMoment H reductionPivot7730 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4120).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7730 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7730 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7730 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1286, oldProjection612, reductionProjection202, oldProjection610] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7730 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1286⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1286 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7730 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3642 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3642 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7730 (2 : Fin 4)) = canonicalInput7831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7831 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7730 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node610⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection610 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7730 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4120).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7730 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4120).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7730 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection7730 ![oldProjection1286, oldProjection612, reductionProjection202, oldProjection610]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7731 : Integer.Sparse (Fin 1613) := [(775, -3), (913, -3), (1047, 1), (1055, 1), (1058, 1), (1139, -3)]

def reductionPivot7731 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, -2, 2, -1], ![1, 0, 1, -2]]

theorem reductionSound7731 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4118).moment H =
      Integer.Sparse.eval reductionProjection7731 (momentVector H) := by
  have heq : reductionPivot7731 = (fun u v => (normalNode4118).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4118).moment H = injectiveMoment H reductionPivot7731 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4118).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7731 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7731 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7731 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection227, oldProjection588, oldProjection1319, reductionProjection202] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7731 (0 : Fin 4)) = canonicalInput10773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection227 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10773 hH))).trans (reductionSound227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7731 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3613 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3613 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7731 (2 : Fin 4)) = canonicalInput7826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1319 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7826 hH))).trans (oldProjectionSound1319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7731 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code913).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7731 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4118).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7731 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4118).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7731 (j : Fin 4)))
      2 6 6 2 ![1, 1, 3, 1] ![6, 6, 2, 6] reductionProjection7731 ![reductionProjection227, oldProjection588, oldProjection1319, reductionProjection202]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7732 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (20, 5), (94, 10), (105, 80), (241, 160), (243, 240), (668, 720), (691, -240), (698, 640), (700, 80), (704, 80), (775, 720), (911, 720), (913, 1440), (914, 720), (919, 720), (1005, 720), (1047, -480), (1050, -240), (1052, -240), (1055, -480), (1058, -720), (1059, 80), (1139, 720), (1219, -240), (1221, -240), (1226, 320), (1227, 240), (1251, -80)]

def reductionPivot7732 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]

theorem reductionSound7732 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4078).moment H =
      Integer.Sparse.eval reductionProjection7732 (momentVector H) := by
  have heq : reductionPivot7732 = (fun u v => (normalNode4078).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4078).moment H = injectiveMoment H reductionPivot7732 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4078).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7732 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7732 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7732 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2086, oldProjection1840, reductionProjection7730, oldProjection2037, reductionProjection7731] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7732 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2086⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2086 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2086 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7732 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3526 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1840 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3526 hH))).trans (oldProjectionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7732 (2 : Fin 5)) = (normalNode4120).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7730 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7732 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2037⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2037 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7732 (4 : Fin 5)) = (normalNode4118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7731 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7732 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4078).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7732 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4078).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7732 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 6] ![1, 1, 1, 5, 240] reductionProjection7732 ![oldProjection2086, oldProjection1840, reductionProjection7730, oldProjection2037, reductionProjection7731]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7733 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -25), (698, -640), (919, -720), (1219, 240), (1226, -400), (1227, -400), (1251, 40)]

def reductionPivot7733 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -1, 1, -1]]

theorem reductionSound7733 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4522).moment H =
      Integer.Sparse.eval reductionProjection7733 (momentVector H) := by
  have heq : reductionPivot7733 = (fun u v => (normalNode4522).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4522).moment H = injectiveMoment H reductionPivot7733 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4522).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7733 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7733 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 144, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7733 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1123, oldProjection1249, oldProjection1208, oldProjection612] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7733 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1123 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7733 (1 : Fin 4)) = canonicalInput8987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8987 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7733 (2 : Fin 4)) = canonicalInput8742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8742 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7733 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3788 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7733 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3788 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4522).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7733 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4522).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7733 (j : Fin 4)))
      2 1440 1440 2 ![360, 144, 720, 1] ![4, 10, 2, 1440] reductionProjection7733 ![oldProjection1123, oldProjection1249, oldProjection1208, oldProjection612]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7734 : Integer.Sparse (Fin 1613) := [(94, 1), (241, -4), (243, -16), (698, -16), (700, -4), (912, -36), (1047, 12), (1058, 12), (1226, -16), (1251, 1), (1323, 12)]

def reductionPivot7734 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, 2, -3], ![1, -1, 1, -1]]

theorem reductionSound7734 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode4122).moment H =
      Integer.Sparse.eval reductionProjection7734 (momentVector H) := by
  have heq : reductionPivot7734 = (fun u v => (normalNode4122).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4122).moment H = injectiveMoment H reductionPivot7734 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4122).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7734 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7734 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7734 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1074, oldProjection1215, oldProjection1318, reductionProjection1069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7734 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7734 (1 : Fin 4)) = canonicalInput7984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7984 hH))).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7734 (2 : Fin 4)) = canonicalInput7830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1318 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7830 hH))).trans (oldProjectionSound1318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7734 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code912).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1069 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7734 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4122).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7734 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4122).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7734 (j : Fin 4)))
      2 72 144 4 ![72, 144, 144, 1] ![2, 1, 1, 144] reductionProjection7734 ![oldProjection1074, oldProjection1215, oldProjection1318, reductionProjection1069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7735 : Integer.Sparse (Fin 1613) := [(910, 1)]

theorem reductionSound7735 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code910).moment H =
      Integer.Sparse.eval reductionProjection7735 (momentVector H) := by
  have hc : coordinates (910 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code910) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7735, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7736 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (241, 16), (243, 80), (666, 144), (698, 304), (700, 16), (910, -288), (911, 144), (912, 144), (919, 144), (1047, -96), (1055, -96), (1058, -240), (1059, 16), (1219, -48), (1226, 160), (1227, 160), (1251, -30), (1321, -48), (1323, -48), (1389, -48)]

def reductionPivot7736 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound7736 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4079).moment H =
      Integer.Sparse.eval reductionProjection7736 (momentVector H) := by
  have heq : reductionPivot7736 = (fun u v => (normalNode4079).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4079).moment H = injectiveMoment H reductionPivot7736 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4079).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7736 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7736 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 72, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7736 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7733, reductionProjection3050, reductionProjection7734, reductionProjection7735, reductionProjection7673] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7736 (0 : Fin 5)) = (normalNode4522).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7733 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7736 (1 : Fin 5)) = canonicalInput7835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7835 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7736 (2 : Fin 5)) = (normalNode4122).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7734 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7736 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code910).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7735 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7736 (4 : Fin 5)) = (normalNode4121).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7673 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7736 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4079).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7736 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4079).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7736 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 72, 1, 1440] ![1, 1, 20, 1440, 1] reductionProjection7736 ![reductionProjection7733, reductionProjection3050, reductionProjection7734, reductionProjection7735, reductionProjection7673]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7737 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -4), (698, -4), (998, -18), (1226, 6), (1251, 1)]

def reductionPivot7737 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound7737 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode4523).moment H =
      Integer.Sparse.eval reductionProjection7737 (momentVector H) := by
  have heq : reductionPivot7737 = (fun u v => (normalNode4523).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4523).moment H = injectiveMoment H reductionPivot7737 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4523).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7737 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7737 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 72, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7737 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1124, oldProjection1214, oldProjection1214, reductionProjection3519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7737 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1124⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1124 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7737 (1 : Fin 4)) = canonicalInput8988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8988 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7737 (2 : Fin 4)) = canonicalInput8743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8743 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7737 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code998).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7737 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4523).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7737 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4523).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7737 (j : Fin 4)))
      2 36 72 4 ![36, 72, 72, 1] ![2, 1, 1, 72] reductionProjection7737 ![oldProjection1124, oldProjection1214, oldProjection1214, reductionProjection3519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7738 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -80), (20, 20), (94, -75), (105, 80), (241, 320), (243, 560), (244, 80), (427, 720), (698, 560), (700, 320), (738, 720), (912, 1440), (998, 720), (1047, -480), (1058, -480), (1059, 80), (1226, 400), (1251, -95), (1323, -480)]

def reductionPivot7738 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound7738 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4080).moment H =
      Integer.Sparse.eval reductionProjection7738 (momentVector H) := by
  have heq : reductionPivot7738 = (fun u v => (normalNode4080).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4080).moment H = injectiveMoment H reductionPivot7738 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4080).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7738 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7738 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![36, 1440, 72, 72, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7738 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7737, oldProjection1695, oldProjection2038, reductionProjection7734, reductionProjection7734] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7738 (0 : Fin 5)) = (normalNode4523).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7737 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7738 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3532 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1695 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3532 hH))).trans (oldProjectionSound1695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7738 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2038⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2038 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7738 (3 : Fin 5)) = canonicalInput7824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7734 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7824 hH))).trans (reductionSound7734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7738 (4 : Fin 5)) = (normalNode4122).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7734 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7738 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4080).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7738 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4080).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7738 (j : Fin 5)))
      1 1440 1440 1 ![36, 1440, 72, 72, 72] ![40, 1, 20, 20, 20] reductionProjection7738 ![reductionProjection7737, oldProjection1695, oldProjection2038, reductionProjection7734, reductionProjection7734]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7739 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -5), (94, 25), (241, 60), (243, 20), (247, 20), (484, 180), (610, 180), (666, 180), (668, 360), (697, -60), (698, 340), (700, 20), (919, 180), (1050, -120), (1052, -60), (1055, -120), (1059, 80), (1219, -60), (1221, -180), (1226, 60), (1227, 160), (1251, -55), (1389, -120)]

def reductionPivot7739 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]

theorem reductionSound7739 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode4083).moment H =
      Integer.Sparse.eval reductionProjection7739 (momentVector H) := by
  have heq : reductionPivot7739 = (fun u v => (normalNode4083).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4083).moment H = injectiveMoment H reductionPivot7739 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4083).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7739 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7739 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7739 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1784, oldProjection1800, oldProjection2044, oldProjection2043, oldProjection1840] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7739 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3798 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1784 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3798 hH))).trans (oldProjectionSound1784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7739 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3568 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1800 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3568 hH))).trans (oldProjectionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7739 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2044⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2044 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7739 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2043⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2043 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7739 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3526 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1840 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7739 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3526 hH))).trans (oldProjectionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4083).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7739 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4083).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7739 (j : Fin 5)))
      1 360 1440 4 ![72, 1440, 1440, 1440, 1440] ![20, 1, 1, 1, 1] reductionProjection7739 ![oldProjection1784, oldProjection1800, oldProjection2044, oldProjection2043, oldProjection1840]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7740 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -20), (94, 55), (241, 160), (243, 240), (578, 1440), (602, 720), (682, -240), (698, 800), (700, 80), (704, 160), (924, 720), (1026, 720), (1055, -240), (1058, -720), (1059, 160), (1143, 720), (1221, -480), (1226, 480), (1227, 480), (1251, -170), (1389, -240)]

def reductionPivot7740 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 2, -2]]

theorem reductionSound7740 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4085).moment H =
      Integer.Sparse.eval reductionProjection7740 (momentVector H) := by
  have heq : reductionPivot7740 = (fun u v => (normalNode4085).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4085).moment H = injectiveMoment H reductionPivot7740 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4085).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot7740 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7740 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7740 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5147, oldProjection1756, reductionProjection7699, oldProjection1776, reductionProjection7697] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7740 (0 : Fin 5)) = (normalNode4550).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5147 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7740 (1 : Fin 5)) = canonicalInput7880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7880 hH))).trans (oldProjectionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7740 (2 : Fin 5)) = (normalNode4129).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7699 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7740 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3570 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1776 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3570 hH))).trans (oldProjectionSound1776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7740 (4 : Fin 5)) = (normalNode4128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7697 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7740 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4085).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7740 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4085).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7740 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 1440, 288] ![2, 1, 1, 1, 5] reductionProjection7740 ![reductionProjection5147, oldProjection1756, reductionProjection7699, oldProjection1776, reductionProjection7697]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7741 : Integer.Sparse (Fin 1613) := [(81, 3), (229, 3), (238, 6), (243, -2), (244, -1), (698, -4), (700, -4), (1058, 9), (1059, -3), (1226, -1)]

def reductionPivot7741 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, -2, -2, 2]]

theorem reductionSound7741 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4086).moment H =
      Integer.Sparse.eval reductionProjection7741 (momentVector H) := by
  have heq : reductionPivot7741 = (fun u v => (normalNode4086).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4086).moment H = injectiveMoment H reductionPivot7741 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4086).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7741 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7741 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7741 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1250, oldProjection1255, oldProjection1192, oldProjection1235] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7741 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3825 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1250 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3825 hH))).trans (oldProjectionSound1250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7741 (1 : Fin 4)) = canonicalInput7882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1255 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7882 hH))).trans (oldProjectionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7741 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3582 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1192 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3582 hH))).trans (oldProjectionSound1192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7741 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3577 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7741 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3577 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4086).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7741 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4086).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7741 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection7741 ![oldProjection1250, oldProjection1255, oldProjection1192, oldProjection1235]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7742 : Integer.Sparse (Fin 1613) := [(918, 1)]

theorem reductionSound7742 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code918).moment H =
      Integer.Sparse.eval reductionProjection7742 (momentVector H) := by
  have hc : coordinates (918 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code918) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7742, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7743 : Integer.Sparse (Fin 1613) := [(158, -1), (205, -1), (918, -2)]

def reductionPivot7743 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, -2, -3, 3]]

theorem reductionSound7743 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4089).moment H =
      Integer.Sparse.eval reductionProjection7743 (momentVector H) := by
  have heq : reductionPivot7743 = (fun u v => (normalNode4089).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4089).moment H = injectiveMoment H reductionPivot7743 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4089).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7743 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7743 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7743 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1170, reductionProjection7742, reductionProjection7742, oldProjection413] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7743 (0 : Fin 4)) = canonicalInput8855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8855 hH))).trans (reductionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7743 (1 : Fin 4)) = canonicalInput7905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7742 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7905 hH))).trans (reductionSound7742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7743 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code918).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7742 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7743 (3 : Fin 4)) = canonicalInput7892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection413 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7743 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection413 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7892 hH))).trans (oldProjectionSound413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4089).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7743 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4089).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7743 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7743 ![reductionProjection1170, reductionProjection7742, reductionProjection7742, oldProjection413]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

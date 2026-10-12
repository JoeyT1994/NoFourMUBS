import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical077
import NoFourMUBs.Step2.SOS.Canonical080
import NoFourMUBs.Step2.SOS.Canonical081
import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical087
import NoFourMUBs.Step2.SOS.Canonical088
import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical157
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions188
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical116
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical278
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical69
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical70
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical79
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical80
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6048 : Integer.Sparse (Fin 1613) := [(0, -3), (7, -240), (19, -80), (20, 15), (37, -240), (38, -480), (39, -240), (56, -240), (59, -240), (81, -480), (82, -240), (90, 80), (94, 65), (229, -480), (238, -480), (239, -240), (240, -240), (241, 80), (243, 320), (244, 160), (283, 720), (284, 720), (289, 1440), (293, 720), (308, 720), (386, 720), (686, -240), (695, -240), (697, -240), (698, 720), (700, 720), (701, 160), (704, 320), (1040, -480), (1059, 320), (1061, -240), (1226, 80), (1251, 25)]

def reductionPivot6048 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 3, 0, -4]]

theorem reductionSound6048 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2924).moment H =
      Integer.Sparse.eval reductionProjection6048 (momentVector H) := by
  have heq : reductionPivot6048 = (fun u v => (normalNode2924).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2924).moment H = injectiveMoment H reductionPivot6048 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2924).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6048 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6048 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6048 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1501, reductionProjection5995, reductionProjection5997, reductionProjection6047, reductionProjection4260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6048 (0 : Fin 5)) = (normalNode789).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1501 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6048 (1 : Fin 5)) = (normalNode2882).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5995 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6048 (2 : Fin 5)) = canonicalInput5594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5997 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5594 hH))).trans (reductionSound5997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6048 (3 : Fin 5)) = (normalNode2936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6047 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6048 (4 : Fin 5)) = canonicalInput5596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4260 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6048 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5596 hH))).trans (reductionSound4260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2924).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6048 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2924).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6048 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 288, 2, 1440] ![5, 10, 5, 720, 1] reductionProjection6048 ![reductionProjection1501, reductionProjection5995, reductionProjection5997, reductionProjection6047, reductionProjection4260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6049 : Integer.Sparse (Fin 1613) := [(7, 48), (19, 4), (81, 96), (94, -1), (228, 48), (229, 96), (243, -16), (682, 48), (683, 48), (686, 48), (704, -16), (1040, 96), (1251, -1)]

def reductionPivot6049 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 2, 1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 3, 0, -4]]

theorem reductionSound6049 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2938).moment H =
      Integer.Sparse.eval reductionProjection6049 (momentVector H) := by
  have heq : reductionPivot6049 = (fun u v => (normalNode2938).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2938).moment H = injectiveMoment H reductionPivot6049 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2938).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6049 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6049 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 144, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6049 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1685, oldProjection757, oldProjection758, oldProjection756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6049 (0 : Fin 4)) = canonicalInput2245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1685 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2245 hH))).trans (reductionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6049 (1 : Fin 4)) = canonicalInput5592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection757 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5592 hH))).trans (oldProjectionSound757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6049 (2 : Fin 4)) = canonicalInput5652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection758 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5652 hH))).trans (oldProjectionSound758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6049 (3 : Fin 4)) = canonicalInput5653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection756 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6049 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5653 hH))).trans (oldProjectionSound756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2938).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6049 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2938).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6049 (j : Fin 4)))
      2 288 288 2 ![3, 3, 144, 3] ![96, 96, 2, 96] reductionProjection6049 ![reductionProjection1685, oldProjection757, oldProjection758, oldProjection756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6050 : Integer.Sparse (Fin 1613) := [(0, -3), (7, -240), (19, -40), (20, 10), (56, -240), (59, -240), (81, -960), (82, -240), (90, 80), (94, 35), (228, -240), (229, -960), (243, 80), (285, 1440), (291, 720), (292, 720), (293, 720), (386, 720), (682, -240), (683, -240), (686, -240), (697, -240), (698, 400), (699, -240), (704, 160), (798, 720), (799, 720), (1040, -480), (1058, -960), (1060, -480), (1223, -240), (1226, 160), (1227, 240), (1321, -240), (1389, -240)]

def reductionPivot6050 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 3, 0, -4]]

theorem reductionSound6050 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2925).moment H =
      Integer.Sparse.eval reductionProjection6050 (momentVector H) := by
  have heq : reductionPivot6050 = (fun u v => (normalNode2925).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2925).moment H = injectiveMoment H reductionPivot6050 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2925).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6050 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6050 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 2, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6050 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1507, reductionProjection5996, reductionProjection6021, reductionProjection6049, reductionProjection4321] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6050 (0 : Fin 5)) = (normalNode791).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1507 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6050 (1 : Fin 5)) = (normalNode2883).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5996 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6050 (2 : Fin 5)) = canonicalInput5595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6021 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5595 hH))).trans (reductionSound6021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6050 (3 : Fin 5)) = (normalNode2938).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6049 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6050 (4 : Fin 5)) = canonicalInput5597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4321 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6050 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5597 hH))).trans (reductionSound4321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2925).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6050 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2925).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6050 (j : Fin 5)))
      1 1440 1440 1 ![288, 2, 2, 288, 1440] ![5, 720, 720, 5, 1] reductionProjection6050 ![reductionProjection1507, reductionProjection5996, reductionProjection6021, reductionProjection6049, reductionProjection4321]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6051 : Integer.Sparse (Fin 1613) := [(0, -7), (38, -240), (201, 720), (238, -240), (462, 720), (674, 720), (698, 400), (700, 480), (1050, -240), (1058, -480), (1059, 480), (1251, -105)]

def reductionPivot6051 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound6051 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2926).moment H =
      Integer.Sparse.eval reductionProjection6051 (momentVector H) := by
  have heq : reductionPivot6051 = (fun u v => (normalNode2926).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2926).moment H = injectiveMoment H reductionPivot6051 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2926).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6051 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6051 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 720, 180] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6051 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1514, oldProjection1699, oldProjection854, oldProjection854, oldProjection1843] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6051 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1514⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1514 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6051 (1 : Fin 5)) = canonicalInput5540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1699 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5540 hH))).trans (oldProjectionSound1699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6051 (2 : Fin 5)) = canonicalInput5614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection854 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5614 hH))).trans (oldProjectionSound854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6051 (3 : Fin 5)) = canonicalInput5618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection854 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5618 hH))).trans (oldProjectionSound854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6051 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1843 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6051 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2926).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6051 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2926).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6051 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 720, 720, 180] ![2, 1, 2, 2, 8] reductionProjection6051 ![oldProjection1514, oldProjection1699, oldProjection854, oldProjection854, oldProjection1843]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6052 : Integer.Sparse (Fin 1613) := [(0, -1), (38, -48), (81, -96), (94, 5), (205, 144), (238, -48), (486, 144), (698, 288), (700, 144), (1055, -48), (1058, -96), (1059, 144), (1227, 96), (1251, -46)]

def reductionPivot6052 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound6052 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2927).moment H =
      Integer.Sparse.eval reductionProjection6052 (momentVector H) := by
  have heq : reductionPivot6052 = (fun u v => (normalNode2927).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2927).moment H = injectiveMoment H reductionPivot6052 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2927).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6052 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6052 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6052 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1516, oldProjection1684, oldProjection853, oldProjection1844, oldProjection2453] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6052 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1516⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1516 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6052 (1 : Fin 5)) = canonicalInput5541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1684 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5541 hH))).trans (oldProjectionSound1684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6052 (2 : Fin 5)) = canonicalInput5615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection853 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5615 hH))).trans (oldProjectionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6052 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6052 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2554 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2453 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6052 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2554 hH))).trans (oldProjectionSound2453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2927).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6052 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2927).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6052 (j : Fin 5)))
      1 288 1440 5 ![360, 288, 720, 1440, 1440] ![4, 5, 2, 1, 1] reductionProjection6052 ![oldProjection1516, oldProjection1684, oldProjection853, oldProjection1844, oldProjection2453]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6053 : Integer.Sparse (Fin 1613) := [(0, 1), (201, -720), (462, -720), (674, -720), (698, -160), (700, -80), (1059, 80), (1251, 15)]

def reductionPivot6053 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, 0, -2], ![2, 0, 0, -2]]

theorem reductionSound6053 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2928).moment H =
      Integer.Sparse.eval reductionProjection6053 (momentVector H) := by
  have heq : reductionPivot6053 = (fun u v => (normalNode2928).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2928).moment H = injectiveMoment H reductionPivot6053 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2928).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6053 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6053 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6053 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection412, oldProjection482, oldProjection854, oldProjection523] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6053 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node412⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection412 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6053 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2533 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection482 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2533 hH))).trans (oldProjectionSound482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6053 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2555 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection854 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2555 hH))).trans (oldProjectionSound854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6053 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection523 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6053 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2928).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6053 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2928).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6053 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection6053 ![oldProjection412, oldProjection482, oldProjection854, oldProjection523]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6054 : Integer.Sparse (Fin 1613) := [(686, -1), (1040, -1), (1223, -1)]

def reductionPivot6054 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 2, -2], ![-2, 4, -1, -1], ![2, -3, -1, 2]]

theorem reductionSound6054 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode11044).moment H =
      Integer.Sparse.eval reductionProjection6054 (momentVector H) := by
  have heq : reductionPivot6054 = (fun u v => (normalNode11044).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11044).moment H = injectiveMoment H reductionPivot6054 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11044).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11044).entries)).symm
  have hshape : reductionPivot6054 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6054 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6054 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection225, oldProjection191, oldProjection161] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6054 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8900 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6054 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6054 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8900 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6054 (1 : Fin 3)) = canonicalInput33361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6054 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6054 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33361 hH))).trans (oldProjectionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6054 (2 : Fin 3)) = canonicalInput33363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6054 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6054 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33363 hH))).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11044).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6054 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11044).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6054 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection6054 ![oldProjection225, oldProjection191, oldProjection161]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6055 : Integer.Sparse (Fin 1613) := [(19, 2), (81, 24), (94, -1), (228, 24), (241, -8), (243, -16), (675, -72), (682, 24), (686, 24), (698, -16), (704, -8), (1040, 24), (1223, 24), (1226, -8), (1251, 1)]

def reductionPivot6055 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 2, 1, -4]]

theorem reductionSound6055 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2965).moment H =
      Integer.Sparse.eval reductionProjection6055 (momentVector H) := by
  have heq : reductionPivot6055 = (fun u v => (normalNode2965).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2965).moment H = injectiveMoment H reductionPivot6055 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2965).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6055 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6055 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6055 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1127, reductionProjection5991, reductionProjection6054, oldProjection824] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6055 (0 : Fin 4)) = canonicalInput5209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1127 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5209 hH))).trans (oldProjectionSound1127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6055 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code675).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5991 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6055 (2 : Fin 4)) = canonicalInput5699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6054 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5699 hH))).trans (reductionSound6054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6055 (3 : Fin 4)) = canonicalInput5700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6055 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5700 hH))).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2965).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6055 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2965).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6055 (j : Fin 4)))
      2 144 144 2 ![144, 1, 3, 144] ![1, 144, 48, 1] reductionProjection6055 ![oldProjection1127, reductionProjection5991, reductionProjection6054, oldProjection824]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6056 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -40), (20, 5), (81, -480), (82, -120), (90, 40), (94, 60), (228, -480), (229, -120), (241, 40), (243, 80), (283, 720), (291, 360), (293, 360), (294, 360), (618, 360), (619, 360), (675, 360), (682, -120), (686, -240), (698, 440), (704, 160), (1040, -120), (1058, -120), (1223, -240), (1226, 160), (1227, 160), (1251, 25), (1321, -120), (1389, -240)]

def reductionPivot6056 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]

theorem reductionSound6056 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2929).moment H =
      Integer.Sparse.eval reductionProjection6056 (momentVector H) := by
  have heq : reductionPivot6056 = (fun u v => (normalNode2929).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2929).moment H = injectiveMoment H reductionPivot6056 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2929).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6056 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6056 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6056 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1462, reductionProjection6016, oldProjection1586, reductionProjection6055, oldProjection1794] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6056 (0 : Fin 5)) = (normalNode885).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1462 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1462 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6056 (1 : Fin 5)) = (normalNode2917).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6016 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6056 (2 : Fin 5)) = canonicalInput5641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5641 hH))).trans (oldProjectionSound1586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6056 (3 : Fin 5)) = (normalNode2965).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6056 (4 : Fin 5)) = canonicalInput5644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1794 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6056 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5644 hH))).trans (oldProjectionSound1794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2929).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6056 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2929).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6056 (j : Fin 5)))
      1 720 1440 2 ![1440, 2, 1440, 144, 1440] ![1, 720, 1, 10, 1] reductionProjection6056 ![reductionProjection1462, reductionProjection6016, oldProjection1586, reductionProjection6055, oldProjection1794]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6057 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (90, -80), (206, -720), (603, -720), (698, -160), (700, -400), (1052, 240), (1059, -240), (1251, 15)]

def reductionPivot6057 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![2, 0, 0, -2]]

theorem reductionSound6057 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2930).moment H =
      Integer.Sparse.eval reductionProjection6057 (momentVector H) := by
  have heq : reductionPivot6057 = (fun u v => (normalNode2930).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2930).moment H = injectiveMoment H reductionPivot6057 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2930).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6057 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6057 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 9, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6057 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection898, reductionProjection808, reductionProjection888, oldProjection511] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6057 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6057 (1 : Fin 4)) = canonicalInput5605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5605 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6057 (2 : Fin 4)) = canonicalInput5682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection888 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5682 hH))).trans (reductionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6057 (3 : Fin 4)) = canonicalInput5684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6057 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5684 hH))).trans (oldProjectionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2930).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6057 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2930).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6057 (j : Fin 4)))
      2 1440 1440 2 ![1, 9, 720, 1] ![1440, 160, 2, 1440] reductionProjection6057 ![reductionProjection898, reductionProjection808, reductionProjection888, oldProjection511]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6058 : Integer.Sparse (Fin 1613) := [(0, 2), (90, -160), (94, -25), (175, -720), (211, -720), (698, -480), (700, -80), (1226, -240), (1227, -80), (1251, 25)]

def reductionPivot6058 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 2, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]

theorem reductionSound6058 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2933).moment H =
      Integer.Sparse.eval reductionProjection6058 (momentVector H) := by
  have heq : reductionPivot6058 = (fun u v => (normalNode2933).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2933).moment H = injectiveMoment H reductionPivot6058 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2933).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6058 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6058 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6058 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1281, oldProjection836, reductionProjection833, oldProjection850] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6058 (0 : Fin 4)) = canonicalInput2149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1281 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2149 hH))).trans (reductionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6058 (1 : Fin 4)) = canonicalInput5679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection836 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5679 hH))).trans (oldProjectionSound836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6058 (2 : Fin 4)) = canonicalInput5712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5712 hH))).trans (reductionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6058 (3 : Fin 4)) = canonicalInput5715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection850 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6058 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5715 hH))).trans (oldProjectionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2933).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6058 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2933).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6058 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 720] ![1440, 2, 1440, 2] reductionProjection6058 ![reductionProjection1281, oldProjection836, reductionProjection833, oldProjection850]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6059 : Integer.Sparse (Fin 1613) := [(289, -1), (496, -1), (730, -1), (777, -1)]

def reductionPivot6059 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, -2, 1, 0], ![1, 3, 0, -4]]

theorem reductionSound6059 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2947).moment H =
      Integer.Sparse.eval reductionProjection6059 (momentVector H) := by
  have heq : reductionPivot6059 = (fun u v => (normalNode2947).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2947).moment H = injectiveMoment H reductionPivot6059 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2947).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6059 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6059 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6059 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection580, reductionProjection4749, oldProjection451, reductionProjection5418] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6059 (0 : Fin 4)) = canonicalInput4935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection580 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4935 hH))).trans (oldProjectionSound580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6059 (1 : Fin 4)) = canonicalInput5606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4749 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5606 hH))).trans (reductionSound4749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6059 (2 : Fin 4)) = canonicalInput5630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5630 hH))).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6059 (3 : Fin 4)) = canonicalInput5631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5418 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6059 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5631 hH))).trans (reductionSound5418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2947).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6059 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2947).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6059 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6059 ![oldProjection580, reductionProjection4749, oldProjection451, reductionProjection5418]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6060 : Integer.Sparse (Fin 1613) := [(7, -48), (19, -16), (20, 1), (36, -48), (38, -96), (42, 48), (44, 16), (60, 16), (81, -96), (94, 8), (228, -48), (229, -96), (238, -96), (241, 48), (243, 112), (244, 32), (247, 16), (283, 144), (284, 144), (289, 288), (293, 144), (496, 144), (682, -48), (683, -48), (686, -48), (695, -48), (697, -48), (698, 112), (700, 192), (701, 48), (704, 64), (730, 144), (777, 144), (1040, -96), (1059, 64), (1251, 7)]

def reductionPivot6060 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 3, 0, -4]]

theorem reductionSound6060 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2935).moment H =
      Integer.Sparse.eval reductionProjection6060 (momentVector H) := by
  have heq : reductionPivot6060 = (fun u v => (normalNode2935).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2935).moment H = injectiveMoment H reductionPivot6060 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2935).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6060 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6060 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 288, 18, 2, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6060 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1684, reductionProjection6019, oldProjection2033, reductionProjection6059, oldProjection1588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6060 (0 : Fin 5)) = (normalNode955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1684 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6060 (1 : Fin 5)) = canonicalInput5556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6019 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5556 hH))).trans (reductionSound6019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6060 (2 : Fin 5)) = canonicalInput5612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2033 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2033 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5612 hH))).trans (oldProjectionSound2033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6060 (3 : Fin 5)) = (normalNode2947).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6059 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6060 (4 : Fin 5)) = canonicalInput5613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1588 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6060 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5613 hH))).trans (oldProjectionSound1588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2935).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6060 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2935).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6060 (j : Fin 5)))
      1 288 288 1 ![18, 288, 18, 2, 18] ![16, 1, 16, 144, 16] reductionProjection6060 ![reductionProjection1684, reductionProjection6019, oldProjection2033, reductionProjection6059, oldProjection1588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6061 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -3), (243, -16), (289, -72), (682, 48), (697, 24), (698, -16), (704, -8), (1040, 24), (1251, -3)]

def reductionPivot6061 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -1, 1], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 0, 3, -4]]

theorem reductionSound6061 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5858).moment H =
      Integer.Sparse.eval reductionProjection6061 (momentVector H) := by
  have heq : reductionPivot6061 = (fun u v => (normalNode5858).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5858).moment H = injectiveMoment H reductionPivot6061 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5858).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6061 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6061 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6061 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection897, oldProjection451, oldProjection758, oldProjection947] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6061 (0 : Fin 4)) = canonicalInput10095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10095 hH))).trans (oldProjectionSound897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6061 (1 : Fin 4)) = canonicalInput11956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11956 hH))).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6061 (2 : Fin 4)) = canonicalInput11991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection758 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11991 hH))).trans (oldProjectionSound758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6061 (3 : Fin 4)) = canonicalInput11994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6061 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11994 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5858).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6061 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5858).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6061 (j : Fin 4)))
      2 144 144 2 ![144, 1, 144, 72] ![1, 144, 1, 2] reductionProjection6061 ![oldProjection897, oldProjection451, oldProjection758, oldProjection947]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6062 : Integer.Sparse (Fin 1613) := [(0, -2), (7, -120), (19, -80), (20, 15), (81, -480), (94, 80), (228, -240), (229, -480), (243, 160), (283, 360), (284, 360), (289, 360), (293, 720), (682, -480), (683, -240), (686, -120), (697, -120), (698, 240), (704, 280), (1040, -360), (1251, 75), (1321, -480), (1323, -120), (1389, -360)]

def reductionPivot6062 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 3, 0, -4]]

theorem reductionSound6062 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2937).moment H =
      Integer.Sparse.eval reductionProjection6062 (momentVector H) := by
  have heq : reductionPivot6062 = (fun u v => (normalNode2937).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2937).moment H = injectiveMoment H reductionPivot6062 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2937).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6062 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6062 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6062 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1686, oldProjection2349, oldProjection2349, reductionProjection6061, oldProjection1586] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6062 (0 : Fin 5)) = (normalNode956).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1686 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6062 (1 : Fin 5)) = canonicalInput5591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2349 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5591 hH))).trans (oldProjectionSound2349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6062 (2 : Fin 5)) = canonicalInput5639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2349 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5639 hH))).trans (oldProjectionSound2349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6062 (3 : Fin 5)) = canonicalInput5640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6061 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5640 hH))).trans (reductionSound6061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6062 (4 : Fin 5)) = canonicalInput5641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6062 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5641 hH))).trans (oldProjectionSound1586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2937).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6062 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2937).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6062 (j : Fin 5)))
      1 720 1440 2 ![288, 1440, 1440, 144, 1440] ![5, 1, 1, 10, 1] reductionProjection6062 ![reductionProjection1686, oldProjection2349, oldProjection2349, reductionProjection6061, oldProjection1586]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6063 : Integer.Sparse (Fin 1613) := [(42, -8), (81, 24), (90, -16), (94, -1), (243, -8), (670, -72), (698, -32), (700, -8), (1059, -16), (1251, -1)]

def reductionPivot6063 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 2, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound6063 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2939).moment H =
      Integer.Sparse.eval reductionProjection6063 (momentVector H) := by
  have heq : reductionPivot6063 = (fun u v => (normalNode2939).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2939).moment H = injectiveMoment H reductionPivot6063 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2939).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6063 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6063 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6063 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1191, oldProjection852, reductionProjection1340, reductionProjection162] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6063 (0 : Fin 4)) = canonicalInput9419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1191 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9419 hH))).trans (oldProjectionSound1191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6063 (1 : Fin 4)) = canonicalInput5683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection852 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5683 hH))).trans (oldProjectionSound852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6063 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code670).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6063 (3 : Fin 4)) = canonicalInput5604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection162 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6063 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5604 hH))).trans (reductionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2939).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6063 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2939).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6063 (j : Fin 4)))
      2 144 144 2 ![72, 9, 1, 9] ![2, 16, 144, 16] reductionProjection6063 ![oldProjection1191, oldProjection852, reductionProjection1340, reductionProjection162]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6064 : Integer.Sparse (Fin 1613) := [(56, 36), (94, -1), (175, -36), (698, -8), (700, -16), (1052, 12), (1059, -4), (1219, 24), (1251, -1)]

def reductionPivot6064 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 0, -3, 3], ![0, 1, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound6064 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode2940).moment H =
      Integer.Sparse.eval reductionProjection6064 (momentVector H) := by
  have heq : reductionPivot6064 = (fun u v => (normalNode2940).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2940).moment H = injectiveMoment H reductionPivot6064 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2940).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6064 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6064 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6064 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection160, reductionProjection833, reductionProjection160, reductionProjection808] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6064 (0 : Fin 4)) = (normalNode7119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6064 (1 : Fin 4)) = canonicalInput5757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5757 hH))).trans (reductionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6064 (2 : Fin 4)) = canonicalInput5609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5609 hH))).trans (reductionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6064 (3 : Fin 4)) = canonicalInput5605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6064 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5605 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2940).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6064 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2940).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6064 (j : Fin 4)))
      2 72 72 2 ![72, 1, 72, 9] ![1, 72, 1, 8] reductionProjection6064 ![reductionProjection160, reductionProjection833, reductionProjection160, reductionProjection808]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6065 : Integer.Sparse (Fin 1613) := [(56, 48), (94, -1), (170, -72), (670, -72), (698, -8), (700, -24), (1052, 24), (1059, -8), (1219, 24), (1251, -1)]

def reductionPivot6065 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 0, -3, 3], ![0, 2, 0, -2], ![1, 0, 1, -2]]

theorem reductionSound6065 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2941).moment H =
      Integer.Sparse.eval reductionProjection6065 (momentVector H) := by
  have heq : reductionPivot6065 = (fun u v => (normalNode2941).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2941).moment H = injectiveMoment H reductionPivot6065 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2941).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6065 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6065 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6065 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection808, reductionProjection837, reductionProjection160, reductionProjection1340] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6065 (0 : Fin 4)) = (normalNode7120).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6065 (1 : Fin 4)) = canonicalInput5758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection837 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5758 hH))).trans (reductionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6065 (2 : Fin 4)) = canonicalInput5610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5610 hH))).trans (reductionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6065 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code670).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6065 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2941).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6065 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2941).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6065 (j : Fin 4)))
      2 144 144 2 ![9, 1, 72, 1] ![16, 144, 2, 144] reductionProjection6065 ![reductionProjection808, reductionProjection837, reductionProjection160, reductionProjection1340]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6066 : Integer.Sparse (Fin 1613) := [(671, 1)]

theorem reductionSound6066 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code671).moment H =
      Integer.Sparse.eval reductionProjection6066 (momentVector H) := by
  have hc : coordinates (671 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code671) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6066, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6067 : Integer.Sparse (Fin 1613) := [(42, -32), (76, 48), (90, -32), (94, -1), (243, -32), (671, -144), (686, 48), (698, -32), (700, -32), (704, -16), (1226, -16), (1251, -5)]

def reductionPivot6067 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 0, -3, 3], ![0, 2, 1, -3], ![1, 0, 0, -1]]

theorem reductionSound6067 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2942).moment H =
      Integer.Sparse.eval reductionProjection6067 (momentVector H) := by
  have heq : reductionPivot6067 = (fun u v => (normalNode2942).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2942).moment H = injectiveMoment H reductionPivot6067 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2942).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6067 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6067 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6067 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection162, reductionProjection4998, reductionProjection161, reductionProjection6066] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6067 (0 : Fin 4)) = (normalNode7121).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection162 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6067 (1 : Fin 4)) = canonicalInput5759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4998 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5759 hH))).trans (reductionSound4998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6067 (2 : Fin 4)) = canonicalInput5611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection161 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5611 hH))).trans (reductionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6067 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code671).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6066 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6067 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2942).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6067 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2942).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6067 (j : Fin 4)))
      2 288 288 2 ![9, 72, 144, 1] ![32, 4, 2, 288] reductionProjection6067 ![reductionProjection162, reductionProjection4998, reductionProjection161, reductionProjection6066]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6068 : Integer.Sparse (Fin 1613) := [(0, -17), (42, 80), (81, -720), (90, 320), (94, 20), (241, 80), (243, 160), (578, 720), (586, 1440), (670, 720), (674, 720), (698, 1200), (700, 640), (1059, 480), (1221, -240), (1226, 160), (1227, 320), (1251, -275)]

def reductionPivot6068 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound6068 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2943).moment H =
      Integer.Sparse.eval reductionProjection6068 (momentVector H) := by
  have heq : reductionPivot6068 = (fun u v => (normalNode2943).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2943).moment H = injectiveMoment H reductionPivot6068 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2943).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6068 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6068 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1440, 180] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6068 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1756, reductionProjection6063, oldProjection1810, oldProjection1810, oldProjection1843] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6068 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6068 (1 : Fin 5)) = (normalNode2939).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6063 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6068 (2 : Fin 5)) = canonicalInput5617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5617 hH))).trans (oldProjectionSound1810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6068 (3 : Fin 5)) = canonicalInput5619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5619 hH))).trans (oldProjectionSound1810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6068 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1843 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6068 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2943).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6068 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2943).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6068 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 1440, 180] ![1, 10, 1, 1, 8] reductionProjection6068 ![oldProjection1756, reductionProjection6063, oldProjection1810, oldProjection1810, oldProjection1843]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6069 : Integer.Sparse (Fin 1613) := [(0, -17), (56, -720), (81, -960), (94, 20), (175, 720), (611, 720), (616, 720), (672, -1440), (698, 1440), (700, 560), (1050, -240), (1052, -240), (1055, -480), (1058, -720), (1059, 720), (1219, -480), (1221, -240), (1227, 560), (1251, -235)]

def reductionPivot6069 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound6069 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2944).moment H =
      Integer.Sparse.eval reductionProjection6069 (momentVector H) := by
  have heq : reductionPivot6069 = (fun u v => (normalNode2944).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2944).moment H = injectiveMoment H reductionPivot6069 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2944).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6069 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6069 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 1440, 1, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6069 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2138, reductionProjection6064, oldProjection1844, reductionProjection1009, reductionProjection3723] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6069 (0 : Fin 5)) = (normalNode2613).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2138 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6069 (1 : Fin 5)) = (normalNode2940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6064 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6069 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6069 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code672).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1009 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1009 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6069 (4 : Fin 5)) = canonicalInput5623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6069 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5623 hH))).trans (reductionSound3723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2944).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6069 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2944).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6069 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 1440, 1, 288] ![1, 20, 1, 1440, 5] reductionProjection6069 ![reductionProjection2138, reductionProjection6064, oldProjection1844, reductionProjection1009, reductionProjection3723]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6070 : Integer.Sparse (Fin 1613) := [(0, -1), (56, -48), (81, -72), (94, 1), (170, 72), (578, 72), (586, 72), (636, 72), (638, 72), (670, 72), (673, -144), (674, 72), (698, 88), (700, 40), (1050, -24), (1052, -24), (1055, -24), (1058, -48), (1059, 48), (1219, -24), (1221, -48), (1227, 24), (1251, -14)]

def reductionPivot6070 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound6070 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2945).moment H =
      Integer.Sparse.eval reductionProjection6070 (momentVector H) := by
  have heq : reductionPivot6070 = (fun u v => (normalNode2945).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2945).moment H = injectiveMoment H reductionPivot6070 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2945).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6070 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6070 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 1440, 1, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6070 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1760, reductionProjection6065, reductionProjection3485, reductionProjection995, oldProjection1845] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6070 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1760⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1760 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6070 (1 : Fin 5)) = (normalNode2941).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6065 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6070 (2 : Fin 5)) = canonicalInput5625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3485 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5625 hH))).trans (reductionSound3485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6070 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code673).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection995 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6070 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1845⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1845 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6070 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2945).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6070 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2945).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6070 (j : Fin 5)))
      1 144 1440 10 ![720, 144, 1440, 1, 288] ![2, 10, 1, 1440, 5] reductionProjection6070 ![oldProjection1760, reductionProjection6065, reductionProjection3485, reductionProjection995, oldProjection1845]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6071 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (283, -720), (559, -720), (565, -720), (697, 240), (698, -160), (700, -80), (1059, -80), (1251, 5)]

def reductionPivot6071 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, -1, -1, 1]]

theorem reductionSound6071 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2950).moment H =
      Integer.Sparse.eval reductionProjection6071 (momentVector H) := by
  have heq : reductionPivot6071 = (fun u v => (normalNode2950).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2950).moment H = injectiveMoment H reductionPivot6071 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2950).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6071 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6071 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6071 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1056, oldProjection505, oldProjection447, oldProjection504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6071 (0 : Fin 4)) = canonicalInput18757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1056 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18757 hH))).trans (oldProjectionSound1056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6071 (1 : Fin 4)) = canonicalInput5765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5765 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6071 (2 : Fin 4)) = canonicalInput5637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5637 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6071 (3 : Fin 4)) = canonicalInput5628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6071 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5628 hH))).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2950).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6071 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2950).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6071 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection6071 ![oldProjection1056, oldProjection505, oldProjection447, oldProjection504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6072 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 16), (76, -48), (81, -72), (90, 32), (94, 6), (228, -24), (241, 16), (243, 32), (283, 72), (508, 72), (559, 144), (565, 72), (671, 72), (674, 72), (686, -24), (697, -24), (698, 120), (700, 64), (704, 8), (1059, 40), (1221, -24), (1226, 32), (1227, 16), (1251, -9)]

def reductionPivot6072 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6072 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2946).moment H =
      Integer.Sparse.eval reductionProjection6072 (momentVector H) := by
  have heq : reductionPivot6072 = (fun u v => (normalNode2946).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2946).moment H = injectiveMoment H reductionPivot6072 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2946).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6072 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6072 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6072 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1670, reductionProjection6067, oldProjection1845, reductionProjection6071, oldProjection1814] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6072 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2222 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1670 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2222 hH))).trans (oldProjectionSound1670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6072 (1 : Fin 5)) = (normalNode2942).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6067 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6072 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1845⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1845 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6072 (3 : Fin 5)) = (normalNode2950).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6072 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2559 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1814 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6072 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2559 hH))).trans (oldProjectionSound1814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2946).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6072 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2946).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6072 (j : Fin 5)))
      1 144 1440 10 ![1440, 288, 288, 1440, 720] ![1, 5, 5, 1, 2] reductionProjection6072 ![oldProjection1670, reductionProjection6067, oldProjection1845, reductionProjection6071, oldProjection1814]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6073 : Integer.Sparse (Fin 1613) := [(283, -1), (288, -1), (289, -1), (629, -1)]

def reductionPivot6073 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 2, 1, -4]]

theorem reductionSound6073 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2948).moment H =
      Integer.Sparse.eval reductionProjection6073 (momentVector H) := by
  have heq : reductionPivot6073 = (fun u v => (normalNode2948).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2948).moment H = injectiveMoment H reductionPivot6073 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2948).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6073 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6073 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6073 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection450, reductionProjection5425, oldProjection447, oldProjection451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6073 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3738 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection450 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3738 hH))).trans (oldProjectionSound450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6073 (1 : Fin 4)) = canonicalInput5685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5425 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5685 hH))).trans (reductionSound5425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6073 (2 : Fin 4)) = canonicalInput5632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5632 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6073 (3 : Fin 4)) = canonicalInput5630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6073 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5630 hH))).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2948).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6073 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2948).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6073 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6073 ![oldProjection450, reductionProjection5425, oldProjection447, oldProjection451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6074 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (241, -16), (243, -48), (271, -144), (289, -144), (499, -144), (698, -32), (704, -32), (1251, -1)]

def reductionPivot6074 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 3, 1, -4], ![1, -2, 0, 1]]

theorem reductionSound6074 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2951).moment H =
      Integer.Sparse.eval reductionProjection6074 (momentVector H) := by
  have heq : reductionPivot6074 = (fun u v => (normalNode2951).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2951).moment H = injectiveMoment H reductionPivot6074 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2951).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6074 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6074 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6074 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1306, reductionProjection4369, oldProjection451, reductionProjection2204] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6074 (0 : Fin 4)) = canonicalInput18231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18231 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6074 (1 : Fin 4)) = canonicalInput5764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5764 hH))).trans (reductionSound4369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6074 (2 : Fin 4)) = canonicalInput5638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5638 hH))).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6074 (3 : Fin 4)) = canonicalInput5629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2204 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6074 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5629 hH))).trans (reductionSound2204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2951).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6074 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2951).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6074 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6074 ![oldProjection1306, reductionProjection4369, oldProjection451, reductionProjection2204]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6075 : Integer.Sparse (Fin 1613) := [(38, 3), (42, -1), (243, -2), (271, -9), (283, -9), (677, -9), (698, -1), (700, -1), (704, -1)]

def reductionPivot6075 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 3, 1, -4], ![1, -1, -1, 1]]

theorem reductionSound6075 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode2952).moment H =
      Integer.Sparse.eval reductionProjection6075 (momentVector H) := by
  have heq : reductionPivot6075 = (fun u v => (normalNode2952).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2952).moment H = injectiveMoment H reductionPivot6075 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2952).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6075 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6075 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6075 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5620, reductionProjection6030, oldProjection447, reductionProjection2204] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6075 (0 : Fin 4)) = (normalNode7125).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5620 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5620 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6075 (1 : Fin 4)) = canonicalInput5760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5760 hH))).trans (reductionSound6030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6075 (2 : Fin 4)) = canonicalInput5637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5637 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6075 (3 : Fin 4)) = canonicalInput5629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2204 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6075 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5629 hH))).trans (reductionSound2204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2952).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6075 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2952).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6075 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection6075 ![reductionProjection5620, reductionProjection6030, oldProjection447, reductionProjection2204]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6076 : Integer.Sparse (Fin 1613) := [(629, -1), (675, -1), (919, -1), (1014, -1)]

def reductionPivot6076 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 1, -2, 1], ![1, -2, 0, 1], ![1, 2, 1, -4]]

theorem reductionSound6076 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2963).moment H =
      Integer.Sparse.eval reductionProjection6076 (momentVector H) := by
  have heq : reductionPivot6076 = (fun u v => (normalNode2963).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2963).moment H = injectiveMoment H reductionPivot6076 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2963).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6076 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6076 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6076 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection618, reductionProjection5425, reductionProjection5991, oldProjection612] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6076 (0 : Fin 4)) = canonicalInput5162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection618 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5162 hH))).trans (oldProjectionSound618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6076 (1 : Fin 4)) = canonicalInput5685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5425 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5685 hH))).trans (reductionSound5425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6076 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code675).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5991 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6076 (3 : Fin 4)) = canonicalInput5691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6076 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5691 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2963).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6076 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2963).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6076 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6076 ![oldProjection618, reductionProjection5425, reductionProjection5991, oldProjection612]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6077 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (81, -480), (94, 85), (228, -480), (241, 160), (243, 400), (283, 720), (288, 720), (289, 720), (629, 1440), (675, 1440), (682, -480), (686, -240), (697, -240), (698, 320), (704, 240), (919, 1440), (1014, 1440), (1040, -240), (1223, -240), (1226, 160), (1227, 80), (1251, 40), (1389, -240)]

def reductionPivot6077 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 2, 1, -4]]

theorem reductionSound6077 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2953).moment H =
      Integer.Sparse.eval reductionProjection6077 (momentVector H) := by
  have heq : reductionPivot6077 = (fun u v => (normalNode2953).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2953).moment H = injectiveMoment H reductionPivot6077 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2953).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6077 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6077 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 144, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6077 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5518, reductionProjection6073, reductionProjection6076, reductionProjection6055, reductionProjection4445] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6077 (0 : Fin 5)) = canonicalInput4989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4989 hH))).trans (reductionSound5518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6077 (1 : Fin 5)) = (normalNode2948).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6073 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6077 (2 : Fin 5)) = (normalNode2963).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6076 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6077 (3 : Fin 5)) = (normalNode2965).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6077 (4 : Fin 5)) = canonicalInput5643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4445 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6077 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5643 hH))).trans (reductionSound4445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2953).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6077 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2953).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6077 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 144, 720] ![1, 720, 720, 10, 2] reductionProjection6077 ![reductionProjection5518, reductionProjection6073, reductionProjection6076, reductionProjection6055, reductionProjection4445]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6078 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 11), (674, 144), (698, 288), (700, 16), (1059, 176), (1221, -48), (1227, 128), (1251, -58)]

def reductionPivot6078 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1]]

theorem reductionSound6078 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2954).moment H =
      Integer.Sparse.eval reductionProjection6078 (momentVector H) := by
  have heq : reductionPivot6078 = (fun u v => (normalNode2954).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2954).moment H = injectiveMoment H reductionPivot6078 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2954).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6078 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6078 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 180, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6078 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2778, oldProjection1843, oldProjection1786, oldProjection1786, oldProjection1785] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6078 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2256 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2778 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2256 hH))).trans (oldProjectionSound2778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6078 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1843 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6078 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2570 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2570 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6078 (3 : Fin 5)) = canonicalInput5645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5645 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6078 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2575 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6078 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2575 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2954).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6078 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2954).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6078 (j : Fin 5)))
      1 288 1440 5 ![720, 180, 1440, 1440, 1440] ![2, 8, 1, 1, 1] reductionProjection6078 ![oldProjection2778, oldProjection1843, oldProjection1786, oldProjection1786, oldProjection1785]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6079 : Integer.Sparse (Fin 1613) := [(0, 4), (19, -20), (81, -960), (90, 320), (94, 105), (228, -480), (243, 80), (283, 720), (618, 1440), (686, -240), (698, 2400), (700, 240), (704, 80), (1058, -240), (1059, 400), (1226, 960), (1227, 1280), (1251, -275), (1389, -720)]

def reductionPivot6079 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 2, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]

theorem reductionSound6079 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2955).moment H =
      Integer.Sparse.eval reductionProjection6079 (momentVector H) := by
  have heq : reductionPivot6079 = (fun u v => (normalNode2955).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2955).moment H = injectiveMoment H reductionPivot6079 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2955).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6079 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6079 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6079 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1770, reductionProjection6040, oldProjection1794, reductionProjection5726, oldProjection1847] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6079 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1770⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1770 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6079 (1 : Fin 5)) = (normalNode2949).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6040 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6079 (2 : Fin 5)) = canonicalInput5644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1794 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5644 hH))).trans (oldProjectionSound1794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6079 (3 : Fin 5)) = (normalNode2966).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5726 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6079 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6079 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2955).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6079 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2955).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6079 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 288] ![1, 1, 1, 2, 5] reductionProjection6079 ![oldProjection1770, reductionProjection6040, oldProjection1794, reductionProjection5726, oldProjection1847]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

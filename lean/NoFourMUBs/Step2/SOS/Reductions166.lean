import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical074
import NoFourMUBs.Step2.SOS.Canonical075
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical077
import NoFourMUBs.Step2.SOS.Canonical083
import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical087
import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical130
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical266
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions140
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical104
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical105
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical201
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical209
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical253
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical68
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical69
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical70
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection5312 : Integer.Sparse (Fin 1613) := [(81, 1), (197, -3), (219, -3), (229, 1), (589, -3), (1058, 1)]

def reductionPivot5312 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 3, -2, -2]]

theorem reductionSound5312 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode2310).moment H =
      Integer.Sparse.eval reductionProjection5312 (momentVector H) := by
  have heq : reductionPivot5312 = (fun u v => (normalNode2310).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2310).moment H = injectiveMoment H reductionPivot5312 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2310).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5312 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5312 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5312 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection728, reductionProjection5311, reductionProjection1634, oldProjection410] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5312 (0 : Fin 4)) = canonicalInput13830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection728 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13830 hH))).trans (oldProjectionSound728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5312 (1 : Fin 4)) = canonicalInput5317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5311 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5317 hH))).trans (reductionSound5311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5312 (2 : Fin 4)) = canonicalInput4774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1634 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4774 hH))).trans (reductionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5312 (3 : Fin 4)) = canonicalInput4755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5312 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4755 hH))).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2310).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5312 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2310).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5312 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection5312 ![oldProjection728, reductionProjection5311, reductionProjection1634, oldProjection410]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5313 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -36), (20, 3), (76, -48), (81, -48), (94, 30), (197, 144), (219, 288), (229, -48), (241, 16), (243, 32), (247, 16), (589, 144), (682, -96), (697, -336), (698, 80), (704, 80), (1058, -96), (1086, 288), (1115, 288), (1226, 16), (1250, 36), (1251, 5), (1323, -96), (1389, -96)]

def reductionPivot5313 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]

theorem reductionSound5313 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2294).moment H =
      Integer.Sparse.eval reductionProjection5313 (momentVector H) := by
  have heq : reductionPivot5313 = (fun u v => (normalNode2294).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2294).moment H = injectiveMoment H reductionPivot5313 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2294).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5313 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5313 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 6, 6, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5313 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5310, oldProjection2192, reductionProjection5312, reductionProjection5293, reductionProjection5290] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5313 (0 : Fin 5)) = canonicalInput5561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5310 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5561 hH))).trans (reductionSound5310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5313 (1 : Fin 5)) = canonicalInput4783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2192 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4783 hH))).trans (oldProjectionSound2192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5313 (2 : Fin 5)) = (normalNode2310).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5312 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5313 (3 : Fin 5)) = (normalNode2304).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5293 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5313 (4 : Fin 5)) = canonicalInput4753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5290 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5313 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4753 hH))).trans (reductionSound5290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2294).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5313 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2294).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5313 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 6, 6, 720] ![2, 1, 240, 240, 2] reductionProjection5313 ![reductionProjection5310, oldProjection2192, reductionProjection5312, reductionProjection5293, reductionProjection5290]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5314 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -80), (94, 55), (241, 560), (243, 80), (247, 160), (478, 720), (541, 720), (666, 720), (697, -240), (698, 960), (700, 80), (1050, -960), (1055, -480), (1058, -240), (1059, 240), (1226, 80), (1227, 80), (1250, 60), (1251, -45)]

def reductionPivot5314 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound5314 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2295).moment H =
      Integer.Sparse.eval reductionProjection5314 (momentVector H) := by
  have heq : reductionPivot5314 = (fun u v => (normalNode2295).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2295).moment H = injectiveMoment H reductionPivot5314 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2295).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5314 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5314 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5314 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1833, oldProjection2821, oldProjection2615, oldProjection1726, reductionProjection4614] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5314 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1833 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5314 (1 : Fin 5)) = canonicalInput4786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2821 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4786 hH))).trans (oldProjectionSound2821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5314 (2 : Fin 5)) = canonicalInput4760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2615 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4760 hH))).trans (oldProjectionSound2615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5314 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1726⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1726 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5314 (4 : Fin 5)) = canonicalInput4757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4614 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5314 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4757 hH))).trans (reductionSound4614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2295).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5314 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2295).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5314 (j : Fin 5)))
      1 1440 1440 1 ![360, 1440, 1440, 1440, 1440] ![4, 1, 1, 1, 1] reductionProjection5314 ![oldProjection1833, oldProjection2821, oldProjection2615, oldProjection1726, reductionProjection4614]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5315 : Integer.Sparse (Fin 1613) := [(0, -13), (19, 20), (94, -50), (241, -80), (247, -160), (698, -160), (1055, 240), (1227, -80), (1251, 55), (1388, 240)]

def reductionPivot5315 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -2, 2]]

theorem reductionSound5315 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9101).moment H =
      Integer.Sparse.eval reductionProjection5315 (momentVector H) := by
  have heq : reductionPivot5315 = (fun u v => (normalNode9101).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9101).moment H = injectiveMoment H reductionPivot5315 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9101).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5315 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5315 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5315 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection835, oldProjection1084, oldProjection1083, oldProjection1260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5315 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6701 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6701 hH))).trans (oldProjectionSound835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5315 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1084 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5315 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5315 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6542 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5315 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6542 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9101).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5315 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9101).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5315 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 720, 720] ![2, 4, 2, 2] reductionProjection5315 ![oldProjection835, oldProjection1084, oldProjection1083, oldProjection1260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5316 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (247, -40), (546, -360), (698, -40), (1055, 360), (1058, 120), (1227, -40), (1250, -30), (1251, 15), (1388, 120)]

def reductionPivot5316 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound5316 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2316).moment H =
      Integer.Sparse.eval reductionProjection5316 (momentVector H) := by
  have heq : reductionPivot5316 = (fun u v => (normalNode2316).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2316).moment H = injectiveMoment H reductionPivot5316 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2316).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5316 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5316 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5316 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1033, oldProjection828, oldProjection1084, oldProjection500] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5316 (0 : Fin 4)) = canonicalInput7387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1033 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1033 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7387 hH))).trans (oldProjectionSound1033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5316 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2231 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2231 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5316 (2 : Fin 4)) = canonicalInput4776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1084 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4776 hH))).trans (oldProjectionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5316 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node500⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5316 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2316).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5316 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2316).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5316 (j : Fin 4)))
      2 720 720 2 ![720, 720, 360, 1] ![1, 1, 2, 720] reductionProjection5316 ![oldProjection1033, oldProjection828, oldProjection1084, oldProjection500]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5317 : Integer.Sparse (Fin 1613) := [(0, 5), (19, -16), (94, 35), (241, 64), (243, 16), (247, 80), (546, 144), (549, 144), (669, 144), (697, -48), (698, 192), (700, 16), (1055, -192), (1058, -48), (1059, 32), (1226, 16), (1227, 96), (1250, 12), (1251, -50), (1388, -96), (1389, -48)]

def reductionPivot5317 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound5317 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2296).moment H =
      Integer.Sparse.eval reductionProjection5317 (momentVector H) := by
  have heq : reductionPivot5317 = (fun u v => (normalNode2296).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2296).moment H = injectiveMoment H reductionPivot5317 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2296).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5317 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5317 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5317 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1834, oldProjection2822, reductionProjection5315, reductionProjection5316, oldProjection1728] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5317 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5317 (1 : Fin 5)) = canonicalInput4791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2822 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4791 hH))).trans (oldProjectionSound2822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5317 (2 : Fin 5)) = canonicalInput4761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4761 hH))).trans (reductionSound5315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5317 (3 : Fin 5)) = (normalNode2316).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5316 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5317 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1728⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1728 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5317 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2296).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5317 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2296).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5317 (j : Fin 5)))
      1 288 1440 5 ![1440, 720, 1440, 720, 1440] ![1, 2, 1, 2, 1] reductionProjection5317 ![oldProjection1834, oldProjection2822, reductionProjection5315, reductionProjection5316, oldProjection1728]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5318 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 7), (241, 24), (247, 8), (484, 144), (541, 144), (668, 72), (697, -24), (698, 96), (1050, -24), (1055, -24), (1059, 48), (1221, -48), (1227, 8), (1251, -13), (1389, -48)]

def reductionPivot5318 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound5318 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2297).moment H =
      Integer.Sparse.eval reductionProjection5318 (momentVector H) := by
  have heq : reductionPivot5318 = (fun u v => (normalNode2297).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2297).moment H = injectiveMoment H reductionPivot5318 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2297).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5318 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5318 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 360, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5318 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1835, oldProjection2830, oldProjection1729, oldProjection1729, oldProjection2615] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5318 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1835⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1835 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5318 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2183 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2830 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2183 hH))).trans (oldProjectionSound2830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5318 (2 : Fin 5)) = canonicalInput4764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1729 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4764 hH))).trans (oldProjectionSound1729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5318 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1729⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1729 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5318 (4 : Fin 5)) = canonicalInput4760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2615 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5318 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4760 hH))).trans (oldProjectionSound2615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2297).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5318 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2297).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5318 (j : Fin 5)))
      1 144 1440 10 ![1440, 360, 1440, 1440, 1440] ![1, 4, 1, 1, 1] reductionProjection5318 ![oldProjection1835, oldProjection2830, oldProjection1729, oldProjection1729, oldProjection2615]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5319 : Integer.Sparse (Fin 1613) := [(94, -1), (478, -144), (543, -144), (559, -144), (698, -16), (1052, 48), (1221, 48), (1226, -16), (1251, 3)]

def reductionPivot5319 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, -2, 0], ![2, 0, 1, -3]]

theorem reductionSound5319 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2300).moment H =
      Integer.Sparse.eval reductionProjection5319 (momentVector H) := by
  have heq : reductionPivot5319 = (fun u v => (normalNode2300).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2300).moment H = injectiveMoment H reductionPivot5319 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2300).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5319 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5319 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5319 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection504, oldProjection1223, oldProjection484, oldProjection498] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5319 (0 : Fin 4)) = canonicalInput5575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5575 hH))).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5319 (1 : Fin 4)) = canonicalInput4797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1223 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4797 hH))).trans (oldProjectionSound1223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5319 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2166 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2166 hH))).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5319 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node498⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection498 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5319 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2300).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5319 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2300).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5319 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection5319 ![oldProjection504, oldProjection1223, oldProjection484, oldProjection498]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5320 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (241, -160), (478, -720), (666, -720), (698, -240), (1050, 240), (1055, 240), (1227, -80), (1251, -5)]

def reductionPivot5320 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, -1, -1], ![2, 0, 0, -2]]

theorem reductionSound5320 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2301).moment H =
      Integer.Sparse.eval reductionProjection5320 (momentVector H) := by
  have heq : reductionPivot5320 = (fun u v => (normalNode2301).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2301).moment H = injectiveMoment H reductionPivot5320 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2301).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5320 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5320 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 360, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5320 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection520, oldProjection1316, oldProjection1059, oldProjection484] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5320 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection520 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5320 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2185 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1316 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2185 hH))).trans (oldProjectionSound1316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5320 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2168 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2168 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5320 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2166 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5320 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2166 hH))).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2301).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5320 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2301).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5320 (j : Fin 4)))
      2 1440 1440 2 ![1, 360, 144, 1] ![1440, 4, 10, 1440] reductionProjection5320 ![oldProjection520, oldProjection1316, oldProjection1059, oldProjection484]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5321 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (81, -120), (94, 50), (228, -60), (241, 100), (247, 60), (484, 180), (546, 180), (638, 180), (668, 180), (697, -60), (698, 260), (1050, -120), (1055, -180), (1059, 80), (1221, -60), (1227, 20), (1250, 15), (1251, -30), (1389, -60)]

def reductionPivot5321 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound5321 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2302).moment H =
      Integer.Sparse.eval reductionProjection5321 (momentVector H) := by
  have heq : reductionPivot5321 = (fun u v => (normalNode2302).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2302).moment H = injectiveMoment H reductionPivot5321 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2302).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5321 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5321 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 360, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5321 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1838, oldProjection2814, reductionProjection4619, oldProjection2610, oldProjection1734] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5321 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1838 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5321 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2186 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2814 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2186 hH))).trans (oldProjectionSound2814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5321 (2 : Fin 5)) = canonicalInput4769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4619 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4769 hH))).trans (reductionSound4619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5321 (3 : Fin 5)) = canonicalInput4768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2610 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4768 hH))).trans (oldProjectionSound2610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5321 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1734⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1734 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5321 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2302).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5321 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2302).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5321 (j : Fin 5)))
      1 360 1440 4 ![1440, 720, 360, 144, 1440] ![1, 2, 4, 10, 1] reductionProjection5321 ![oldProjection1838, oldProjection2814, reductionProjection4619, oldProjection2610, oldProjection1734]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5322 : Integer.Sparse (Fin 1613) := [(0, 1), (546, -720), (547, -720), (563, -720), (697, 240), (698, -80), (1227, -80), (1251, 15), (1389, 240)]

def reductionPivot5322 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound5322 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2306).moment H =
      Integer.Sparse.eval reductionProjection5322 (momentVector H) := by
  have heq : reductionPivot5322 = (fun u v => (normalNode2306).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2306).moment H = injectiveMoment H reductionPivot5322 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2306).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5322 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5322 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5322 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, oldProjection1276, reductionProjection1083, oldProjection500] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5322 (0 : Fin 4)) = canonicalInput5585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5585 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5322 (1 : Fin 4)) = canonicalInput4805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4805 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5322 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code547).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5322 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node500⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5322 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2306).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5322 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2306).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5322 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection5322 ![reductionProjection1046, oldProjection1276, reductionProjection1083, oldProjection500]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5323 : Integer.Sparse (Fin 1613) := [(540, 1)]

theorem reductionSound5323 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code540).moment H =
      Integer.Sparse.eval reductionProjection5323 (momentVector H) := by
  have hc : coordinates (540 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code540) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5323, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5324 : Integer.Sparse (Fin 1613) := [(38, 1), (81, 1), (231, 1), (543, -3), (548, -3), (607, -3)]

def reductionPivot5324 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, 1, 2, -4]]

theorem reductionSound5324 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode2322).moment H =
      Integer.Sparse.eval reductionProjection5324 (momentVector H) := by
  have heq : reductionPivot5324 = (fun u v => (normalNode2322).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2322).moment H = injectiveMoment H reductionPivot5324 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2322).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5324 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5324 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5324 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection722, reductionProjection5204, oldProjection501, oldProjection498] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5324 (0 : Fin 4)) = canonicalInput13832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection722 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13832 hH))).trans (reductionSound722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5324 (1 : Fin 4)) = canonicalInput5318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5204 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5318 hH))).trans (reductionSound5204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5324 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5324 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node498⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection498 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5324 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2322).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5324 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2322).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5324 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection5324 ![reductionProjection722, reductionProjection5204, oldProjection501, oldProjection498]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5325 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -440), (20, 5), (38, -240), (81, -240), (88, 400), (94, 195), (228, -1200), (231, -240), (241, 1520), (243, 1440), (247, 880), (543, 720), (548, 1440), (607, 720), (698, 960), (704, 80), (1226, 320), (1251, 65)]

def reductionPivot5325 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound5325 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2313).moment H =
      Integer.Sparse.eval reductionProjection5325 (momentVector H) := by
  have heq : reductionPivot5325 = (fun u v => (normalNode2313).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2313).moment H = injectiveMoment H reductionPivot5325 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2313).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5325 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5325 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 6, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5325 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1562, oldProjection1754, reductionProjection5324, oldProjection1727, reductionProjection5295] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5325 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3353 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1562 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3353 hH))).trans (oldProjectionSound1562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5325 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1754⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1754 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5325 (2 : Fin 5)) = (normalNode2322).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5324 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5325 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1727 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5325 (4 : Fin 5)) = canonicalInput4758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5295 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5325 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4758 hH))).trans (reductionSound5295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2313).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5325 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2313).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5325 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 6, 1440, 1440] ![1, 20, 240, 1, 1] reductionProjection5325 ![oldProjection1562, oldProjection1754, reductionProjection5324, oldProjection1727, reductionProjection5295]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5326 : Integer.Sparse (Fin 1613) := [(88, 1), (91, 1), (243, -1), (1225, 1), (1226, 1)]

def reductionPivot5326 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 1, 2], ![0, 1, -3, 2], ![0, 1, 3, -4]]

theorem reductionSound5326 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7065).moment H =
      Integer.Sparse.eval reductionProjection5326 (momentVector H) := by
  have heq : reductionPivot5326 = (fun u v => (normalNode7065).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7065).moment H = injectiveMoment H reductionPivot5326 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7065).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot5326 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5326 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5326 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection32, oldProjection137, oldProjection106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5326 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8098 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5326 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection32 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5326 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection32 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8098 hH))).trans (oldProjectionSound32 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5326 (1 : Fin 3)) = canonicalInput13955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5326 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5326 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13955 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5326 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5775 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5326 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5326 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5775 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7065).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5326 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7065).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5326 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection5326 ![oldProjection32, oldProjection137, oldProjection106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5327 : Integer.Sparse (Fin 1613) := [(20, -1), (77, 48), (88, -32), (91, -16), (94, 2), (241, -16), (243, -48), (698, -16), (1223, 48), (1225, -16), (1226, -16), (1251, 3)]

def reductionPivot5327 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 1, 2], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound5327 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6974).moment H =
      Integer.Sparse.eval reductionProjection5327 (momentVector H) := by
  have heq : reductionPivot5327 = (fun u v => (normalNode6974).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6974).moment H = injectiveMoment H reductionPivot5327 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6974).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5327 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5327 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5327 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1031, reductionProjection5326, oldProjection833, oldProjection830] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5327 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6432 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6432 hH))).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5327 (1 : Fin 4)) = (normalNode7065).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5326 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5327 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node833⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection833 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5327 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node830⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection830 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5327 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6974).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5327 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6974).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5327 (j : Fin 4)))
      2 288 288 2 ![144, 9, 9, 144] ![2, 32, 32, 2] reductionProjection5327 ![oldProjection1031, reductionProjection5326, oldProjection833, oldProjection830]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5328 : Integer.Sparse (Fin 1613) := [(633, 1)]

theorem reductionSound5328 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code633).moment H =
      Integer.Sparse.eval reductionProjection5328 (momentVector H) := by
  have hc : coordinates (633 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code633) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5328, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5329 : Integer.Sparse (Fin 1613) := [(38, 24), (94, -1), (450, -72), (543, -72), (633, -72), (698, -8), (700, -8), (1061, 24), (1251, -1)]

def reductionPivot5329 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, 0, 3, -4]]

theorem reductionSound5329 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2323).moment H =
      Integer.Sparse.eval reductionProjection5329 (momentVector H) := by
  have heq : reductionPivot5329 = (fun u v => (normalNode2323).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2323).moment H = injectiveMoment H reductionPivot5329 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2323).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5329 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5329 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5329 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection997, reductionProjection5328, reductionProjection4499, oldProjection498] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5329 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node997⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5329 (1 : Fin 4)) = canonicalInput5340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5328 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5328 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5340 hH))).trans (reductionSound5328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5329 (2 : Fin 4)) = canonicalInput4778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4778 hH))).trans (reductionSound4499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5329 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node498⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection498 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5329 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2323).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5329 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2323).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5329 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection5329 ![oldProjection997, reductionProjection5328, reductionProjection4499, oldProjection498]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5330 : Integer.Sparse (Fin 1613) := [(19, 4), (38, 24), (77, 24), (94, -1), (241, -16), (243, -24), (450, -72), (548, -72), (698, -8), (704, -8), (1223, 24), (1251, -1)]

def reductionPivot5330 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 1, -2, 0]]

theorem reductionSound5330 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2317).moment H =
      Integer.Sparse.eval reductionProjection5330 (momentVector H) := by
  have heq : reductionPivot5330 = (fun u v => (normalNode2317).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2317).moment H = injectiveMoment H reductionPivot5330 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2317).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5330 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5330 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5330 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1155, oldProjection830, oldProjection501, reductionProjection4499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5330 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3365 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1155 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3365 hH))).trans (oldProjectionSound1155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5330 (1 : Fin 4)) = canonicalInput4937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection830 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4937 hH))).trans (oldProjectionSound830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5330 (2 : Fin 4)) = canonicalInput4777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4777 hH))).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5330 (3 : Fin 4)) = canonicalInput4775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5330 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4775 hH))).trans (reductionSound4499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2317).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5330 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2317).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5330 (j : Fin 4)))
      2 144 144 2 ![144, 144, 1, 1] ![1, 1, 144, 144] reductionProjection5330 ![oldProjection1155, oldProjection830, oldProjection501, reductionProjection4499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5331 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -220), (20, 10), (38, -720), (77, -480), (88, 240), (91, 80), (94, 95), (228, -240), (241, 720), (243, 800), (247, 400), (450, 1440), (543, 720), (548, 1440), (633, 720), (698, 560), (700, 80), (704, 240), (1061, -240), (1223, -480), (1225, 80), (1226, 160), (1251, 40)]

def reductionPivot5331 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]

theorem reductionSound5331 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2314).moment H =
      Integer.Sparse.eval reductionProjection5331 (momentVector H) := by
  have heq : reductionPivot5331 = (fun u v => (normalNode2314).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2314).moment H = injectiveMoment H reductionPivot5331 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2314).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5331 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5331 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5331 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2715, reductionProjection5327, reductionProjection5329, reductionProjection5330, oldProjection1727] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5331 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3354 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2715 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3354 hH))).trans (oldProjectionSound2715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5331 (1 : Fin 5)) = canonicalInput4919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5327 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4919 hH))).trans (reductionSound5327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5331 (2 : Fin 5)) = (normalNode2323).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5331 (3 : Fin 5)) = canonicalInput4759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5330 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4759 hH))).trans (reductionSound5330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5331 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1727 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5331 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2314).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5331 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2314).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5331 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 144, 1440] ![1, 5, 10, 10, 1] reductionProjection5331 ![oldProjection2715, reductionProjection5327, reductionProjection5329, reductionProjection5330, oldProjection1727]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5332 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (88, 16), (91, 16), (94, -2), (243, 48), (244, 16), (1226, 16), (1251, 1)]

def reductionPivot5332 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 1, 2], ![0, 1, -3, 2], ![1, 0, 3, -4]]

theorem reductionSound5332 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7061).moment H =
      Integer.Sparse.eval reductionProjection5332 (momentVector H) := by
  have heq : reductionPivot5332 = (fun u v => (normalNode7061).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7061).moment H = injectiveMoment H reductionPivot5332 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7061).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot5332 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5332 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5332 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection155, oldProjection138, oldProjection106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5332 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6525 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5332 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5332 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6525 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5332 (1 : Fin 3)) = canonicalInput13929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5332 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection138 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5332 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13929 hH))).trans (oldProjectionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5332 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5775 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5332 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5332 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5775 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7061).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5332 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7061).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5332 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection5332 ![oldProjection155, oldProjection138, oldProjection106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5333 : Integer.Sparse (Fin 1613) := [(77, -1), (1052, -1), (1053, -1)]

def reductionPivot5333 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![1, -2, -2, 3], ![2, 2, 0, -4]]

theorem reductionSound5333 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6978).moment H =
      Integer.Sparse.eval reductionProjection5333 (momentVector H) := by
  have heq : reductionPivot5333 = (fun u v => (normalNode6978).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6978).moment H = injectiveMoment H reductionPivot5333 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6978).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6978).entries)).symm
  have hshape : reductionPivot5333 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5333 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5333 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection104, oldProjection199, oldProjection198] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5333 (0 : Fin 3)) = canonicalInput567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5333 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5333 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound567 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5333 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4179 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5333 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection199 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5333 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4179 hH))).trans (oldProjectionSound199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5333 (2 : Fin 3)) = canonicalInput9462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5333 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5333 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9462 hH))).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6978).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5333 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6978).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5333 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection5333 ![oldProjection104, oldProjection199, oldProjection198]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5334 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -2), (77, 48), (88, -32), (91, -16), (94, 3), (241, -48), (243, -96), (244, -16), (698, -16), (1052, 48), (1053, 48), (1226, -32), (1251, 5)]

def reductionPivot5334 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 1, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 3, -4]]

theorem reductionSound5334 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6970).moment H =
      Integer.Sparse.eval reductionProjection5334 (momentVector H) := by
  have heq : reductionPivot5334 = (fun u v => (normalNode6970).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6970).moment H = injectiveMoment H reductionPivot5334 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6970).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5334 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5334 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5334 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1031, reductionProjection5332, reductionProjection5333, oldProjection826] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5334 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1031⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5334 (1 : Fin 4)) = (normalNode7061).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5332 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5334 (2 : Fin 4)) = (normalNode6978).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5333 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5334 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node826⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection826 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5334 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6970).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5334 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6970).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5334 (j : Fin 4)))
      2 288 288 2 ![144, 144, 3, 72] ![2, 2, 96, 4] reductionProjection5334 ![oldProjection1031, reductionProjection5332, reductionProjection5333, oldProjection826]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5335 : Integer.Sparse (Fin 1613) := [(625, 1)]

theorem reductionSound5335 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code625).moment H =
      Integer.Sparse.eval reductionProjection5335 (momentVector H) := by
  have hc : coordinates (625 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code625) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5335, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5336 : Integer.Sparse (Fin 1613) := [(19, 12), (38, 48), (94, -5), (247, -16), (447, -144), (548, -144), (625, -144), (704, -16), (1251, -5)]

def reductionPivot5336 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 1, -2, 0]]

theorem reductionSound5336 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2321).moment H =
      Integer.Sparse.eval reductionProjection5336 (momentVector H) := by
  have heq : reductionPivot5336 = (fun u v => (normalNode2321).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2321).moment H = injectiveMoment H reductionPivot5336 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2321).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5336 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5336 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5336 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection996, reductionProjection5335, oldProjection501, reductionProjection4488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5336 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node996⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection996 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5336 (1 : Fin 4)) = canonicalInput5339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5335 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5339 hH))).trans (reductionSound5335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5336 (2 : Fin 4)) = canonicalInput4777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4777 hH))).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5336 (3 : Fin 4)) = canonicalInput4766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5336 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4766 hH))).trans (reductionSound4488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2321).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5336 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2321).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5336 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection5336 ![oldProjection996, reductionProjection5335, oldProjection501, reductionProjection4488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5337 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -320), (20, 20), (38, -720), (77, -240), (88, 160), (91, 80), (94, 125), (228, -480), (231, -240), (241, 720), (243, 720), (244, 160), (247, 480), (447, 1440), (545, 720), (548, 1440), (625, 1440), (698, 240), (700, 240), (704, 160), (1052, -240), (1053, -480), (1059, 80), (1226, 160), (1251, 105)]

def reductionPivot5337 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound5337 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2315).moment H =
      Integer.Sparse.eval reductionProjection5337 (momentVector H) := by
  have heq : reductionPivot5337 = (fun u v => (normalNode2315).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2315).moment H = injectiveMoment H reductionPivot5337 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2315).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5337 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5337 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5337 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2683, reductionProjection5334, oldProjection1735, reductionProjection5336, reductionProjection5336] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5337 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3358 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2683 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3358 hH))).trans (oldProjectionSound2683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5337 (1 : Fin 5)) = canonicalInput4932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5334 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4932 hH))).trans (reductionSound5334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5337 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1735⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1735 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5337 (3 : Fin 5)) = canonicalInput4765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5336 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4765 hH))).trans (reductionSound5336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5337 (4 : Fin 5)) = (normalNode2321).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5336 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5337 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2315).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5337 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2315).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5337 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 288, 288] ![1, 5, 1, 5, 5] reductionProjection5337 ![oldProjection2683, reductionProjection5334, oldProjection1735, reductionProjection5336, reductionProjection5336]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5338 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -40), (94, 115), (228, -240), (241, 160), (247, 160), (546, 1440), (549, 1440), (638, 720), (698, 1040), (1050, -240), (1055, -480), (1059, 80), (1226, 320), (1227, 480), (1250, 60), (1251, -180), (1389, -480)]

def reductionPivot5338 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound5338 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2318).moment H =
      Integer.Sparse.eval reductionProjection5338 (momentVector H) := by
  have heq : reductionPivot5338 = (fun u v => (normalNode2318).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2318).moment H = injectiveMoment H reductionPivot5338 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2318).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5338 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5338 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5338 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2585, oldProjection2443, oldProjection1734, oldProjection1731, oldProjection1730] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5338 (0 : Fin 5)) = canonicalInput8353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2585 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8353 hH))).trans (oldProjectionSound2585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5338 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2260 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2260 hH))).trans (oldProjectionSound2443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5338 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1734⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1734 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5338 (3 : Fin 5)) = canonicalInput4762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1731 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4762 hH))).trans (oldProjectionSound1731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5338 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1730⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1730 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5338 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2318).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5338 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2318).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5338 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 360, 1440] ![1, 1, 1, 4, 1] reductionProjection5338 ![oldProjection2585, oldProjection2443, oldProjection1734, oldProjection1731, oldProjection1730]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5339 : Integer.Sparse (Fin 1613) := [(87, 3), (219, -9), (593, -9), (645, -9), (698, -1), (1058, 3), (1226, -1), (1227, -1)]

def reductionPivot5339 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, -1, 2, -2]]

theorem reductionSound5339 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode2326).moment H =
      Integer.Sparse.eval reductionProjection5339 (momentVector H) := by
  have heq : reductionPivot5339 = (fun u v => (normalNode2326).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2326).moment H = injectiveMoment H reductionPivot5339 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2326).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot5339 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5339 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5339 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection513, reductionProjection1403, reductionProjection1634, reductionProjection1322] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5339 (0 : Fin 4)) = canonicalInput17087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17087 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5339 (1 : Fin 4)) = canonicalInput5342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5342 hH))).trans (reductionSound1403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5339 (2 : Fin 4)) = canonicalInput4781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1634 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4781 hH))).trans (reductionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5339 (3 : Fin 4)) = canonicalInput4770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5339 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4770 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2326).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5339 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2326).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5339 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection5339 ![reductionProjection513, reductionProjection1403, reductionProjection1634, reductionProjection1322]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5340 : Integer.Sparse (Fin 1613) := [(0, 1), (478, -720), (547, -720), (634, -720), (697, 240), (698, -80), (1219, 240), (1227, -80), (1251, 15)]

def reductionPivot5340 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, 0, 2, -3]]

theorem reductionSound5340 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2324).moment H =
      Integer.Sparse.eval reductionProjection5340 (momentVector H) := by
  have heq : reductionPivot5340 = (fun u v => (normalNode2324).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2324).moment H = injectiveMoment H reductionPivot5340 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2324).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5340 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5340 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5340 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection815, reductionProjection3180, reductionProjection1083, oldProjection484] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5340 (0 : Fin 4)) = canonicalInput17086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17086 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5340 (1 : Fin 4)) = canonicalInput5341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3180 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5341 hH))).trans (reductionSound3180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5340 (2 : Fin 4)) = canonicalInput4779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4779 hH))).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5340 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2166 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5340 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2166 hH))).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2324).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5340 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2324).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5340 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5340 ![oldProjection815, reductionProjection3180, reductionProjection1083, oldProjection484]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5341 : Integer.Sparse (Fin 1613) := [(544, 1)]

theorem reductionSound5341 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code544).moment H =
      Integer.Sparse.eval reductionProjection5341 (momentVector H) := by
  have hc : coordinates (544 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code544) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5341, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5342 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -480), (87, -240), (94, 5), (219, 720), (478, 720), (544, -1440), (547, 720), (593, 720), (602, 720), (634, 720), (636, 1440), (645, 720), (697, -240), (698, 640), (1026, 720), (1058, -240), (1059, 80), (1219, -240), (1221, -240), (1226, 320), (1227, 320), (1251, -85), (1389, -240)]

def reductionPivot5342 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound5342 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2319).moment H =
      Integer.Sparse.eval reductionProjection5342 (momentVector H) := by
  have heq : reductionPivot5342 = (fun u v => (normalNode2319).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2319).moment H = injectiveMoment H reductionPivot5342 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2319).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5342 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5342 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5342 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2046, reductionProjection3818, reductionProjection5339, reductionProjection5340, reductionProjection5341] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5342 (0 : Fin 5)) = (normalNode4312).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2046 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5342 (1 : Fin 5)) = (normalNode2718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3818 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5342 (2 : Fin 5)) = (normalNode2326).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5339 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5342 (3 : Fin 5)) = canonicalInput4767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4767 hH))).trans (reductionSound5340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5342 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code544).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5341 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5342 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2319).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5342 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2319).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5342 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 1440, 1] ![1, 5, 80, 1, 1440] reductionProjection5342 ![reductionProjection2046, reductionProjection3818, reductionProjection5339, reductionProjection5340, reductionProjection5341]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5343 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -20), (247, -80), (541, -720), (616, -720), (1055, 240), (1250, -60), (1251, -5), (1388, 480)]

def reductionPivot5343 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound5343 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2320).moment H =
      Integer.Sparse.eval reductionProjection5343 (momentVector H) := by
  have heq : reductionPivot5343 = (fun u v => (normalNode2320).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2320).moment H = injectiveMoment H reductionPivot5343 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2320).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5343 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5343 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5343 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1237, reductionProjection566, oldProjection1084, oldProjection497] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5343 (0 : Fin 4)) = canonicalInput17085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1237 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17085 hH))).trans (oldProjectionSound1237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5343 (1 : Fin 4)) = canonicalInput5337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5337 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5343 (2 : Fin 4)) = canonicalInput4776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1084 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4776 hH))).trans (oldProjectionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5343 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5343 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2320).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5343 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2320).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5343 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 360, 1] ![10, 1440, 4, 1440] reductionProjection5343 ![oldProjection1237, reductionProjection566, oldProjection1084, oldProjection497]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

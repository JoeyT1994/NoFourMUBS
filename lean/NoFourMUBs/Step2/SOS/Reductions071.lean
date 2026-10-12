import NoFourMUBs.Step2.SOS.Canonical016
import NoFourMUBs.Step2.SOS.Canonical017
import NoFourMUBs.Step2.SOS.Canonical040
import NoFourMUBs.Step2.SOS.Canonical041
import NoFourMUBs.Step2.SOS.Canonical042
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical100
import NoFourMUBs.Step2.SOS.Canonical101
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical241
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical242
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical92
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical97
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2272 : Integer.Sparse (Fin 1613) := [(42, -1), (82, 3), (90, -1), (243, -1), (275, -9), (280, -9), (283, -9), (698, -1), (700, -2)]

def reductionPivot2272 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 1, -1, -1]]

theorem reductionSound2272 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1195).moment H =
      Integer.Sparse.eval reductionProjection2272 (momentVector H) := by
  have heq : reductionPivot2272 = (fun u v => (normalNode1195).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1195).moment H = injectiveMoment H reductionPivot2272 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1195).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2272 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2272 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2272 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection777, oldProjection447, reductionProjection2222, reductionProjection2203] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2272 (0 : Fin 4)) = canonicalInput14488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection777 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14488 hH))).trans (oldProjectionSound777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2272 (1 : Fin 4)) = canonicalInput2850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2850 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2272 (2 : Fin 4)) = canonicalInput2631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2222 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2631 hH))).trans (reductionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2272 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2203 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2272 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1195).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2272 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1195).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2272 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection2272 ![oldProjection777, oldProjection447, reductionProjection2222, reductionProjection2203]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2273 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (20, 5), (42, 240), (78, -240), (79, -480), (81, -720), (82, -720), (88, 160), (90, 480), (91, 80), (94, 10), (228, -480), (243, 400), (275, 720), (280, 2880), (283, 720), (303, 1440), (686, -240), (698, 640), (700, 560), (704, 80), (768, 1440), (1226, 320), (1251, 60), (1389, -240)]

def reductionPivot2273 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound2273 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1185).moment H =
      Integer.Sparse.eval reductionProjection2273 (momentVector H) := by
  have heq : reductionPivot2273 = (fun u v => (normalNode1185).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1185).moment H = injectiveMoment H reductionPivot2273 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1185).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2273 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2273 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 18, 2, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2273 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2270, reductionProjection2271, reductionProjection2272, reductionProjection2267, reductionProjection2262] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2273 (0 : Fin 5)) = (normalNode3398).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2270 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2273 (1 : Fin 5)) = (normalNode1325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2271 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2273 (2 : Fin 5)) = (normalNode1195).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2272 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2273 (3 : Fin 5)) = (normalNode1192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2267 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2273 (4 : Fin 5)) = (normalNode1189).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2262 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2273 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1185).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2273 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1185).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2273 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 18, 2, 18] ![2, 1, 80, 720, 80] reductionProjection2273 ![reductionProjection2270, reductionProjection2271, reductionProjection2272, reductionProjection2267, reductionProjection2262]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2274 : Integer.Sparse (Fin 1613) := [(0, 3), (76, 240), (79, 240), (81, 240), (90, -80), (94, -40), (697, 240), (698, -240), (700, -160), (704, -80), (767, -720), (1226, -80), (1251, 5)]

def reductionPivot2274 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound2274 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3391).moment H =
      Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
  have heq : reductionPivot2274 = (fun u v => (normalNode3391).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3391).moment H = injectiveMoment H reductionPivot2274 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3391).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2274 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2274 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2274 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1011, oldProjection1003, reductionProjection2259, reductionProjection301] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2274 (0 : Fin 4)) = canonicalInput9768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9768 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2274 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3081 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1003 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3081 hH))).trans (oldProjectionSound1003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2274 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code767).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2259 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2274 (3 : Fin 4)) = canonicalInput6475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection301 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2274 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6475 hH))).trans (reductionSound301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3391).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2274 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3391).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2274 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 1, 9] ![20, 2, 1440, 160] reductionProjection2274 ![oldProjection1011, oldProjection1003, reductionProjection2259, reductionProjection301]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2275 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (42, -80), (82, 240), (90, -160), (94, -20), (243, -80), (302, -720), (686, 240), (698, -240), (700, -320), (701, -80), (704, -160), (1226, -80), (1251, -20)]

def reductionPivot2275 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound2275 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1326).moment H =
      Integer.Sparse.eval reductionProjection2275 (momentVector H) := by
  have heq : reductionPivot2275 = (fun u v => (normalNode1326).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1326).moment H = injectiveMoment H reductionPivot2275 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1326).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2275 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2275 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2275 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1001, oldProjection780, oldProjection458, oldProjection759] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2275 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3104 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1001 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3104 hH))).trans (oldProjectionSound1001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2275 (1 : Fin 4)) = canonicalInput2778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2778 hH))).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2275 (2 : Fin 4)) = canonicalInput2673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2673 hH))).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2275 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1518 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection759 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2275 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1518 hH))).trans (oldProjectionSound759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1326).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2275 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1326).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2275 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 9] ![2, 10, 1440, 160] reductionProjection2275 ![oldProjection1001, oldProjection780, oldProjection458, oldProjection759]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2276 : Integer.Sparse (Fin 1613) := [(560, 1)]

theorem reductionSound2276 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code560).moment H =
      Integer.Sparse.eval reductionProjection2276 (momentVector H) := by
  have hc : coordinates (560 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code560) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2276, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2277 : Integer.Sparse (Fin 1613) := [(79, 3), (81, 3), (90, -1), (275, -9), (279, -9), (560, -9), (698, -1), (700, -1)]

def reductionPivot2277 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 1, -2, 0]]

theorem reductionSound2277 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1196).moment H =
      Integer.Sparse.eval reductionProjection2277 (momentVector H) := by
  have heq : reductionPivot2277 = (fun u v => (normalNode1196).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1196).moment H = injectiveMoment H reductionPivot2277 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1196).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2277 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2277 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2277 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection301, reductionProjection2276, reductionProjection2260, reductionProjection2203] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2277 (0 : Fin 4)) = (normalNode7839).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection301 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2277 (1 : Fin 4)) = canonicalInput2853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2276 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2853 hH))).trans (reductionSound2276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2277 (2 : Fin 4)) = canonicalInput2632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2632 hH))).trans (reductionSound2260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2277 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2203 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2277 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1196).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2277 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1196).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2277 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection2277 ![reductionProjection301, reductionProjection2276, reductionProjection2260, reductionProjection2203]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2278 : Integer.Sparse (Fin 1613) := [(0, -4), (13, -240), (19, -20), (20, 5), (42, 80), (76, -480), (78, -240), (79, -720), (81, -480), (82, -480), (88, 80), (90, 480), (94, 65), (243, 80), (275, 720), (279, 1440), (281, 1440), (302, 1440), (560, 720), (686, -480), (697, -240), (698, 720), (700, 560), (701, 80), (704, 240), (767, 1440), (1226, 400)]

def reductionPivot2278 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound2278 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1186).moment H =
      Integer.Sparse.eval reductionProjection2278 (momentVector H) := by
  have heq : reductionPivot2278 = (fun u v => (normalNode1186).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1186).moment H = injectiveMoment H reductionPivot2278 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1186).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2278 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2278 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2278 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2274, reductionProjection2275, reductionProjection2277, reductionProjection2261, reductionProjection2268] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2278 (0 : Fin 5)) = canonicalInput6463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6463 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2278 (1 : Fin 5)) = (normalNode1326).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2275 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2278 (2 : Fin 5)) = (normalNode1196).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2277 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2278 (3 : Fin 5)) = canonicalInput2623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2261 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2623 hH))).trans (reductionSound2261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2278 (4 : Fin 5)) = (normalNode1190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2268 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2278 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1186).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2278 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1186).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2278 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 18, 2, 288] ![1, 1, 80, 720, 5] reductionProjection2278 ![reductionProjection2274, reductionProjection2275, reductionProjection2277, reductionProjection2261, reductionProjection2268]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2279 : Integer.Sparse (Fin 1613) := [(278, 1)]

theorem reductionSound2279 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code278).moment H =
      Integer.Sparse.eval reductionProjection2279 (momentVector H) := by
  have hc : coordinates (278 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code278) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2279, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2280 : Integer.Sparse (Fin 1613) := [(3, -8), (19, 4), (20, -2), (94, -7), (1251, -5)]

def reductionPivot2280 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -4, 4], ![0, 0, 2, -2], ![1, -1, 1, -1]]

theorem reductionSound2280 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10938).moment H =
      Integer.Sparse.eval reductionProjection2280 (momentVector H) := by
  have heq : reductionPivot2280 = (fun u v => (normalNode10938).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10938).moment H = injectiveMoment H reductionPivot2280 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10938).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2280 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2280 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2280 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection168, reductionProjection231, oldProjection139] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2280 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7783 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2280 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection168 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2280 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7783 hH))).trans (oldProjectionSound168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2280 (1 : Fin 3)) = canonicalInput22507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2280 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection231 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2280 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22507 hH))).trans (reductionSound231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2280 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7762 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2280 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection139 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2280 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7762 hH))).trans (oldProjectionSound139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10938).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2280 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10938).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2280 (j : Fin 3)))
      3 144 144 3 ![24, 24, 48] ![6, 6, 3] reductionProjection2280 ![oldProjection168, reductionProjection231, oldProjection139]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2281 : Integer.Sparse (Fin 1613) := [(3, 8), (19, -8), (94, 3), (1251, 3)]

def reductionPivot2281 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound2281 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1198).moment H =
      Integer.Sparse.eval reductionProjection2281 (momentVector H) := by
  have heq : reductionPivot2281 = (fun u v => (normalNode1198).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1198).moment H = injectiveMoment H reductionPivot2281 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1198).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2281 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2281 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2281 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1161, reductionProjection2227, reductionProjection2280, oldProjection1177] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2281 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw974 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1161 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical974 hH))).trans (oldProjectionSound1161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2281 (1 : Fin 4)) = canonicalInput2647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2227 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2647 hH))).trans (reductionSound2227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2281 (2 : Fin 4)) = canonicalInput2728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2280 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2728 hH))).trans (reductionSound2280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2281 (3 : Fin 4)) = canonicalInput2741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2281 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2741 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1198).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2281 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1198).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2281 (j : Fin 4)))
      2 72 144 4 ![72, 72, 144, 144] ![2, 2, 1, 1] reductionProjection2281 ![oldProjection1161, reductionProjection2227, reductionProjection2280, oldProjection1177]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2282 : Integer.Sparse (Fin 1613) := [(0, -8), (3, -120), (19, -520), (20, 80), (94, 235), (104, 80), (108, 560), (241, 80), (247, 640), (325, 720), (698, 80), (704, 320), (1251, 175), (1278, -480)]

def reductionPivot2282 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound2282 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1199).moment H =
      Integer.Sparse.eval reductionProjection2282 (momentVector H) := by
  have heq : reductionPivot2282 = (fun u v => (normalNode1199).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1199).moment H = injectiveMoment H reductionPivot2282 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1199).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2282 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2282 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2282 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1443, oldProjection1558, oldProjection1176, oldProjection1591, oldProjection2400] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2282 (0 : Fin 5)) = canonicalInput1085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1085 hH))).trans (oldProjectionSound1443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2282 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1558⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1558 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2282 (2 : Fin 5)) = canonicalInput2731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2731 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2282 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1591⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1591 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2282 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1578 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2400 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2282 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1578 hH))).trans (oldProjectionSound2400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1199).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2282 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1199).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2282 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 1440, 1440] ![1, 5, 2, 1, 1] reductionProjection2282 ![oldProjection1443, oldProjection1558, oldProjection1176, oldProjection1591, oldProjection2400]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2283 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -420), (20, 20), (23, -240), (94, 255), (104, 80), (108, 240), (119, 720), (228, -480), (241, 240), (247, 800), (326, 720), (698, 240), (704, 320), (1251, 195), (1278, -240)]

def reductionPivot2283 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound2283 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1200).moment H =
      Integer.Sparse.eval reductionProjection2283 (momentVector H) := by
  have heq : reductionPivot2283 = (fun u v => (normalNode1200).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1200).moment H = injectiveMoment H reductionPivot2283 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1200).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2283 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2283 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2283 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection663, oldProjection1559, oldProjection766, oldProjection1592, oldProjection2400] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2283 (0 : Fin 5)) = (normalNode371).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection663 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2283 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1559⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2283 (2 : Fin 5)) = canonicalInput2732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2732 hH))).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2283 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1592⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1592 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2283 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1580 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2400 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2283 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1580 hH))).trans (oldProjectionSound2400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1200).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2283 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1200).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2283 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 288, 1440] ![1, 5, 2, 5, 1] reductionProjection2283 ![reductionProjection663, oldProjection1559, oldProjection766, oldProjection1592, oldProjection2400]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2284 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 120), (20, -5), (23, 240), (94, -30), (104, -80), (108, -80), (241, -480), (243, -240), (247, -160), (698, -320), (704, -80), (1251, 45)]

def reductionPivot2284 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 1, -1, -2]]

theorem reductionSound2284 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1201).moment H =
      Integer.Sparse.eval reductionProjection2284 (momentVector H) := by
  have heq : reductionPivot2284 = (fun u v => (normalNode1201).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1201).moment H = injectiveMoment H reductionPivot2284 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1201).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2284 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2284 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2284 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection752, oldProjection1113, oldProjection907, oldProjection769] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2284 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw980 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical980 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2284 (1 : Fin 4)) = canonicalInput2649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2649 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2284 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1558 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection907 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1558 hH))).trans (oldProjectionSound907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2284 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1587 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2284 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1587 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1201).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2284 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1201).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2284 (j : Fin 4)))
      2 1440 1440 2 ![72, 144, 720, 720] ![20, 10, 2, 2] reductionProjection2284 ![oldProjection752, oldProjection1113, oldProjection907, oldProjection769]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2285 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -300), (20, 15), (23, -240), (94, 215), (104, 160), (105, 80), (108, 80), (113, 720), (228, -480), (241, 720), (243, 480), (247, 320), (294, 2160), (698, 1040), (704, 400), (1054, -240), (1223, -720), (1226, 320), (1227, 240), (1251, -5)]

def reductionPivot2285 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound2285 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1202).moment H =
      Integer.Sparse.eval reductionProjection2285 (momentVector H) := by
  have heq : reductionPivot2285 = (fun u v => (normalNode1202).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1202).moment H = injectiveMoment H reductionPivot2285 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1202).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2285 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2285 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2285 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1445, oldProjection1561, oldProjection2401, oldProjection1575, oldProjection1576] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2285 (0 : Fin 5)) = canonicalInput1090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1090 hH))).trans (oldProjectionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2285 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1561⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1561 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2285 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1568 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2401 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1568 hH))).trans (oldProjectionSound2401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2285 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1575 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1594 hH))).trans (oldProjectionSound1575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2285 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1598 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1576 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2285 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1598 hH))).trans (oldProjectionSound1576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1202).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2285 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1202).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2285 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 1440, 72] ![1, 5, 2, 1, 20] reductionProjection2285 ![oldProjection1445, oldProjection1561, oldProjection2401, oldProjection1575, oldProjection1576]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2286 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 60), (19, 100), (20, -30), (94, -70), (704, -40), (1251, -45), (1278, 120)]

def reductionPivot2286 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, 1, -4]]

theorem reductionSound2286 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1203).moment H =
      Integer.Sparse.eval reductionProjection2286 (momentVector H) := by
  have heq : reductionPivot2286 = (fun u v => (normalNode1203).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1203).moment H = injectiveMoment H reductionPivot2286 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1203).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2286 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2286 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2286 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1161, oldProjection1272, oldProjection1324, oldProjection1176] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2286 (0 : Fin 4)) = canonicalInput1093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1161 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1093 hH))).trans (oldProjectionSound1161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2286 (1 : Fin 4)) = canonicalInput2654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1272 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2654 hH))).trans (oldProjectionSound1272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2286 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1609 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1324 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1609 hH))).trans (oldProjectionSound1324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2286 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1613 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2286 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1613 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1203).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2286 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1203).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2286 (j : Fin 4)))
      2 720 720 2 ![72, 144, 144, 720] ![10, 5, 5, 1] reductionProjection2286 ![oldProjection1161, oldProjection1272, oldProjection1324, oldProjection1176]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2287 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 28), (23, 48), (94, -19), (104, -16), (108, -16), (228, 96), (241, -32), (247, -64), (698, -16), (704, -32), (1251, -20)]

def reductionPivot2287 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -1, -2]]

theorem reductionSound2287 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1204).moment H =
      Integer.Sparse.eval reductionProjection2287 (momentVector H) := by
  have heq : reductionPivot2287 = (fun u v => (normalNode1204).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1204).moment H = injectiveMoment H reductionPivot2287 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1204).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2287 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2287 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2287 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection752, oldProjection1100, oldProjection894, oldProjection766] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2287 (0 : Fin 4)) = canonicalInput1094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1094 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2287 (1 : Fin 4)) = canonicalInput2655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2655 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2287 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1611 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1611 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2287 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1615 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2287 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1615 hH))).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1204).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2287 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1204).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2287 (j : Fin 4)))
      2 288 1440 10 ![72, 720, 720, 720] ![20, 2, 2, 2] reductionProjection2287 ![oldProjection752, oldProjection1100, oldProjection894, oldProjection766]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2288 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 110), (20, -10), (94, -65), (108, -80), (247, -160), (704, -80), (1251, -60), (1278, 120)]

def reductionPivot2288 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound2288 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1205).moment H =
      Integer.Sparse.eval reductionProjection2288 (momentVector H) := by
  have heq : reductionPivot2288 = (fun u v => (normalNode1205).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1205).moment H = injectiveMoment H reductionPivot2288 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1205).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2288 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2288 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2288 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection640, oldProjection1341, oldProjection1176, oldProjection766] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2288 (0 : Fin 4)) = canonicalInput1096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection640 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1096 hH))).trans (reductionSound640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2288 (1 : Fin 4)) = canonicalInput2656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2656 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2288 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1613 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1613 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2288 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1616 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2288 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1616 hH))).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1205).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2288 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1205).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2288 (j : Fin 4)))
      2 720 720 2 ![72, 720, 720, 720] ![10, 1, 1, 1] reductionProjection2288 ![reductionProjection640, oldProjection1341, oldProjection1176, oldProjection766]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2289 : Integer.Sparse (Fin 1613) := [(19, 10), (20, -1), (94, -1), (102, 24), (104, -24), (105, -16), (108, -8), (241, -24), (243, -24), (698, -16), (1223, 24), (1251, 2)]

def reductionPivot2289 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 1, 0, -3]]

theorem reductionSound2289 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1206).moment H =
      Integer.Sparse.eval reductionProjection2289 (momentVector H) := by
  have heq : reductionPivot2289 = (fun u v => (normalNode1206).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1206).moment H = injectiveMoment H reductionPivot2289 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1206).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2289 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2289 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2289 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1258, oldProjection1348, oldProjection760, oldProjection775] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2289 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw984 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1258 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical984 hH))).trans (oldProjectionSound1258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2289 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1486 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1348 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1486 hH))).trans (oldProjectionSound1348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2289 (2 : Fin 4)) = canonicalInput2752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection760 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2752 hH))).trans (oldProjectionSound760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2289 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1621 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection775 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2289 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1621 hH))).trans (oldProjectionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1206).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2289 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1206).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2289 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 72] ![1, 1, 1, 2] reductionProjection2289 ![oldProjection1258, oldProjection1348, oldProjection760, oldProjection775]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2290 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (94, -40), (102, 240), (104, -160), (105, -80), (108, -80), (241, -240), (243, -160), (247, -80), (309, -720), (698, -160), (704, -160), (1223, 240), (1251, -25)]

def reductionPivot2290 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 2, 0, -3]]

theorem reductionSound2290 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1207).moment H =
      Integer.Sparse.eval reductionProjection2290 (momentVector H) := by
  have heq : reductionPivot2290 = (fun u v => (normalNode1207).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1207).moment H = injectiveMoment H reductionPivot2290 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1207).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2290 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2290 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2290 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1258, oldProjection1278, oldProjection460, oldProjection771] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2290 (0 : Fin 4)) = canonicalInput1108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1258 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1108 hH))).trans (oldProjectionSound1258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2290 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1503 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1278 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1503 hH))).trans (oldProjectionSound1278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2290 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node460⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2290 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1641 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2290 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1641 hH))).trans (oldProjectionSound771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1207).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2290 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1207).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2290 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 1, 720] ![10, 10, 1440, 2] reductionProjection2290 ![oldProjection1258, oldProjection1278, oldProjection460, oldProjection771]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2291 : Integer.Sparse (Fin 1613) := [(19, 12), (23, 48), (94, -5), (104, -48), (105, -48), (241, -64), (243, -80), (698, -64), (704, -48), (1251, 3)]

def reductionPivot2291 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, 0, 0, -2]]

theorem reductionSound2291 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1208).moment H =
      Integer.Sparse.eval reductionProjection2291 (momentVector H) := by
  have heq : reductionPivot2291 = (fun u v => (normalNode1208).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1208).moment H = injectiveMoment H reductionPivot2291 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1208).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2291 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2291 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2291 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1233, oldProjection763, oldProjection775, oldProjection1306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2291 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1002 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1233 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1002 hH))).trans (oldProjectionSound1233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2291 (1 : Fin 4)) = canonicalInput2709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection763 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2709 hH))).trans (oldProjectionSound763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2291 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1651 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection775 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1651 hH))).trans (oldProjectionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2291 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1662 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2291 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1662 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1208).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2291 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1208).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2291 (j : Fin 4)))
      2 288 288 2 ![9, 72, 72, 144] ![32, 4, 4, 2] reductionProjection2291 ![oldProjection1233, oldProjection763, oldProjection775, oldProjection1306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2292 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 1), (19, -12), (20, 4), (94, 5), (246, 16), (703, 16), (704, 16), (1251, 2)]

def reductionPivot2292 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -1, 3], ![0, 1, -2, 1], ![1, 0, 4, -5]]

theorem reductionSound2292 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7960).moment H =
      Integer.Sparse.eval reductionProjection2292 (momentVector H) := by
  have heq : reductionPivot2292 = (fun u v => (normalNode7960).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7960).moment H = injectiveMoment H reductionPivot2292 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7960).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2292 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2292 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2292 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection142, oldProjection77, oldProjection173] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2292 (0 : Fin 3)) = canonicalInput14608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2292 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection142 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2292 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection142 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14608 hH))).trans (oldProjectionSound142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2292 (1 : Fin 3)) = canonicalInput15424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2292 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection77 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2292 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection77 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15424 hH))).trans (oldProjectionSound77 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2292 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6304 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2292 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2292 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6304 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7960).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2292 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7960).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2292 (j : Fin 3)))
      3 144 144 3 ![48, 48, 48] ![3, 3, 3] reductionProjection2292 ![oldProjection142, oldProjection77, oldProjection173]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2293 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 1), (94, 1), (246, 32), (703, 16), (704, 16), (1278, -48)]

def reductionPivot2293 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![-1, -2, 4, -1], ![3, 1, -5, 1]]

theorem reductionSound2293 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7988).moment H =
      Integer.Sparse.eval reductionProjection2293 (momentVector H) := by
  have heq : reductionPivot2293 = (fun u v => (normalNode7988).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7988).moment H = injectiveMoment H reductionPivot2293 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7988).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7988).entries)).symm
  have hshape : reductionPivot2293 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2293 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2293 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection172, oldProjection233, oldProjection234] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2293 (0 : Fin 3)) = canonicalInput10974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2293 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2293 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10974 hH))).trans (oldProjectionSound172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2293 (1 : Fin 3)) = canonicalInput23333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2293 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2293 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23333 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2293 (2 : Fin 3)) = canonicalInput23338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2293 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2293 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23338 hH))).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7988).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2293 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7988).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2293 (j : Fin 3)))
      3 144 144 3 ![3, 48, 1] ![48, 3, 144] reductionProjection2293 ![oldProjection172, oldProjection233, oldProjection234]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2294 : Integer.Sparse (Fin 1613) := [(3, 44), (4, -2), (19, 32), (20, -7), (94, -9), (246, -48), (701, -16), (702, 48), (703, -32), (704, -48), (1251, -4), (1278, 48)]

def reductionPivot2294 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 3, -5]]

theorem reductionSound2294 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1209).moment H =
      Integer.Sparse.eval reductionProjection2294 (momentVector H) := by
  have heq : reductionPivot2294 = (fun u v => (normalNode1209).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1209).moment H = injectiveMoment H reductionPivot2294 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1209).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2294 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2294 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2294 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection649, reductionProjection2292, reductionProjection2293, oldProjection981] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2294 (0 : Fin 4)) = canonicalInput1119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection649 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1119 hH))).trans (reductionSound649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2294 (1 : Fin 4)) = canonicalInput2711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2292 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2711 hH))).trans (reductionSound2292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2294 (2 : Fin 4)) = canonicalInput2809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2293 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2809 hH))).trans (reductionSound2293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2294 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1667 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection981 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2294 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1667 hH))).trans (oldProjectionSound981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1209).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2294 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1209).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2294 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 72] ![2, 2, 2, 4] reductionProjection2294 ![reductionProjection649, reductionProjection2292, reductionProjection2293, oldProjection981]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2295 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 36), (20, -2), (94, -20), (104, -16), (108, -112), (247, -64), (704, -16), (1251, -23)]

def reductionPivot2295 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, 1, -3]]

theorem reductionSound2295 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1210).moment H =
      Integer.Sparse.eval reductionProjection2295 (momentVector H) := by
  have heq : reductionPivot2295 = (fun u v => (normalNode1210).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1210).moment H = injectiveMoment H reductionPivot2295 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1210).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2295 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2295 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2295 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1240, oldProjection761, oldProjection1341, oldProjection787] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2295 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1004 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1004 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2295 (1 : Fin 4)) = canonicalInput2712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2712 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2295 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1665 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2295 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1669 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection787 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2295 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1669 hH))).trans (oldProjectionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1210).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2295 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1210).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2295 (j : Fin 4)))
      2 288 1440 10 ![144, 720, 720, 360] ![10, 2, 2, 4] reductionProjection2295 ![oldProjection1240, oldProjection761, oldProjection1341, oldProjection787]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2296 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 100), (20, -5), (23, 240), (94, -70), (104, -160), (108, -320), (228, 240), (241, -80), (247, -320), (704, -160), (1251, -80)]

def reductionPivot2296 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, 0, -2]]

theorem reductionSound2296 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1211).moment H =
      Integer.Sparse.eval reductionProjection2296 (momentVector H) := by
  have heq : reductionPivot2296 = (fun u v => (normalNode1211).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1211).moment H = injectiveMoment H reductionPivot2296 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1211).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2296 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2296 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2296 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection999, oldProjection762, oldProjection1100, oldProjection1170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2296 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1005 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1005 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2296 (1 : Fin 4)) = canonicalInput2713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection762 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2713 hH))).trans (oldProjectionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2296 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1666 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1666 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2296 (3 : Fin 4)) = canonicalInput2812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2296 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2812 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1211).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2296 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1211).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2296 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 720] ![10, 2, 2, 2] reductionProjection2296 ![oldProjection999, oldProjection762, oldProjection1100, oldProjection1170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2297 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -80), (19, -280), (20, 40), (23, -480), (94, 155), (104, 80), (108, 240), (241, 240), (243, 400), (247, 240), (329, 720), (698, 400), (700, 160), (704, 640), (1054, -240), (1061, -480), (1251, 115), (1278, -480)]

def reductionPivot2297 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound2297 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1212).moment H =
      Integer.Sparse.eval reductionProjection2297 (momentVector H) := by
  have heq : reductionPivot2297 = (fun u v => (normalNode1212).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1212).moment H = injectiveMoment H reductionPivot2297 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1212).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2297 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2297 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2297 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1450, oldProjection1042, oldProjection2402, oldProjection1604, oldProjection1605] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2297 (0 : Fin 5)) = canonicalInput1124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1124 hH))).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2297 (1 : Fin 5)) = canonicalInput2720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2720 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2297 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1672 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2402 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1672 hH))).trans (oldProjectionSound2402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2297 (3 : Fin 5)) = canonicalInput2816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1604 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2816 hH))).trans (oldProjectionSound1604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2297 (4 : Fin 5)) = canonicalInput2817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2297 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2817 hH))).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1212).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2297 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1212).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2297 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 288, 1440, 1440] ![1, 2, 5, 1, 1] reductionProjection2297 ![oldProjection1450, oldProjection1042, oldProjection2402, oldProjection1604, oldProjection1605]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2298 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 1), (704, -2), (1278, 6)]

def reductionPivot2298 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound2298 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1213).moment H =
      Integer.Sparse.eval reductionProjection2298 (momentVector H) := by
  have heq : reductionPivot2298 = (fun u v => (normalNode1213).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1213).moment H = injectiveMoment H reductionPivot2298 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1213).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2298 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2298 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 24, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2298 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1160, oldProjection286, oldProjection1324, oldProjection1171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2298 (0 : Fin 4)) = canonicalInput1126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1126 hH))).trans (oldProjectionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2298 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1526 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection286 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1526 hH))).trans (oldProjectionSound286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2298 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1686 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1324 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1686 hH))).trans (oldProjectionSound1324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2298 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1691 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2298 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1691 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1213).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2298 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1213).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2298 (j : Fin 4)))
      2 18 144 16 ![72, 24, 144, 144] ![2, 6, 1, 1] reductionProjection2298 ![oldProjection1160, oldProjection286, oldProjection1324, oldProjection1171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2299 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 140), (20, -15), (94, -70), (104, -80), (108, -400), (241, -80), (247, -320), (325, -720), (1251, -55)]

def reductionPivot2299 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound2299 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1214).moment H =
      Integer.Sparse.eval reductionProjection2299 (momentVector H) := by
  have heq : reductionPivot2299 = (fun u v => (normalNode1214).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1214).moment H = injectiveMoment H reductionPivot2299 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1214).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2299 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2299 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2299 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1240, oldProjection1176, oldProjection463, oldProjection786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2299 (0 : Fin 4)) = canonicalInput1132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1132 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2299 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1613 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1613 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2299 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node463⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection463 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection463 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2299 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1702 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2299 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1702 hH))).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1214).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2299 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1214).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2299 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 360] ![10, 2, 1440, 4] reductionProjection2299 ![oldProjection1240, oldProjection1176, oldProjection463, oldProjection786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2300 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 50), (20, -5), (23, 120), (94, -20), (104, -40), (108, -120), (241, -80), (243, -80), (247, -80), (329, -360), (698, -80), (704, -40), (1251, -10)]

def reductionPivot2300 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound2300 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1215).moment H =
      Integer.Sparse.eval reductionProjection2300 (momentVector H) := by
  have heq : reductionPivot2300 = (fun u v => (normalNode1215).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1215).moment H = injectiveMoment H reductionPivot2300 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1215).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2300 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2300 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2300 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection999, oldProjection771, oldProjection466, oldProjection1042] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2300 (0 : Fin 4)) = canonicalInput1137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1137 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2300 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1641 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1641 hH))).trans (oldProjectionSound771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2300 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node466⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2300 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1707 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2300 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1707 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1215).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2300 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1215).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2300 (j : Fin 4)))
      2 720 720 2 ![144, 720, 1, 720] ![5, 1, 720, 1] reductionProjection2300 ![oldProjection999, oldProjection771, oldProjection466, oldProjection1042]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2301 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 70), (94, -35), (104, -120), (105, -40), (108, -80), (241, -80), (243, -40), (247, -80), (329, -360), (698, -40), (704, -120), (1251, -30)]

def reductionPivot2301 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, -1, 4], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound2301 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1216).moment H =
      Integer.Sparse.eval reductionProjection2301 (momentVector H) := by
  have heq : reductionPivot2301 = (fun u v => (normalNode1216).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1216).moment H = injectiveMoment H reductionPivot2301 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1216).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2301 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2301 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 360, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2301 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1038, oldProjection786, oldProjection466, oldProjection1080] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2301 (0 : Fin 4)) = canonicalInput1143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1038 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1143 hH))).trans (oldProjectionSound1038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2301 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1702 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1702 hH))).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2301 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1725 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1725 hH))).trans (oldProjectionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2301 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1728 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2301 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1728 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1216).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2301 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1216).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2301 (j : Fin 4)))
      2 720 720 2 ![72, 360, 1, 72] ![10, 2, 720, 10] reductionProjection2301 ![oldProjection1038, oldProjection786, oldProjection466, oldProjection1080]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2302 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (241, 8), (694, -24), (704, 8), (1251, 1)]

def reductionPivot2302 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-2, 2, 1, -1], ![4, -2, -3, 1]]

theorem reductionSound2302 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7470).moment H =
      Integer.Sparse.eval reductionProjection2302 (momentVector H) := by
  have heq : reductionPivot2302 = (fun u v => (normalNode7470).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7470).moment H = injectiveMoment H reductionPivot2302 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7470).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7470).entries)).symm
  have hshape : reductionPivot2302 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2302 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2302 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection140, oldProjection166, oldProjection167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2302 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4167 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2302 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection140 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2302 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4167 hH))).trans (oldProjectionSound140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2302 (1 : Fin 3)) = canonicalInput22370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2302 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2302 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22370 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2302 (2 : Fin 3)) = canonicalInput22377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2302 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2302 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22377 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7470).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2302 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7470).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2302 (j : Fin 3)))
      3 72 144 6 ![48, 48, 1] ![3, 3, 144] reductionProjection2302 ![oldProjection140, oldProjection166, oldProjection167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2303 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -25), (104, -160), (241, -80), (243, -80), (247, -80), (694, 240), (698, -80), (704, -80), (729, -720), (1251, 10)]

def reductionPivot2303 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound2303 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3240).moment H =
      Integer.Sparse.eval reductionProjection2303 (momentVector H) := by
  have heq : reductionPivot2303 = (fun u v => (normalNode3240).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3240).moment H = injectiveMoment H reductionPivot2303 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3240).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2303 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2303 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2303 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2302, oldProjection914, oldProjection579, oldProjection775] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2303 (0 : Fin 4)) = canonicalInput9665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2302 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9665 hH))).trans (reductionSound2302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2303 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2959 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2959 hH))).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2303 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection579 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2303 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2920 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection775 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2303 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2920 hH))).trans (oldProjectionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3240).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2303 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3240).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2303 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 1, 72] ![20, 2, 1440, 20] reductionProjection2303 ![reductionProjection2302, oldProjection914, oldProjection579, oldProjection775]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

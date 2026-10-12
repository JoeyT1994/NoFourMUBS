import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical042
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical062
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical079
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions078
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical101
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical176
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical277
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical60
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical73
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical98
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2528 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -80), (19, -340), (20, 70), (94, 160), (101, -480), (104, 240), (105, 80), (108, 160), (228, -480), (241, 80), (243, 640), (247, 160), (322, 720), (686, -1200), (692, -480), (698, 320), (700, 320), (701, 160), (703, 160), (704, 800), (1222, -240), (1223, -480), (1225, 160), (1226, 240), (1227, 80), (1251, 145)]

def reductionPivot2528 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound2528 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1346).moment H =
      Integer.Sparse.eval reductionProjection2528 (momentVector H) := by
  have heq : reductionPivot2528 = (fun u v => (normalNode1346).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1346).moment H = injectiveMoment H reductionPivot2528 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1346).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2528 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2528 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2528 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1853, reductionProjection2527, reductionProjection2419, oldProjection1552, reductionProjection2310] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2528 (0 : Fin 5)) = (normalNode1120).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1853 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2528 (1 : Fin 5)) = (normalNode1426).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2527 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2528 (2 : Fin 5)) = (normalNode1433).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2419 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2528 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1657 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1552 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1657 hH))).trans (oldProjectionSound1552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2528 (4 : Fin 5)) = (normalNode1436).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2310 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2528 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1346).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2528 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1346).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2528 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 288] ![5, 1, 1, 1, 5] reductionProjection2528 ![reductionProjection1853, reductionProjection2527, reductionProjection2419, oldProjection1552, reductionProjection2310]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2529 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 3), (244, 16), (246, 16), (700, 16), (701, 16), (703, 16), (704, 32), (1251, 2)]

def reductionPivot2529 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, -1, 4], ![0, 1, -2, 1], ![1, 0, 3, -4]]

theorem reductionSound2529 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6519).moment H =
      Integer.Sparse.eval reductionProjection2529 (momentVector H) := by
  have heq : reductionPivot2529 = (fun u v => (normalNode6519).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6519).moment H = injectiveMoment H reductionPivot2529 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6519).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot2529 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2529 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2529 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection173, oldProjection171, oldProjection172] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2529 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6304 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2529 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2529 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6304 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2529 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5635 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2529 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection171 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2529 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5635 hH))).trans (oldProjectionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2529 (2 : Fin 3)) = canonicalInput13087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2529 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2529 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13087 hH))).trans (oldProjectionSound172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6519).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2529 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6519).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2529 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection2529 ![oldProjection173, oldProjection171, oldProjection172]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2530 : Integer.Sparse (Fin 1613) := [(319, 1)]

theorem reductionSound2530 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code319).moment H =
      Integer.Sparse.eval reductionProjection2530 (momentVector H) := by
  have hc : coordinates (319 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code319) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2530, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2531 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 5), (20, -1), (94, -2), (104, -4), (244, -4), (246, -8), (319, -36), (700, -4), (701, -12), (703, -12), (704, -12), (1251, -1)]

def reductionPivot2531 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -1, 4], ![0, 1, -2, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound2531 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1431).moment H =
      Integer.Sparse.eval reductionProjection2531 (momentVector H) := by
  have heq : reductionPivot2531 = (fun u v => (normalNode1431).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1431).moment H = injectiveMoment H reductionPivot2531 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1431).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2531 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2531 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2531 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection762, reductionProjection2529, reductionProjection755, reductionProjection2530] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2531 (0 : Fin 4)) = (normalNode6520).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection762 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2531 (1 : Fin 4)) = canonicalInput2867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2529 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2867 hH))).trans (reductionSound2529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2531 (2 : Fin 4)) = canonicalInput2794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection755 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2794 hH))).trans (reductionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2531 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code319).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2530 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2531 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2530 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1431).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2531 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1431).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2531 (j : Fin 4)))
      2 72 144 4 ![144, 144, 72, 1] ![1, 1, 2, 144] reductionProjection2531 ![reductionProjection762, reductionProjection2529, reductionProjection755, reductionProjection2530]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2532 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -8), (20, 2), (94, 1), (243, 8), (244, 8), (246, 8), (1251, 1)]

def reductionPivot2532 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -3, 4], ![0, 2, 2, -4], ![1, -1, 1, -1]]

theorem reductionSound2532 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9678).moment H =
      Integer.Sparse.eval reductionProjection2532 (momentVector H) := by
  have heq : reductionPivot2532 = (fun u v => (normalNode9678).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9678).moment H = injectiveMoment H reductionPivot2532 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9678).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2532 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2532 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2532 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection233, oldProjection243, oldProjection217] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2532 (0 : Fin 3)) = canonicalInput14292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2532 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2532 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14292 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2532 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7035 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2532 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2532 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7035 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2532 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7038 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2532 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2532 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7038 hH))).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9678).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2532 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9678).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2532 (j : Fin 3)))
      3 72 144 6 ![48, 24, 48] ![3, 6, 3] reductionProjection2532 ![oldProjection233, oldProjection243, oldProjection217]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2533 : Integer.Sparse (Fin 1613) := [(331, 1)]

theorem reductionSound2533 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code331).moment H =
      Integer.Sparse.eval reductionProjection2533 (momentVector H) := by
  have hc : coordinates (331 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code331) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2533, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2534 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 28), (20, -5), (94, -7), (243, -16), (244, -32), (246, -32), (247, -16), (331, -144), (700, -16), (701, -16), (703, -16), (704, -32), (1061, 48), (1251, -6), (1278, 48)]

def reductionPivot2534 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, 1, 3, -4], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound2534 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1440).moment H =
      Integer.Sparse.eval reductionProjection2534 (momentVector H) := by
  have heq : reductionPivot2534 = (fun u v => (normalNode1440).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1440).moment H = injectiveMoment H reductionPivot2534 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1440).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2534 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2534 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2534 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2532, oldProjection1077, reductionProjection2529, reductionProjection2533] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2534 (0 : Fin 4)) = canonicalInput6356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2532 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6356 hH))).trans (reductionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2534 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1729 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1077 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1729 hH))).trans (oldProjectionSound1077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2534 (2 : Fin 4)) = canonicalInput2840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2529 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2840 hH))).trans (reductionSound2529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2534 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code331).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2533 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2534 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2533 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1440).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2534 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1440).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2534 (j : Fin 4)))
      2 288 288 2 ![72, 72, 144, 1] ![4, 4, 2, 288] reductionProjection2534 ![reductionProjection2532, oldProjection1077, reductionProjection2529, reductionProjection2533]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2535 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -200), (4, 10), (19, -500), (20, 85), (94, 170), (104, 80), (105, 80), (106, 240), (241, 80), (243, 640), (244, 480), (246, 320), (247, 80), (319, 720), (331, 720), (698, 240), (700, 320), (701, 640), (703, 640), (704, 960), (1054, -240), (1061, -480), (1251, 125), (1278, -240)]

def reductionPivot2535 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound2535 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1348).moment H =
      Integer.Sparse.eval reductionProjection2535 (momentVector H) := by
  have heq : reductionPivot2535 = (fun u v => (normalNode1348).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1348).moment H = injectiveMoment H reductionPivot2535 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1348).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2535 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2535 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 72, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2535 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1930, reductionProjection2531, oldProjection1563, reductionProjection2534, oldProjection1617] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2535 (0 : Fin 5)) = (normalNode1126).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1930 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2535 (1 : Fin 5)) = (normalNode1431).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2531 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2535 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1660 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1660 hH))).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2535 (3 : Fin 5)) = (normalNode1440).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2534 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2535 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1617⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1617 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2535 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1348).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2535 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1348).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2535 (j : Fin 5)))
      1 1440 1440 1 ![144, 72, 1440, 288, 288] ![10, 20, 1, 5, 5] reductionProjection2535 ![reductionProjection1930, reductionProjection2531, oldProjection1563, reductionProjection2534, oldProjection1617]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2536 : Integer.Sparse (Fin 1613) := [(3, 28), (4, -2), (19, 32), (20, -10), (94, -13), (104, -16), (246, -64), (703, -64), (704, -48), (1251, -5), (1278, 48)]

def reductionPivot2536 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 3, -5]]

theorem reductionSound2536 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1349).moment H =
      Integer.Sparse.eval reductionProjection2536 (momentVector H) := by
  have heq : reductionPivot2536 = (fun u v => (normalNode1349).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1349).moment H = injectiveMoment H reductionPivot2536 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1349).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2536 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2536 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 36, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2536 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1896, reductionProjection2507, reductionProjection2293, oldProjection1272] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2536 (0 : Fin 4)) = canonicalInput2431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1896 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2431 hH))).trans (reductionSound1896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2536 (1 : Fin 4)) = canonicalInput2790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2507 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2790 hH))).trans (reductionSound2507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2536 (2 : Fin 4)) = canonicalInput2809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2293 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2809 hH))).trans (reductionSound2293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2536 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1664 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1272 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2536 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1664 hH))).trans (oldProjectionSound1272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1349).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2536 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1349).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2536 (j : Fin 4)))
      2 288 288 2 ![72, 36, 144, 144] ![4, 8, 2, 2] reductionProjection2536 ![reductionProjection1896, reductionProjection2507, reductionProjection2293, oldProjection1272]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2537 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -4), (246, -8), (335, -72), (686, 24), (698, -8), (700, -16), (701, -16), (703, -8), (1251, -3)]

def reductionPivot2537 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -2, 1]]

theorem reductionSound2537 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1441).moment H =
      Integer.Sparse.eval reductionProjection2537 (momentVector H) := by
  have heq : reductionPivot2537 = (fun u v => (normalNode1441).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1441).moment H = injectiveMoment H reductionPivot2537 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1441).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2537 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2537 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2537 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1282, reductionProjection2475, reductionProjection762, oldProjection1097] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2537 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3236 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1282 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3236 hH))).trans (oldProjectionSound1282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2537 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code335).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2537 (2 : Fin 4)) = canonicalInput2822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection762 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2822 hH))).trans (reductionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2537 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1690 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2537 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1690 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1441).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2537 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1441).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2537 (j : Fin 4)))
      2 144 144 2 ![36, 1, 144, 144] ![4, 144, 1, 1] reductionProjection2537 ![oldProjection1282, reductionProjection2475, reductionProjection762, oldProjection1097]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2538 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -100), (4, 5), (19, -320), (20, 55), (94, 115), (101, -480), (102, -240), (105, 80), (106, 80), (228, -480), (241, 160), (243, 720), (246, 80), (335, 720), (686, -1200), (698, 400), (700, 320), (701, 320), (703, 240), (704, 640), (1223, -480), (1225, 160), (1226, 160), (1251, 105)]

def reductionPivot2538 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound2538 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1352).moment H =
      Integer.Sparse.eval reductionProjection2538 (momentVector H) := by
  have heq : reductionPivot2538 = (fun u v => (normalNode1352).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1352).moment H = injectiveMoment H reductionPivot2538 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1352).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2538 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2538 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 720, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2538 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1952, reductionProjection2310, reductionProjection2310, oldProjection1585, reductionProjection2537] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2538 (0 : Fin 5)) = (normalNode1127).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1952 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2538 (1 : Fin 5)) = (normalNode1436).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2310 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2538 (2 : Fin 5)) = canonicalInput2815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2310 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2815 hH))).trans (reductionSound2310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2538 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1678 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1585 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1678 hH))).trans (oldProjectionSound1585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2538 (4 : Fin 5)) = (normalNode1441).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2537 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2538 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2537 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1352).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2538 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1352).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2538 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 720, 144] ![5, 5, 5, 2, 10] reductionProjection2538 ![reductionProjection1952, reductionProjection2310, reductionProjection2310, oldProjection1585, reductionProjection2537]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2539 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 24), (20, -3), (94, -7), (108, -16), (244, -16), (331, -144), (679, 48), (700, -32), (701, -32), (704, -32), (1251, -8), (1278, 48)]

def reductionPivot2539 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, 1, 3, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound2539 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1443).moment H =
      Integer.Sparse.eval reductionProjection2539 (momentVector H) := by
  have heq : reductionPivot2539 = (fun u v => (normalNode1443).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1443).moment H = injectiveMoment H reductionPivot2539 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1443).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2539 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2539 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2539 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection934, reductionProjection2514, oldProjection961, reductionProjection2533] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2539 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3254 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection934 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3254 hH))).trans (oldProjectionSound934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2539 (1 : Fin 4)) = canonicalInput2846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2514 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2846 hH))).trans (reductionSound2514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2539 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1710 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection961 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection961 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1710 hH))).trans (oldProjectionSound961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2539 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code331).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2533 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2539 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2533 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1443).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2539 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1443).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2539 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection2539 ![oldProjection934, reductionProjection2514, oldProjection961, reductionProjection2533]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2540 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 5), (20, -1), (94, -2), (104, -4), (244, -8), (246, -8), (679, 12), (700, -12), (701, -20), (703, -12), (704, -16), (1251, -1)]

def reductionPivot2540 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -2, 1]]

theorem reductionSound2540 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1444).moment H =
      Integer.Sparse.eval reductionProjection2540 (momentVector H) := by
  have heq : reductionPivot2540 = (fun u v => (normalNode1444).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1444).moment H = injectiveMoment H reductionPivot2540 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1444).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2540 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2540 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 36, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2540 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1156, reductionProjection2516, reductionProjection2529, oldProjection1071] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2540 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3255 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1156 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3255 hH))).trans (oldProjectionSound1156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2540 (1 : Fin 4)) = canonicalInput2847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2516 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2847 hH))).trans (reductionSound2516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2540 (2 : Fin 4)) = canonicalInput2841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2529 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2841 hH))).trans (reductionSound2529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2540 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1709 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1071 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2540 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1709 hH))).trans (oldProjectionSound1071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1444).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2540 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1444).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2540 (j : Fin 4)))
      2 72 144 4 ![144, 36, 144, 72] ![1, 4, 1, 2] reductionProjection2540 ![oldProjection1156, reductionProjection2516, reductionProjection2529, oldProjection1071]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2541 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -200), (4, 10), (19, -480), (20, 75), (94, 175), (104, 80), (106, 160), (108, 80), (243, 480), (244, 560), (246, 160), (331, 720), (679, -480), (698, 240), (700, 640), (701, 880), (703, 560), (704, 960), (1061, -480), (1062, -240), (1251, 140), (1278, -240)]

def reductionPivot2541 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound2541 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1353).moment H =
      Integer.Sparse.eval reductionProjection2541 (momentVector H) := by
  have heq : reductionPivot2541 = (fun u v => (normalNode1353).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1353).moment H = injectiveMoment H reductionPivot2541 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1353).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2541 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2541 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 288, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2541 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1938, oldProjection1617, oldProjection1605, reductionProjection2539, reductionProjection2540] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2541 (0 : Fin 5)) = (normalNode1129).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1938 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2541 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1617⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1617 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2541 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1684 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1684 hH))).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2541 (3 : Fin 5)) = (normalNode1443).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2539 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2541 (4 : Fin 5)) = (normalNode1444).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2540 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2541 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1353).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2541 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1353).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2541 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 1440, 288, 72] ![10, 5, 1, 5, 20] reductionProjection2541 ![reductionProjection1938, oldProjection1617, oldProjection1605, reductionProjection2539, reductionProjection2540]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2542 : Integer.Sparse (Fin 1613) := [(3, 20), (4, -1), (19, 16), (20, -6), (94, -8), (104, -16), (108, -16), (246, -16), (679, 96), (703, -32), (704, -16), (1061, 48), (1062, 48), (1251, -3), (1278, 48)]

def reductionPivot2542 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound2542 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1355).moment H =
      Integer.Sparse.eval reductionProjection2542 (momentVector H) := by
  have heq : reductionPivot2542 = (fun u v => (normalNode1355).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1355).moment H = injectiveMoment H reductionPivot2542 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1355).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2542 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2542 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2542 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1937, oldProjection1070, reductionProjection2514, reductionProjection2516] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2542 (0 : Fin 4)) = canonicalInput2488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1937 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1937 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2488 hH))).trans (reductionSound1937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2542 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1730 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1070 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1730 hH))).trans (oldProjectionSound1070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2542 (2 : Fin 4)) = canonicalInput2846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2514 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2846 hH))).trans (reductionSound2514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2542 (3 : Fin 4)) = canonicalInput2847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2516 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2542 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2847 hH))).trans (reductionSound2516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1355).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2542 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1355).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2542 (j : Fin 4)))
      2 288 288 2 ![144, 48, 144, 36] ![2, 6, 2, 8] reductionProjection2542 ![reductionProjection1937, oldProjection1070, reductionProjection2514, reductionProjection2516]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2543 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -3), (461, -144), (698, -16), (700, -16), (1059, -32), (1226, -16), (1227, -48), (1251, 16)]

def reductionPivot2543 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, -1, 0]]

theorem reductionSound2543 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2004).moment H =
      Integer.Sparse.eval reductionProjection2543 (momentVector H) := by
  have heq : reductionPivot2543 = (fun u v => (normalNode2004).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2004).moment H = injectiveMoment H reductionPivot2543 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2004).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2543 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2543 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2543 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1058, oldProjection481, oldProjection807, oldProjection946] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2543 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2349 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2349 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2543 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection481 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2543 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1929 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection807 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1929 hH))).trans (oldProjectionSound807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2543 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1924 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection946 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2543 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1924 hH))).trans (oldProjectionSound946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2004).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2543 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2004).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2543 (j : Fin 4)))
      2 288 1440 10 ![720, 1, 720, 720] ![2, 1440, 2, 2] reductionProjection2543 ![oldProjection1058, oldProjection481, oldProjection807, oldProjection946]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2544 : Integer.Sparse (Fin 1613) := [(127, -1), (288, -1), (312, -1), (461, -1)]

def reductionPivot2544 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, -1, -1, 0]]

theorem reductionSound2544 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1368).moment H =
      Integer.Sparse.eval reductionProjection2544 (momentVector H) := by
  have heq : reductionPivot2544 = (fun u v => (normalNode1368).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1368).moment H = injectiveMoment H reductionPivot2544 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1368).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2544 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2544 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2544 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection481, oldProjection462, oldProjection396, oldProjection450] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2544 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection481 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2544 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node462⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection462 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection462 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2544 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1637 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1637 hH))).trans (oldProjectionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2544 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1634 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection450 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2544 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1634 hH))).trans (oldProjectionSound450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1368).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2544 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1368).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2544 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2544 ![oldProjection481, oldProjection462, oldProjection396, oldProjection450]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2545 : Integer.Sparse (Fin 1613) := [(0, -7), (94, 45), (127, 2160), (241, 240), (243, 480), (288, 2160), (312, 1440), (461, 2160), (698, 80), (700, 240), (704, 240), (1059, 240), (1061, -240), (1223, -240), (1226, 240), (1227, 320), (1251, -120)]

def reductionPivot2545 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, -1, 0]]

theorem reductionSound2545 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1356).moment H =
      Integer.Sparse.eval reductionProjection2545 (momentVector H) := by
  have heq : reductionPivot2545 = (fun u v => (normalNode1356).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1356).moment H = injectiveMoment H reductionPivot2545 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1356).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2545 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2545 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2545 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2543, reductionProjection2544, reductionProjection2544, oldProjection1583, oldProjection1573] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2545 (0 : Fin 5)) = (normalNode2004).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2543 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2545 (1 : Fin 5)) = canonicalInput2754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2544 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2754 hH))).trans (reductionSound2544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2545 (2 : Fin 5)) = (normalNode1368).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2544 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2545 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1583⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1583 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2545 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1549 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1573 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2545 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1573 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1549 hH))).trans (oldProjectionSound1573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1356).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2545 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1356).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2545 (j : Fin 5)))
      1 1440 1440 1 ![288, 2, 2, 1440, 1440] ![5, 720, 720, 1, 1] reductionProjection2545 ![reductionProjection2543, reductionProjection2544, reductionProjection2544, oldProjection1583, oldProjection1573]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2546 : Integer.Sparse (Fin 1613) := [(38, -24), (81, -24), (94, 1), (698, 8), (700, 8), (1251, 1)]

def reductionPivot2546 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 0, 2, 1], ![1, 2, -1, -2], ![3, -2, -1, 0]]

theorem reductionSound2546 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode6121).moment H =
      Integer.Sparse.eval reductionProjection2546 (momentVector H) := by
  have heq : reductionPivot2546 = (fun u v => (normalNode6121).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6121).moment H = injectiveMoment H reductionPivot2546 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6121).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6121).entries)).symm
  have hshape : reductionPivot2546 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2546 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 24, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2546 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection85, oldProjection215, oldProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2546 (0 : Fin 3)) = canonicalInput20.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2546 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2546 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2546 (1 : Fin 3)) = canonicalInput562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2546 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection215 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2546 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound562 hH))).trans (oldProjectionSound215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2546 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw367 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2546 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2546 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical367 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6121).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2546 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6121).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2546 (j : Fin 3)))
      3 72 72 3 ![1, 24, 1] ![72, 3, 72] reductionProjection2546 ![oldProjection85, oldProjection215, oldProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2547 : Integer.Sparse (Fin 1613) := [(0, 1), (38, 120), (81, 240), (94, -10), (462, -360), (698, -40), (700, -80), (1059, -80), (1221, 120), (1251, 5)]

def reductionPivot2547 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -2, 1]]

theorem reductionSound2547 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2005).moment H =
      Integer.Sparse.eval reductionProjection2547 (momentVector H) := by
  have heq : reductionPivot2547 = (fun u v => (normalNode2005).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2005).moment H = injectiveMoment H reductionPivot2547 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2005).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2547 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2547 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2547 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection844, oldProjection482, reductionProjection2546, oldProjection807] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2547 (0 : Fin 4)) = canonicalInput5089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5089 hH))).trans (oldProjectionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2547 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node482⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection482 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2547 (2 : Fin 4)) = canonicalInput4016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2546 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4016 hH))).trans (reductionSound2546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2547 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1929 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection807 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2547 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1929 hH))).trans (oldProjectionSound807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2005).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2547 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2005).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2547 (j : Fin 4)))
      2 720 720 2 ![720, 1, 72, 720] ![1, 720, 10, 1] reductionProjection2547 ![oldProjection844, oldProjection482, reductionProjection2546, oldProjection807]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2548 : Integer.Sparse (Fin 1613) := [(127, -1), (308, -1), (313, -1), (462, -1)]

def reductionPivot2548 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, -1, -2, 1]]

theorem reductionSound2548 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1369).moment H =
      Integer.Sparse.eval reductionProjection2548 (momentVector H) := by
  have heq : reductionPivot2548 = (fun u v => (normalNode1369).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1369).moment H = injectiveMoment H reductionPivot2548 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1369).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2548 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2548 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2548 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection482, reductionProjection468, reductionProjection487, oldProjection396] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2548 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node482⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection482 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2548 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code313).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection468 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2548 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code308).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2548 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1637 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2548 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1637 hH))).trans (oldProjectionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1369).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2548 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1369).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2548 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2548 ![oldProjection482, reductionProjection468, reductionProjection487, oldProjection396]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2549 : Integer.Sparse (Fin 1613) := [(38, -1), (679, -1), (1061, -1)]

def reductionPivot2549 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 2, -2], ![-4, 2, 0, 2], ![4, -1, -2, -1]]

theorem reductionSound2549 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode10935).moment H =
      Integer.Sparse.eval reductionProjection2549 (momentVector H) := by
  have heq : reductionPivot2549 = (fun u v => (normalNode10935).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10935).moment H = injectiveMoment H reductionPivot2549 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10935).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10935).entries)).symm
  have hshape : reductionPivot2549 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2549 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2549 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection218, reductionProjection2513, oldProjection85] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2549 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8885 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2549 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection218 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2549 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8885 hH))).trans (oldProjectionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2549 (1 : Fin 3)) = canonicalInput33357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2549 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection2513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2549 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection2513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33357 hH))).trans (reductionSound2513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2549 (2 : Fin 3)) = canonicalInput33358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2549 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2549 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33358 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10935).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2549 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10935).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2549 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection2549 ![oldProjection218, reductionProjection2513, oldProjection85]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2550 : Integer.Sparse (Fin 1613) := [(38, 24), (81, 12), (94, -1), (243, -4), (308, -36), (679, 12), (698, -12), (700, -8), (704, -4), (1061, 24), (1251, -1)]

def reductionPivot2550 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -1, -2, 1]]

theorem reductionSound2550 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1365).moment H =
      Integer.Sparse.eval reductionProjection2550 (momentVector H) := by
  have heq : reductionPivot2550 = (fun u v => (normalNode1365).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1365).moment H = injectiveMoment H reductionPivot2550 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1365).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2550 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2550 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2550 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2546, reductionProjection487, reductionProjection2549, oldProjection1173] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2550 (0 : Fin 4)) = canonicalInput4016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2546 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4016 hH))).trans (reductionSound2546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2550 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code308).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2550 (2 : Fin 4)) = canonicalInput2745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2549 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2745 hH))).trans (reductionSound2549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2550 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1608 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1173 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2550 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1608 hH))).trans (oldProjectionSound1173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1365).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2550 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1365).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2550 (j : Fin 4)))
      2 72 72 2 ![72, 1, 3, 72] ![1, 72, 24, 1] reductionProjection2550 ![reductionProjection2546, reductionProjection487, reductionProjection2549, oldProjection1173]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2551 : Integer.Sparse (Fin 1613) := [(0, -3), (38, -720), (81, -720), (94, 60), (127, 2160), (241, 80), (243, 320), (308, 2160), (313, 1440), (462, 2160), (679, -240), (698, 320), (700, 480), (704, 240), (1059, 240), (1061, -720), (1221, -240), (1251, 15)]

def reductionPivot2551 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -2, 1]]

theorem reductionSound2551 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1357).moment H =
      Integer.Sparse.eval reductionProjection2551 (momentVector H) := by
  have heq : reductionPivot2551 = (fun u v => (normalNode1357).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1357).moment H = injectiveMoment H reductionPivot2551 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1357).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2551 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2551 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 72, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2551 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2547, reductionProjection2548, reductionProjection2548, reductionProjection2550, oldProjection1583] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2551 (0 : Fin 5)) = (normalNode2005).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2547 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2551 (1 : Fin 5)) = canonicalInput2755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2548 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2755 hH))).trans (reductionSound2548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2551 (2 : Fin 5)) = (normalNode1369).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2548 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2551 (3 : Fin 5)) = (normalNode1365).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2550 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2551 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1583⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1583 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2551 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1357).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2551 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1357).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2551 (j : Fin 5)))
      1 1440 1440 1 ![720, 2, 2, 72, 1440] ![2, 720, 720, 20, 1] reductionProjection2551 ![reductionProjection2547, reductionProjection2548, reductionProjection2548, reductionProjection2550, oldProjection1583]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2552 : Integer.Sparse (Fin 1613) := [(0, 1), (58, 120), (81, 480), (94, -15), (420, -360), (698, -80), (1251, -20), (1389, 240)]

def reductionPivot2552 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound2552 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2009).moment H =
      Integer.Sparse.eval reductionProjection2552 (momentVector H) := by
  have heq : reductionPivot2552 = (fun u v => (normalNode2009).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2009).moment H = injectiveMoment H reductionPivot2552 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2009).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2552 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2552 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2552 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection943, reductionProjection2377, reductionProjection2390, oldProjection943] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2552 (0 : Fin 4)) = canonicalInput5101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5101 hH))).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2552 (1 : Fin 4)) = canonicalInput4044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4044 hH))).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2552 (2 : Fin 4)) = canonicalInput4024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2390 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4024 hH))).trans (reductionSound2390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2552 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1935 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2552 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1935 hH))).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2009).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2552 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2009).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2552 (j : Fin 4)))
      2 720 720 2 ![720, 1, 3, 720] ![1, 720, 240, 1] reductionProjection2552 ![oldProjection943, reductionProjection2377, reductionProjection2390, oldProjection943]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2553 : Integer.Sparse (Fin 1613) := [(315, 1)]

theorem reductionSound2553 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code315).moment H =
      Integer.Sparse.eval reductionProjection2553 (momentVector H) := by
  have hc : coordinates (315 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code315) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2553, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2554 : Integer.Sparse (Fin 1613) := [(283, -1), (310, -1), (315, -1), (420, -1)]

def reductionPivot2554 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound2554 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1370).moment H =
      Integer.Sparse.eval reductionProjection2554 (momentVector H) := by
  have heq : reductionPivot2554 = (fun u v => (normalNode1370).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1370).moment H = injectiveMoment H reductionPivot2554 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1370).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2554 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2554 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2554 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2377, reductionProjection2553, reductionProjection714, oldProjection447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2554 (0 : Fin 4)) = canonicalInput4044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4044 hH))).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2554 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code315).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2553 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2554 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code310).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection714 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2554 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1640 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2554 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1640 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1370).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2554 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1370).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2554 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2554 ![reductionProjection2377, reductionProjection2553, reductionProjection714, oldProjection447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2555 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -20), (43, -240), (58, -720), (81, -2160), (94, 75), (228, -720), (283, 2160), (310, 2160), (315, 1440), (420, 2160), (686, -720), (698, 320), (704, 80), (1251, 95), (1389, -720)]

def reductionPivot2555 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound2555 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1358).moment H =
      Integer.Sparse.eval reductionProjection2555 (momentVector H) := by
  have heq : reductionPivot2555 = (fun u v => (normalNode1358).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1358).moment H = injectiveMoment H reductionPivot2555 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1358).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2555 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2555 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2555 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2552, reductionProjection2554, reductionProjection2554, reductionProjection2392, oldProjection1586] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2555 (0 : Fin 5)) = (normalNode2009).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2552 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2555 (1 : Fin 5)) = canonicalInput2756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2554 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2554 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2756 hH))).trans (reductionSound2554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2555 (2 : Fin 5)) = (normalNode1370).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2554 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2554 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2555 (3 : Fin 5)) = (normalNode1367).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2392 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2555 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1586⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2555 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1358).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2555 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1358).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2555 (j : Fin 5)))
      1 1440 1440 1 ![720, 2, 2, 6, 1440] ![2, 720, 720, 240, 1] reductionProjection2555 ![reductionProjection2552, reductionProjection2554, reductionProjection2554, reductionProjection2392, oldProjection1586]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2556 : Integer.Sparse (Fin 1613) := [(318, 1)]

theorem reductionSound2556 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code318).moment H =
      Integer.Sparse.eval reductionProjection2556 (momentVector H) := by
  have hc : coordinates (318 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code318) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2556, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2557 : Integer.Sparse (Fin 1613) := [(19, 2), (37, 24), (94, -1), (104, -8), (241, -16), (307, -72), (318, -72), (690, 48), (697, 24), (698, -8), (1251, 1)]

def reductionPivot2557 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, -1, 1, -2]]

theorem reductionSound2557 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1393).moment H =
      Integer.Sparse.eval reductionProjection2557 (momentVector H) := by
  have heq : reductionPivot2557 = (fun u v => (normalNode1393).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1393).moment H = injectiveMoment H reductionPivot2557 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1393).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2557 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2557 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2557 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1315, reductionProjection2556, oldProjection459, oldProjection776] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2557 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3136 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1315 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3136 hH))).trans (oldProjectionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2557 (1 : Fin 4)) = canonicalInput2828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2556 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2828 hH))).trans (reductionSound2556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2557 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node459⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2557 (3 : Fin 4)) = canonicalInput2758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection776 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2557 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2758 hH))).trans (oldProjectionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1393).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2557 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1393).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2557 (j : Fin 4)))
      2 144 144 2 ![144, 1, 1, 144] ![1, 144, 144, 1] reductionProjection2557 ![oldProjection1315, reductionProjection2556, oldProjection459, oldProjection776]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2558 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -3), (241, -48), (243, -16), (247, -16), (317, -144), (318, -144), (478, -144), (698, -16), (1251, 1)]

def reductionPivot2558 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, -1, 1, -2]]

theorem reductionSound2558 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1374).moment H =
      Integer.Sparse.eval reductionProjection2558 (momentVector H) := by
  have heq : reductionPivot2558 = (fun u v => (normalNode1374).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1374).moment H = injectiveMoment H reductionPivot2558 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1374).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2558 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2558 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2558 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection484, oldProjection1113, reductionProjection2556, reductionProjection2503] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2558 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2558 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1659 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1659 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2558 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code318).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2556 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2558 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code317).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2558 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1374).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2558 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1374).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2558 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection2558 ![oldProjection484, oldProjection1113, reductionProjection2556, reductionProjection2503]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2559 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -160), (20, 15), (37, -240), (94, 25), (104, 240), (241, 1040), (243, 400), (247, 160), (307, 720), (317, 1440), (318, 1440), (478, 1440), (690, -480), (692, -240), (697, -240), (698, 800), (703, 80), (704, 80), (1052, -480), (1221, -240), (1223, -480), (1226, 240), (1227, 80), (1251, -90)]

def reductionPivot2559 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound2559 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1359).moment H =
      Integer.Sparse.eval reductionProjection2559 (momentVector H) := by
  have heq : reductionPivot2559 = (fun u v => (normalNode1359).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1359).moment H = injectiveMoment H reductionPivot2559 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1359).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2559 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2559 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2559 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1676, reductionProjection2557, oldProjection1548, reductionProjection2558, reductionProjection2504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2559 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1676⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1676 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2559 (1 : Fin 5)) = (normalNode1393).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2557 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2557 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2559 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1564 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1548 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1564 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2559 (3 : Fin 5)) = (normalNode1374).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2558 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2559 (4 : Fin 5)) = (normalNode1373).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2504 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2559 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1359).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2559 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1359).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2559 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 288, 288] ![1, 10, 1, 5, 5] reductionProjection2559 ![oldProjection1676, reductionProjection2557, oldProjection1548, reductionProjection2558, reductionProjection2504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

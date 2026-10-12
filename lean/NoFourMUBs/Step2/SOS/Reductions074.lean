import NoFourMUBs.Step2.SOS.Canonical004
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical019
import NoFourMUBs.Step2.SOS.Canonical020
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical041
import NoFourMUBs.Step2.SOS.Canonical042
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical062
import NoFourMUBs.Step2.SOS.Canonical082
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical112
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
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
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical177
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2368 : Integer.Sparse (Fin 1613) := [(0, -6), (3, -20), (19, -280), (20, 20), (23, -480), (38, -240), (45, -240), (94, 155), (101, -240), (104, 240), (105, 80), (108, 640), (141, 720), (228, -480), (241, 240), (243, 80), (247, 480), (322, 720), (686, -240), (694, -240), (704, 240), (1251, 165)]

def reductionPivot2368 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, 0, -2]]

theorem reductionSound2368 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1242).moment H =
      Integer.Sparse.eval reductionProjection2368 (momentVector H) := by
  have heq : reductionPivot2368 = (fun u v => (normalNode1242).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1242).moment H = injectiveMoment H reductionPivot2368 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1242).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2368 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2368 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2368 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection775, reductionProjection2296, oldProjection762, reductionProjection2367, reductionProjection2363] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2368 (0 : Fin 5)) = (normalNode425).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection775 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2368 (1 : Fin 5)) = (normalNode1211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2296 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2368 (2 : Fin 5)) = canonicalInput2690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection762 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2690 hH))).trans (oldProjectionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2368 (3 : Fin 5)) = (normalNode1351).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2367 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2368 (4 : Fin 5)) = canonicalInput2701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2363 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2368 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2701 hH))).trans (reductionSound2363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1242).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2368 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1242).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2368 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection2368 ![reductionProjection775, reductionProjection2296, oldProjection762, reductionProjection2367, reductionProjection2363]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2369 : Integer.Sparse (Fin 1613) := [(3, 16), (4, -1), (19, 12), (20, -4), (94, -4), (246, -16), (701, -32), (703, -32), (704, -16), (1251, -1)]

def reductionPivot2369 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound2369 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6479).moment H =
      Integer.Sparse.eval reductionProjection2369 (momentVector H) := by
  have heq : reductionPivot2369 = (fun u v => (normalNode6479).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6479).moment H = injectiveMoment H reductionPivot2369 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6479).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2369 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2369 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2369 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection686, reductionProjection762, oldProjection1171, oldProjection981] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2369 (0 : Fin 4)) = canonicalInput12872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection686 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12872 hH))).trans (reductionSound686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2369 (1 : Fin 4)) = (normalNode6520).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection762 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2369 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5623 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2369 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5624 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection981 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2369 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5624 hH))).trans (oldProjectionSound981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6479).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2369 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6479).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2369 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 72] ![2, 2, 2, 4] reductionProjection2369 ![reductionProjection686, reductionProjection762, oldProjection1171, oldProjection981]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2370 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -92), (4, 2), (19, -100), (20, 26), (94, 51), (243, 32), (246, 32), (247, 16), (698, 32), (701, 32), (703, 48), (704, 112), (1054, -48), (1061, -96), (1251, 32), (1278, -192)]

def reductionPivot2370 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound2370 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1243).moment H =
      Integer.Sparse.eval reductionProjection2370 (momentVector H) := by
  have heq : reductionPivot2370 = (fun u v => (normalNode1243).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1243).moment H = injectiveMoment H reductionPivot2370 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1243).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2370 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2370 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2370 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection773, reductionProjection2298, reductionProjection2352, reductionProjection2286, reductionProjection2369] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2370 (0 : Fin 5)) = canonicalInput1236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1236 hH))).trans (reductionSound773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2370 (1 : Fin 5)) = (normalNode1213).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2298 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2370 (2 : Fin 5)) = canonicalInput2694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2352 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2694 hH))).trans (reductionSound2352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2370 (3 : Fin 5)) = canonicalInput2702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2286 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2702 hH))).trans (reductionSound2286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2370 (4 : Fin 5)) = canonicalInput2704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2369 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2370 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2704 hH))).trans (reductionSound2369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1243).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2370 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1243).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2370 (j : Fin 5)))
      1 288 1440 5 ![1440, 18, 1440, 720, 288] ![1, 80, 1, 2, 5] reductionProjection2370 ![reductionProjection773, reductionProjection2298, reductionProjection2352, reductionProjection2286, reductionProjection2369]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2371 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 160), (20, -25), (94, -90), (101, 240), (228, 240), (243, -160), (686, 480), (698, -80), (700, -80), (701, -80), (703, -80), (704, -320), (1251, -70)]

def reductionPivot2371 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 1, -1, -1]]

theorem reductionSound2371 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1354).moment H =
      Integer.Sparse.eval reductionProjection2371 (momentVector H) := by
  have heq : reductionPivot2371 = (fun u v => (normalNode1354).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1354).moment H = injectiveMoment H reductionPivot2371 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1354).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2371 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2371 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2371 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1801, reductionProjection2366, oldProjection894, oldProjection1097] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2371 (0 : Fin 4)) = canonicalInput2451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1801 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2451 hH))).trans (reductionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2371 (1 : Fin 4)) = canonicalInput2810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2810 hH))).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2371 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1689 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2371 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1690 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2371 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1690 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1354).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2371 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1354).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2371 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 144] ![10, 10, 2, 10] reductionProjection2371 ![reductionProjection1801, reductionProjection2366, oldProjection894, oldProjection1097]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2372 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 16), (20, -5), (94, -8), (104, -16), (108, -16), (247, -16), (704, -32), (1251, -3)]

def reductionPivot2372 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, 0, -1]]

theorem reductionSound2372 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6481).moment H =
      Integer.Sparse.eval reductionProjection2372 (momentVector H) := by
  have heq : reductionPivot2372 = (fun u v => (normalNode6481).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6481).moment H = injectiveMoment H reductionPivot2372 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6481).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2372 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2372 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2372 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection890, oldProjection1171, oldProjection910, oldProjection1170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2372 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5571 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5571 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2372 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5623 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2372 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5626 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection910 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5626 hH))).trans (oldProjectionSound910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2372 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5627 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2372 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5627 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6481).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2372 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6481).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2372 (j : Fin 4)))
      2 288 1440 10 ![144, 144, 720, 720] ![10, 10, 2, 2] reductionProjection2372 ![oldProjection890, oldProjection1171, oldProjection910, oldProjection1170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2373 : Integer.Sparse (Fin 1613) := [(0, -7), (3, -80), (19, -500), (20, 75), (23, -480), (38, -480), (94, 270), (101, -240), (104, 160), (108, 160), (228, -480), (241, 80), (243, 160), (247, 400), (686, -480), (698, 320), (700, 240), (701, 160), (703, 160), (704, 720), (1061, -240), (1251, 190), (1278, -480)]

def reductionPivot2373 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound2373 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1244).moment H =
      Integer.Sparse.eval reductionProjection2373 (momentVector H) := by
  have heq : reductionPivot2373 = (fun u v => (normalNode1244).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1244).moment H = injectiveMoment H reductionPivot2373 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1244).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2373 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2373 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2373 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1456, oldProjection1545, reductionProjection2356, reductionProjection2371, reductionProjection2372] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2373 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1456⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1456 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2373 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1545⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1545 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2373 (2 : Fin 5)) = canonicalInput2696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2356 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2696 hH))).trans (reductionSound2356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2373 (3 : Fin 5)) = (normalNode1354).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2371 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2371 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2373 (4 : Fin 5)) = canonicalInput2705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2372 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2373 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2705 hH))).trans (reductionSound2372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1244).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2373 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1244).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2373 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 1440, 288] ![2, 1, 1, 1, 5] reductionProjection2373 ![oldProjection1456, oldProjection1545, reductionProjection2356, reductionProjection2371, reductionProjection2372]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2374 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 20), (19, 140), (20, -15), (37, 240), (94, -60), (104, -160), (105, -80), (108, -160), (240, 240), (241, -240), (243, -80), (247, -160), (697, 240), (698, -80), (1251, -40)]

def reductionPivot2374 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound2374 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6476).moment H =
      Integer.Sparse.eval reductionProjection2374 (momentVector H) := by
  have heq : reductionPivot2374 = (fun u v => (normalNode6476).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6476).moment H = injectiveMoment H reductionPivot2374 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6476).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2374 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2374 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2374 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection646, oldProjection1176, oldProjection770, oldProjection771] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2374 (0 : Fin 4)) = (normalNode6321).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection646 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2374 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5594 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2374 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node770⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection770 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2374 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node771⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2374 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6476).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2374 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6476).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2374 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 3, 720] ![10, 2, 480, 2] reductionProjection2374 ![reductionProjection646, oldProjection1176, oldProjection770, oldProjection771]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2375 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 20), (19, 180), (20, -15), (45, 240), (94, -65), (104, -160), (108, -240), (240, 240), (241, -80), (247, -160), (698, -80), (704, -160), (1251, -40)]

def reductionPivot2375 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, 1, -2]]

theorem reductionSound2375 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6478).moment H =
      Integer.Sparse.eval reductionProjection2375 (momentVector H) := by
  have heq : reductionPivot2375 = (fun u v => (normalNode6478).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6478).moment H = injectiveMoment H reductionPivot2375 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6478).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2375 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2375 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 360, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2375 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection684, oldProjection785, oldProjection786, oldProjection1171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2375 (0 : Fin 4)) = (normalNode6334).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2375 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node785⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection785 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2375 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node786⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2375 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2375 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5623 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6478).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2375 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6478).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2375 (j : Fin 4)))
      2 1440 1440 2 ![144, 72, 360, 144] ![10, 20, 4, 10] reductionProjection2375 ![reductionProjection684, oldProjection785, oldProjection786, oldProjection1171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2376 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -8), (19, -132), (20, 13), (37, -48), (45, -48), (94, 60), (104, 112), (105, 16), (108, 320), (140, 144), (240, -96), (241, 112), (243, 16), (247, 224), (325, 288), (697, -48), (698, 32), (704, 32), (1251, 46)]

def reductionPivot2376 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound2376 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1245).moment H =
      Integer.Sparse.eval reductionProjection2376 (momentVector H) := by
  have heq : reductionPivot2376 = (fun u v => (normalNode1245).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1245).moment H = injectiveMoment H reductionPivot2376 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1245).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2376 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2376 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2376 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection774, reductionProjection2299, reductionProjection2374, reductionProjection2299, reductionProjection2375] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2376 (0 : Fin 5)) = canonicalInput1238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection774 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1238 hH))).trans (reductionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2376 (1 : Fin 5)) = (normalNode1214).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2299 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2376 (2 : Fin 5)) = canonicalInput2698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2374 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2698 hH))).trans (reductionSound2374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2376 (3 : Fin 5)) = canonicalInput2706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2299 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2706 hH))).trans (reductionSound2299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2376 (4 : Fin 5)) = canonicalInput2707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2375 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2376 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2707 hH))).trans (reductionSound2375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1245).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2376 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1245).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2376 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection2376 ![reductionProjection774, reductionProjection2299, reductionProjection2374, reductionProjection2299, reductionProjection2375]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2377 : Integer.Sparse (Fin 1613) := [(420, 1)]

theorem reductionSound2377 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code420).moment H =
      Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
  have hc : coordinates (420 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code420) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2377, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2378 : Integer.Sparse (Fin 1613) := [(283, -1), (284, -1), (296, -1), (420, -1)]

def reductionPivot2378 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]

theorem reductionSound2378 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1291).moment H =
      Integer.Sparse.eval reductionProjection2378 (momentVector H) := by
  have heq : reductionPivot2378 = (fun u v => (normalNode1291).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1291).moment H = injectiveMoment H reductionPivot2378 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1291).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2378 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2378 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2378 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2377, reductionProjection814, reductionProjection1683, oldProjection447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2378 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code420).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2378 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code296).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection814 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2378 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code284).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1683 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2378 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2378 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1291).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2378 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1291).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2378 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2378 ![reductionProjection2377, reductionProjection814, reductionProjection1683, oldProjection447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2379 : Integer.Sparse (Fin 1613) := [(60, 1), (698, 2), (700, 4), (1059, 2)]

def reductionPivot2379 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, 2, -2], ![1, 2, -3, 0]]

theorem reductionSound2379 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6770).moment H =
      Integer.Sparse.eval reductionProjection2379 (momentVector H) := by
  have heq : reductionPivot2379 = (fun u v => (normalNode6770).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6770).moment H = injectiveMoment H reductionPivot2379 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6770).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2379 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2379 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2379 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection177, oldProjection93, oldProjection177] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2379 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5774 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2379 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection177 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2379 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5774 hH))).trans (oldProjectionSound177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2379 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2379 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2379 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5699 hH))).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2379 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5695 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2379 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection177 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2379 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5695 hH))).trans (oldProjectionSound177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6770).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2379 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6770).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2379 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection2379 ![oldProjection177, oldProjection93, oldProjection177]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2380 : Integer.Sparse (Fin 1613) := [(36, -1), (238, -1), (695, -1)]

def reductionPivot2380 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 0, 2], ![-1, 2, 2, -3], ![4, -2, -2, 0]]

theorem reductionSound2380 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6499).moment H =
      Integer.Sparse.eval reductionProjection2380 (momentVector H) := by
  have heq : reductionPivot2380 = (fun u v => (normalNode6499).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6499).moment H = injectiveMoment H reductionPivot2380 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6499).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6499).entries)).symm
  have hshape : reductionPivot2380 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2380 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2380 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection17, oldProjection151, oldProjection182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2380 (0 : Fin 3)) = canonicalInput416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2380 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection17 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2380 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection17 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound416 hH))).trans (reductionSound17 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2380 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3288 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2380 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection151 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2380 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3288 hH))).trans (oldProjectionSound151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2380 (2 : Fin 3)) = canonicalInput7173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2380 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2380 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7173 hH))).trans (oldProjectionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6499).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2380 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6499).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2380 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection2380 ![reductionProjection17, oldProjection151, oldProjection182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2381 : Integer.Sparse (Fin 1613) := [(42, 1), (44, 1), (60, 1), (243, 1), (244, 1), (700, 3), (701, 1)]

def reductionPivot2381 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![0, 0, 3, -3], ![1, 2, -3, 0]]

theorem reductionSound2381 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6493).moment H =
      Integer.Sparse.eval reductionProjection2381 (momentVector H) := by
  have heq : reductionPivot2381 = (fun u v => (normalNode6493).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6493).moment H = injectiveMoment H reductionPivot2381 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6493).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2381 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2381 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2381 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection93, reductionProjection4, oldProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2381 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2381 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2381 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5699 hH))).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2381 (1 : Fin 3)) = canonicalInput13086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2381 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2381 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13086 hH))).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2381 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5619 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2381 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2381 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5619 hH))).trans (oldProjectionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6493).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2381 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6493).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2381 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection2381 ![oldProjection93, reductionProjection4, oldProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2382 : Integer.Sparse (Fin 1613) := [(36, 3), (42, -2), (44, -1), (60, -2), (238, 3), (241, -1), (243, -3), (244, -1), (695, 3), (698, -4), (700, -9), (701, -1), (1059, -3)]

def reductionPivot2382 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, 2, -3, 0]]

theorem reductionSound2382 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6488).moment H =
      Integer.Sparse.eval reductionProjection2382 (momentVector H) := by
  have heq : reductionPivot2382 = (fun u v => (normalNode6488).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6488).moment H = injectiveMoment H reductionPivot2382 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6488).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2382 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2382 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 3, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2382 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2379, reductionProjection2380, reductionProjection2381, oldProjection765] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2382 (0 : Fin 4)) = (normalNode6770).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2379 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2382 (1 : Fin 4)) = (normalNode6499).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2380 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2382 (2 : Fin 4)) = (normalNode6493).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2381 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2382 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node765⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection765 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2382 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6488).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2382 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6488).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2382 (j : Fin 4)))
      2 18 18 2 ![9, 3, 9, 9] ![2, 6, 2, 2] reductionProjection2382 ![reductionProjection2379, reductionProjection2380, reductionProjection2381, oldProjection765]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2383 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (36, -240), (38, -720), (42, 160), (44, 80), (56, -480), (60, 160), (61, -240), (94, 35), (125, 720), (238, -480), (241, 240), (243, 400), (244, 160), (247, 80), (283, 1440), (284, 1440), (296, 1440), (420, 1440), (695, -240), (697, -480), (698, 800), (700, 1200), (701, 160), (704, 160), (1058, -240), (1059, 560), (1251, -30)]

def reductionPivot2383 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]

theorem reductionSound2383 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1246).moment H =
      Integer.Sparse.eval reductionProjection2383 (momentVector H) := by
  have heq : reductionPivot2383 = (fun u v => (normalNode1246).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1246).moment H = injectiveMoment H reductionPivot2383 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1246).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2383 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2383 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 2, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2383 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection790, reductionProjection2378, reductionProjection2378, reductionProjection2382, oldProjection2393] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2383 (0 : Fin 5)) = (normalNode436).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection790 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2383 (1 : Fin 5)) = (normalNode1291).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2378 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2383 (2 : Fin 5)) = canonicalInput2725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2378 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2725 hH))).trans (reductionSound2378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2383 (3 : Fin 5)) = canonicalInput2734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2382 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2734 hH))).trans (reductionSound2382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2383 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1547 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2393 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2383 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1547 hH))).trans (oldProjectionSound2393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1246).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2383 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1246).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2383 (j : Fin 5)))
      1 1440 1440 1 ![288, 2, 2, 18, 1440] ![5, 720, 720, 80, 1] reductionProjection2383 ![reductionProjection790, reductionProjection2378, reductionProjection2378, reductionProjection2382, oldProjection2393]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2384 : Integer.Sparse (Fin 1613) := [(13, -3), (82, -3), (88, 1), (90, 1), (91, 1)]

def reductionPivot2384 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 3, 0], ![-1, 4, -1, -2], ![3, -2, -2, 1]]

theorem reductionSound2384 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7844).moment H =
      Integer.Sparse.eval reductionProjection2384 (momentVector H) := by
  have heq : reductionPivot2384 = (fun u v => (normalNode7844).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7844).moment H = injectiveMoment H reductionPivot2384 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7844).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7844).entries)).symm
  have hshape : reductionPivot2384 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2384 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2384 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection33, reductionProjection54, oldProjection112] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2384 (0 : Fin 3)) = canonicalInput2217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2384 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2384 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2217 hH))).trans (reductionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2384 (1 : Fin 3)) = canonicalInput14154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2384 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2384 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14154 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2384 (2 : Fin 3)) = canonicalInput14162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2384 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection112 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2384 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14162 hH))).trans (oldProjectionSound112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7844).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2384 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7844).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2384 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection2384 ![reductionProjection33, reductionProjection54, oldProjection112]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2385 : Integer.Sparse (Fin 1613) := [(13, 3), (76, 3), (82, 3), (88, -1), (90, -1), (91, -1), (243, -2), (564, -9), (686, 3), (698, -1), (1058, 3), (1223, 3), (1225, -1), (1226, -2)]

def reductionPivot2385 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]

theorem reductionSound2385 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1293).moment H =
      Integer.Sparse.eval reductionProjection2385 (momentVector H) := by
  have heq : reductionPivot2385 = (fun u v => (normalNode1293).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1293).moment H = injectiveMoment H reductionPivot2385 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1293).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2385 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2385 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2385 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection953, reductionProjection2384, reductionProjection2264, oldProjection954] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2385 (0 : Fin 4)) = canonicalInput3856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3856 hH))).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2385 (1 : Fin 4)) = canonicalInput2672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2384 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2672 hH))).trans (reductionSound2384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2385 (2 : Fin 4)) = canonicalInput2662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2662 hH))).trans (reductionSound2264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2385 (3 : Fin 4)) = canonicalInput2661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection954 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2385 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection954 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2661 hH))).trans (oldProjectionSound954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1293).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2385 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1293).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2385 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection2385 ![oldProjection953, reductionProjection2384, reductionProjection2264, oldProjection954]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2386 : Integer.Sparse (Fin 1613) := [(13, 48), (19, 4), (20, -1), (76, 96), (94, -5), (560, -144), (686, 96), (697, 48), (700, -32), (701, -16), (704, -48), (1251, -4)]

def reductionPivot2386 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -2, -2]]

theorem reductionSound2386 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1366).moment H =
      Integer.Sparse.eval reductionProjection2386 (momentVector H) := by
  have heq : reductionPivot2386 = (fun u v => (normalNode1366).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1366).moment H = injectiveMoment H reductionPivot2386 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1366).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2386 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2386 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2386 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1011, reductionProjection2276, reductionProjection2313, oldProjection1097] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2386 (0 : Fin 4)) = canonicalInput4022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4022 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2386 (1 : Fin 4)) = canonicalInput2764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2276 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2764 hH))).trans (reductionSound2276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2386 (2 : Fin 4)) = canonicalInput2747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2313 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2747 hH))).trans (reductionSound2313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2386 (3 : Fin 4)) = canonicalInput2746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2386 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2746 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1366).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2386 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1366).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2386 (j : Fin 4)))
      2 288 288 2 ![72, 1, 3, 144] ![4, 288, 96, 2] reductionProjection2386 ![oldProjection1011, reductionProjection2276, reductionProjection2313, oldProjection1097]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2387 : Integer.Sparse (Fin 1613) := [(0, -2), (13, -360), (19, -90), (20, 10), (76, -480), (82, -240), (88, 80), (90, 80), (91, 80), (94, 35), (228, -240), (231, -240), (238, -120), (241, 80), (243, 360), (244, 40), (560, 360), (564, 720), (686, -480), (697, -120), (698, 240), (700, 120), (701, 40), (704, 200), (1058, -240), (1223, -240), (1225, 80), (1226, 160), (1250, 30), (1251, 35), (1323, -240)]

def reductionPivot2387 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]

theorem reductionSound2387 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1247).moment H =
      Integer.Sparse.eval reductionProjection2387 (momentVector H) := by
  have heq : reductionPivot2387 = (fun u v => (normalNode1247).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1247).moment H = injectiveMoment H reductionPivot2387 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1247).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2387 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2387 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 18, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2387 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection707, reductionProjection2385, reductionProjection2385, reductionProjection2386, oldProjection1585] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2387 (0 : Fin 5)) = canonicalInput1257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection707 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1257 hH))).trans (reductionSound707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2387 (1 : Fin 5)) = (normalNode1293).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2385 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2387 (2 : Fin 5)) = canonicalInput2726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2385 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2726 hH))).trans (reductionSound2385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2387 (3 : Fin 5)) = (normalNode1366).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2387 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1585⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1585 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2387 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1247).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2387 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1247).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2387 (j : Fin 5)))
      1 720 1440 2 ![288, 18, 18, 288, 720] ![5, 80, 80, 5, 2] reductionProjection2387 ![reductionProjection707, reductionProjection2385, reductionProjection2385, reductionProjection2386, oldProjection1585]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2388 : Integer.Sparse (Fin 1613) := [(431, 1)]

theorem reductionSound2388 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code431).moment H =
      Integer.Sparse.eval reductionProjection2388 (momentVector H) := by
  have hc : coordinates (431 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code431) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2388, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2389 : Integer.Sparse (Fin 1613) := [(291, -1), (292, -1), (301, -1), (431, -1)]

def reductionPivot2389 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound2389 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1295).moment H =
      Integer.Sparse.eval reductionProjection2389 (momentVector H) := by
  have heq : reductionPivot2389 = (fun u v => (normalNode1295).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1295).moment H = injectiveMoment H reductionPivot2389 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1295).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2389 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2389 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2389 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2388, reductionProjection719, reductionProjection1673, oldProjection452] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2389 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code431).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2388 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2389 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2389 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code292).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2389 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection452 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2389 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1295).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2389 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1295).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2389 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2389 ![reductionProjection2388, reductionProjection719, reductionProjection1673, oldProjection452]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2390 : Integer.Sparse (Fin 1613) := [(58, -1), (81, -2)]

def reductionPivot2390 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 1, 2], ![0, 2, 1, -3], ![3, -1, -2, 0]]

theorem reductionSound2390 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6700).moment H =
      Integer.Sparse.eval reductionProjection2390 (momentVector H) := by
  have heq : reductionPivot2390 = (fun u v => (normalNode6700).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6700).moment H = injectiveMoment H reductionPivot2390 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6700).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6700).entries)).symm
  have hshape : reductionPivot2390 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2390 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2390 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection98, oldProjection111, oldProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2390 (0 : Fin 3)) = canonicalInput293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2390 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection98 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2390 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection98 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound293 hH))).trans (oldProjectionSound98 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2390 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2146 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2390 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2390 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2146 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2390 (2 : Fin 3)) = canonicalInput5296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2390 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2390 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5296 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6700).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2390 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6700).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2390 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection2390 ![oldProjection98, oldProjection111, oldProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2391 : Integer.Sparse (Fin 1613) := [(43, -1), (58, -1), (686, -1)]

def reductionPivot2391 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 1, 2, -3], ![-3, 1, -1, 3], ![4, -2, -1, -1]]

theorem reductionSound2391 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode9757).moment H =
      Integer.Sparse.eval reductionProjection2391 (momentVector H) := by
  have heq : reductionPivot2391 = (fun u v => (normalNode9757).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9757).moment H = injectiveMoment H reductionPivot2391 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9757).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9757).entries)).symm
  have hshape : reductionPivot2391 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2391 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2391 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection161, reductionProjection258, oldProjection98] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2391 (0 : Fin 3)) = canonicalInput23373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2391 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2391 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23373 hH))).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2391 (1 : Fin 3)) = canonicalInput32771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2391 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2391 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32771 hH))).trans (reductionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2391 (2 : Fin 3)) = canonicalInput32772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2391 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection98 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2391 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection98 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32772 hH))).trans (oldProjectionSound98 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9757).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2391 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9757).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2391 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection2391 ![oldProjection161, reductionProjection258, oldProjection98]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2392 : Integer.Sparse (Fin 1613) := [(43, 1), (58, 2), (81, 3), (228, 1), (310, -3), (686, 2)]

def reductionPivot2392 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 2, -3, 0]]

theorem reductionSound2392 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1367).moment H =
      Integer.Sparse.eval reductionProjection2392 (momentVector H) := by
  have heq : reductionPivot2392 = (fun u v => (normalNode1367).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1367).moment H = injectiveMoment H reductionPivot2392 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1367).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2392 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2392 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2392 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2390, reductionProjection714, reductionProjection2391, oldProjection756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2392 (0 : Fin 4)) = canonicalInput4024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2390 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4024 hH))).trans (reductionSound2390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2392 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code310).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection714 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2392 (2 : Fin 4)) = canonicalInput2748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2391 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2748 hH))).trans (reductionSound2391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2392 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1612 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection756 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2392 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1612 hH))).trans (oldProjectionSound756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1367).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2392 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1367).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2392 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection2392 ![reductionProjection2390, reductionProjection714, reductionProjection2391, oldProjection756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2393 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -120), (20, 5), (38, -720), (43, -240), (56, -480), (58, -480), (61, -240), (81, -720), (94, 105), (125, 720), (228, -240), (241, 160), (247, 240), (291, 1440), (292, 1440), (301, 1440), (310, 720), (431, 1440), (686, -480), (697, -720), (698, 240), (700, 160), (701, 80), (704, 240), (1058, -240), (1227, 80), (1251, 70)]

def reductionPivot2393 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound2393 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1248).moment H =
      Integer.Sparse.eval reductionProjection2393 (momentVector H) := by
  have heq : reductionPivot2393 = (fun u v => (normalNode1248).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1248).moment H = injectiveMoment H reductionPivot2393 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1248).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2393 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2393 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 2, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2393 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection790, reductionProjection2389, reductionProjection2389, reductionProjection2392, oldProjection2392] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2393 (0 : Fin 5)) = canonicalInput1258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection790 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1258 hH))).trans (reductionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2393 (1 : Fin 5)) = (normalNode1295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2389 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2389 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2393 (2 : Fin 5)) = canonicalInput2727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2389 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2389 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2727 hH))).trans (reductionSound2389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2393 (3 : Fin 5)) = (normalNode1367).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2392 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2393 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1556 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2392 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2393 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1556 hH))).trans (oldProjectionSound2392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1248).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2393 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1248).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2393 (j : Fin 5)))
      1 1440 1440 1 ![288, 2, 2, 6, 1440] ![5, 720, 720, 240, 1] reductionProjection2393 ![reductionProjection790, reductionProjection2389, reductionProjection2389, reductionProjection2392, oldProjection2392]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2394 : Integer.Sparse (Fin 1613) := [(20, -3), (94, 6), (104, -16), (241, -32), (243, -32), (285, -144), (704, -16), (1223, 48), (1251, 9)]

def reductionPivot2394 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]

theorem reductionSound2394 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1298).moment H =
      Integer.Sparse.eval reductionProjection2394 (momentVector H) := by
  have heq : reductionPivot2394 = (fun u v => (normalNode1298).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1298).moment H = injectiveMoment H reductionPivot2394 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1298).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2394 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2394 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2394 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1295, oldProjection1177, oldProjection448, oldProjection1348] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2394 (0 : Fin 4)) = canonicalInput6165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6165 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2394 (1 : Fin 4)) = canonicalInput2741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2741 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2394 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node448⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection448 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2394 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1486 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1348 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2394 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1486 hH))).trans (oldProjectionSound1348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1298).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2394 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1298).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2394 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection2394 ![oldProjection1295, oldProjection1177, oldProjection448, oldProjection1348]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2395 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 24), (20, 3), (94, 3), (104, 16), (241, 64), (243, 64), (285, 144), (692, -48), (704, 16), (1052, -96), (1053, -48), (1223, -144)]

def reductionPivot2395 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]

theorem reductionSound2395 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1250).moment H =
      Integer.Sparse.eval reductionProjection2395 (momentVector H) := by
  have heq : reductionPivot2395 = (fun u v => (normalNode1250).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1250).moment H = injectiveMoment H reductionPivot2395 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1250).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2395 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2395 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2395 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1467, reductionProjection2394, oldProjection1177, oldProjection1177, oldProjection1589] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2395 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1467⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1467 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2395 (1 : Fin 5)) = (normalNode1298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2394 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2395 (2 : Fin 5)) = canonicalInput2729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2729 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2395 (3 : Fin 5)) = canonicalInput2737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2737 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2395 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1589⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1589 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2395 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1250).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2395 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1250).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2395 (j : Fin 5)))
      1 288 288 1 ![288, 288, 144, 144, 144] ![1, 1, 2, 2, 2] reductionProjection2395 ![oldProjection1467, reductionProjection2394, oldProjection1177, oldProjection1177, oldProjection1589]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2396 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -30), (228, 480), (548, -720), (564, -720), (698, -160), (704, -80), (1223, 240), (1226, -80), (1227, -80), (1251, -35)]

def reductionPivot2396 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound2396 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1284).moment H =
      Integer.Sparse.eval reductionProjection2396 (momentVector H) := by
  have heq : reductionPivot2396 = (fun u v => (normalNode1284).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1284).moment H = injectiveMoment H reductionPivot2396 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1284).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2396 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2396 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2396 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection501, oldProjection894, reductionProjection2264, oldProjection896] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2396 (0 : Fin 4)) = canonicalInput1338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1338 hH))).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2396 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1689 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2396 (2 : Fin 4)) = canonicalInput2844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2844 hH))).trans (reductionSound2264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2396 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1717 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection896 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2396 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1717 hH))).trans (oldProjectionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1284).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2396 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1284).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2396 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 9] ![1440, 2, 1440, 160] reductionProjection2396 ![oldProjection501, oldProjection894, reductionProjection2264, oldProjection896]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2397 : Integer.Sparse (Fin 1613) := [(0, -8), (13, -240), (19, -260), (20, 15), (38, -240), (76, -240), (81, -480), (94, 190), (228, -960), (231, -480), (241, 240), (243, 160), (247, 480), (548, 720), (564, 720), (686, -480), (698, 320), (704, 240), (1223, -240), (1226, 80), (1227, 80), (1251, 155), (1323, -240)]

def reductionPivot2397 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]

theorem reductionSound2397 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1251).moment H =
      Integer.Sparse.eval reductionProjection2397 (momentVector H) := by
  have heq : reductionPivot2397 = (fun u v => (normalNode1251).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1251).moment H = injectiveMoment H reductionPivot2397 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1251).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2397 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2397 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2397 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1905, reductionProjection2396, oldProjection894, reductionProjection2341, oldProjection1559] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2397 (0 : Fin 5)) = canonicalInput1261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1905 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1261 hH))).trans (oldProjectionSound1905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2397 (1 : Fin 5)) = canonicalInput2658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2396 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2658 hH))).trans (reductionSound2396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2397 (2 : Fin 5)) = canonicalInput2730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2730 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2397 (3 : Fin 5)) = canonicalInput2738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2341 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2738 hH))).trans (reductionSound2341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2397 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1567 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2397 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1567 hH))).trans (oldProjectionSound1559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1251).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2397 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1251).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2397 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 288] ![1, 1, 2, 1, 5] reductionProjection2397 ![oldProjection1905, reductionProjection2396, oldProjection894, reductionProjection2341, oldProjection1559]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2398 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -10), (94, -40), (241, -40), (243, -80), (247, -40), (293, -360), (698, -40), (704, -120), (1223, 120), (1251, -35)]

def reductionPivot2398 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound2398 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1300).moment H =
      Integer.Sparse.eval reductionProjection2398 (momentVector H) := by
  have heq : reductionPivot2398 = (fun u v => (normalNode1300).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1300).moment H = injectiveMoment H reductionPivot2398 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1300).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2398 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2398 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2398 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection940, oldProjection1176, oldProjection453, oldProjection1278] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2398 (0 : Fin 4)) = canonicalInput6177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection940 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6177 hH))).trans (oldProjectionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2398 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1613 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1613 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2398 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2398 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1503 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1278 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2398 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1503 hH))).trans (oldProjectionSound1278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1300).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2398 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1300).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2398 (j : Fin 4)))
      2 720 720 2 ![144, 720, 1, 144] ![5, 1, 720, 5] reductionProjection2398 ![oldProjection940, oldProjection1176, oldProjection453, oldProjection1278]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2399 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -15), (94, -10), (698, -80), (700, -80), (701, -80), (704, -240), (1251, -5)]

def reductionPivot2399 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound2399 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6497).moment H =
      Integer.Sparse.eval reductionProjection2399 (momentVector H) := by
  have heq : reductionPivot2399 = (fun u v => (normalNode6497).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6497).moment H = injectiveMoment H reductionPivot2399 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6497).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2399 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2399 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2399 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1063, oldProjection1170, oldProjection981, oldProjection1171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2399 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5710 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5710 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2399 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5627 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5627 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2399 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5624 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection981 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5624 hH))).trans (oldProjectionSound981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2399 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2399 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5623 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6497).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2399 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6497).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2399 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 72, 144] ![2, 2, 20, 10] reductionProjection2399 ![oldProjection1063, oldProjection1170, oldProjection981, oldProjection1171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

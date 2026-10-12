import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical105
import NoFourMUBs.Step2.SOS.Canonical113
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical169
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical208
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical272
import NoFourMUBs.Step2.SOS.Canonical277
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical319
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical378
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical410
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.Canonical485
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions080
import NoFourMUBs.Step2.SOS.Reductions081
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical103
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical216
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical235
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical266
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2624 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (105, 32), (241, 16), (243, 32), (1047, -48)]

def reductionPivot2624 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-2, 3, 0, -1], ![4, -3, -2, 1]]

theorem reductionSound2624 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7475).moment H =
      Integer.Sparse.eval reductionProjection2624 (momentVector H) := by
  have heq : reductionPivot2624 = (fun u v => (normalNode7475).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7475).moment H = injectiveMoment H reductionPivot2624 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7475).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7475).entries)).symm
  have hshape : reductionPivot2624 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2624 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2624 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection141, oldProjection195, oldProjection196] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2624 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4168 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2624 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection141 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2624 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4168 hH))).trans (oldProjectionSound141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2624 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7521 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2624 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection195 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2624 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7521 hH))).trans (oldProjectionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2624 (2 : Fin 3)) = canonicalInput22380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2624 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2624 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22380 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7475).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2624 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7475).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2624 (j : Fin 3)))
      3 144 144 3 ![3, 48, 1] ![48, 3, 144] reductionProjection2624 ![oldProjection141, oldProjection195, oldProjection196]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2625 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 3), (105, -32), (241, -16), (243, -32), (309, -144), (313, -144), (314, -144), (1047, 48)]

def reductionPivot2625 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 2, 0, -2], ![1, -1, -1, 1]]

theorem reductionSound2625 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1418).moment H =
      Integer.Sparse.eval reductionProjection2625 (momentVector H) := by
  have heq : reductionPivot2625 = (fun u v => (normalNode1418).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1418).moment H = injectiveMoment H reductionPivot2625 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1418).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot2625 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2625 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2625 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2624, oldProjection460, reductionProjection2616, reductionProjection468] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2625 (0 : Fin 4)) = (normalNode7475).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2624 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2624 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2625 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1740 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1740 hH))).trans (oldProjectionSound460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2625 (2 : Fin 4)) = canonicalInput2783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2783 hH))).trans (reductionSound2616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2625 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code313).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection468 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2625 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1418).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2625 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1418).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2625 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection2625 ![reductionProjection2624, oldProjection460, reductionProjection2616, reductionProjection468]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2626 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (19, -280), (20, 45), (42, 240), (94, 45), (105, 160), (108, 80), (241, 80), (243, 800), (244, 160), (309, 720), (313, 720), (314, 1440), (331, 1440), (679, -240), (698, 240), (700, 720), (701, 320), (704, 720), (1047, -240), (1251, 125), (1278, -240)]

def reductionPivot2626 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound2626 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1410).moment H =
      Integer.Sparse.eval reductionProjection2626 (momentVector H) := by
  have heq : reductionPivot2626 = (fun u v => (normalNode1410).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1410).moment H = injectiveMoment H reductionPivot2626 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1410).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2626 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2626 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2626 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2623, reductionProjection2539, reductionProjection2625, reductionProjection2479, reductionProjection2618] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2626 (0 : Fin 5)) = canonicalInput6719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2623 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6719 hH))).trans (reductionSound2623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2626 (1 : Fin 5)) = canonicalInput2838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2539 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2838 hH))).trans (reductionSound2539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2626 (2 : Fin 5)) = (normalNode1418).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2625 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2626 (3 : Fin 5)) = canonicalInput2773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2479 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2773 hH))).trans (reductionSound2479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2626 (4 : Fin 5)) = (normalNode1412).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2618 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2626 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1410).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2626 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1410).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2626 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 144, 288] ![1, 5, 5, 10, 5] reductionProjection2626 ![reductionProjection2623, reductionProjection2539, reductionProjection2625, reductionProjection2479, reductionProjection2618]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2627 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 4), (698, -16), (700, 16), (701, -16), (704, 32), (1251, 1)]

def reductionPivot2627 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![0, 0, -3, 3], ![0, 2, 1, -3], ![1, -1, 0, 0]]

theorem reductionSound2627 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10649).moment H =
      Integer.Sparse.eval reductionProjection2627 (momentVector H) := by
  have heq : reductionPivot2627 = (fun u v => (normalNode10649).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10649).moment H = injectiveMoment H reductionPivot2627 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10649).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot2627 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2627 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2627 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1065, oldProjection1156, oldProjection1015, oldProjection187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2627 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6925 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1065 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6925 hH))).trans (oldProjectionSound1065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2627 (1 : Fin 4)) = canonicalInput27400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1156 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27400 hH))).trans (oldProjectionSound1156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2627 (2 : Fin 4)) = canonicalInput27414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1015 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27414 hH))).trans (oldProjectionSound1015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2627 (3 : Fin 4)) = canonicalInput27415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection187 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2627 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27415 hH))).trans (oldProjectionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10649).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2627 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10649).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2627 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 24] ![2, 2, 4, 12] reductionProjection2627 ![oldProjection1065, oldProjection1156, oldProjection1015, oldProjection187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2628 : Integer.Sparse (Fin 1613) := [(40, 48), (94, -1), (105, -8), (241, -8), (242, 24), (243, -8), (313, -72), (335, -72), (691, 24), (700, -8), (704, -8), (1251, -1)]

def reductionPivot2628 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound2628 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1419).moment H =
      Integer.Sparse.eval reductionProjection2628 (momentVector H) := by
  have heq : reductionPivot2628 = (fun u v => (normalNode1419).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1419).moment H = injectiveMoment H reductionPivot2628 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1419).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2628 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2628 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2628 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection783, reductionProjection2475, oldProjection778, reductionProjection468] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2628 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node783⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection783 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2628 (1 : Fin 4)) = canonicalInput2863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2863 hH))).trans (reductionSound2475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2628 (2 : Fin 4)) = canonicalInput2781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2781 hH))).trans (oldProjectionSound778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2628 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code313).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection468 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2628 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1419).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2628 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1419).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2628 (j : Fin 4)))
      2 144 144 2 ![9, 1, 72, 1] ![16, 144, 2, 144] reductionProjection2628 ![oldProjection783, reductionProjection2475, oldProjection778, reductionProjection468]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2629 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -22), (20, 5), (40, -72), (42, 32), (94, 4), (104, 8), (105, 8), (241, 8), (242, -48), (243, 40), (244, 32), (246, 24), (313, 72), (335, 72), (679, -24), (686, -24), (691, -24), (698, 8), (700, 64), (701, 96), (703, 32), (704, 64), (1251, 7)]

def reductionPivot2629 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]

theorem reductionSound2629 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1411).moment H =
      Integer.Sparse.eval reductionProjection2629 (momentVector H) := by
  have heq : reductionPivot2629 = (fun u v => (normalNode1411).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1411).moment H = injectiveMoment H reductionPivot2629 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1411).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2629 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2629 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2629 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2627, reductionProjection2540, reductionProjection2628, reductionProjection2474, reductionProjection2621] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2629 (0 : Fin 5)) = canonicalInput6720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2627 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6720 hH))).trans (reductionSound2627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2629 (1 : Fin 5)) = canonicalInput2839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2540 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2839 hH))).trans (reductionSound2540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2629 (2 : Fin 5)) = (normalNode1419).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2628 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2629 (3 : Fin 5)) = canonicalInput2774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2474 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2474 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2774 hH))).trans (reductionSound2474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2629 (4 : Fin 5)) = (normalNode1413).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2621 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2629 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1411).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2629 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1411).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2629 (j : Fin 5)))
      1 144 288 2 ![288, 72, 144, 288, 288] ![1, 4, 2, 1, 1] reductionProjection2629 ![reductionProjection2627, reductionProjection2540, reductionProjection2628, reductionProjection2474, reductionProjection2621]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2630 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (94, 3), (244, -16), (246, 16)]

def reductionPivot2630 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, 0, 2], ![0, 0, 4, -4], ![0, 2, -4, 2]]

theorem reductionSound2630 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9116).moment H =
      Integer.Sparse.eval reductionProjection2630 (momentVector H) := by
  have heq : reductionPivot2630 = (fun u v => (normalNode9116).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9116).moment H = injectiveMoment H reductionPivot2630 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9116).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot2630 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2630 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2630 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection33, oldProjection156, oldProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2630 (0 : Fin 3)) = canonicalInput24159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2630 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2630 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24159 hH))).trans (oldProjectionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2630 (1 : Fin 3)) = canonicalInput17408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2630 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection156 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2630 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17408 hH))).trans (oldProjectionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2630 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6520 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2630 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2630 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6520 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9116).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2630 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9116).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2630 (j : Fin 3)))
      3 144 144 3 ![1, 48, 24] ![144, 3, 6] reductionProjection2630 ![oldProjection33, oldProjection156, oldProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2631 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, -4), (20, 5), (106, 16), (244, 16)]

def reductionPivot2631 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, 0, 2], ![0, 0, 4, -4], ![0, 1, -4, 3]]

theorem reductionSound2631 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9113).moment H =
      Integer.Sparse.eval reductionProjection2631 (momentVector H) := by
  have heq : reductionPivot2631 = (fun u v => (normalNode9113).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9113).moment H = injectiveMoment H reductionPivot2631 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9113).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot2631 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2631 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2631 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection54, oldProjection130, oldProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2631 (0 : Fin 3)) = canonicalInput26095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2631 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2631 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26095 hH))).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2631 (1 : Fin 3)) = canonicalInput17409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2631 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection130 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2631 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17409 hH))).trans (oldProjectionSound130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2631 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6520 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2631 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2631 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6520 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9113).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2631 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9113).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2631 (j : Fin 3)))
      3 144 144 3 ![16, 48, 24] ![9, 3, 6] reductionProjection2631 ![oldProjection54, oldProjection130, oldProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2632 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, -4), (20, -6), (94, 6), (106, -16), (243, -16), (244, 32), (246, -16), (1251, -1)]

def reductionPivot2632 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 4, -4], ![0, 2, -4, 2], ![1, -1, 0, 0]]

theorem reductionSound2632 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10615).moment H =
      Integer.Sparse.eval reductionProjection2632 (momentVector H) := by
  have heq : reductionPivot2632 = (fun u v => (normalNode10615).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10615).moment H = injectiveMoment H reductionPivot2632 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10615).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot2632 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2632 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2632 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2630, oldProjection1069, reductionProjection2631, oldProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2632 (0 : Fin 4)) = (normalNode9116).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2632 (1 : Fin 4)) = canonicalInput25505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25505 hH))).trans (oldProjectionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2632 (2 : Fin 4)) = canonicalInput26093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2631 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26093 hH))).trans (reductionSound2631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2632 (3 : Fin 4)) = canonicalInput26100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2632 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26100 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10615).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2632 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10615).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2632 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 24] ![2, 2, 2, 12] reductionProjection2632 ![reductionProjection2630, oldProjection1069, reductionProjection2631, oldProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2633 : Integer.Sparse (Fin 1613) := [(316, 1)]

theorem reductionSound2633 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code316).moment H =
      Integer.Sparse.eval reductionProjection2633 (momentVector H) := by
  have hc : coordinates (316 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code316) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2633, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2634 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 1), (43, 48), (44, -32), (94, -3), (106, -16), (243, -16), (244, -32), (316, -144), (692, 48), (700, -16), (701, -64), (704, -16)]

def reductionPivot2634 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -1, 4], ![0, 0, 4, -4], ![0, 2, -2, 0], ![1, 0, -1, 0]]

theorem reductionSound2634 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1422).moment H =
      Integer.Sparse.eval reductionProjection2634 (momentVector H) := by
  have heq : reductionPivot2634 = (fun u v => (normalNode1422).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1422).moment H = injectiveMoment H reductionPivot2634 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1422).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2634 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2634 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2634 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection855, reductionProjection2584, reductionProjection856, reductionProjection2633] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2634 (0 : Fin 4)) = (normalNode6517).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection855 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2634 (1 : Fin 4)) = canonicalInput2864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2584 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2864 hH))).trans (reductionSound2584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2634 (2 : Fin 4)) = canonicalInput2788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection856 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection856 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2788 hH))).trans (reductionSound856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2634 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code316).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2633 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2634 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1422).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2634 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1422).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2634 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection2634 ![reductionProjection855, reductionProjection2584, reductionProjection856, reductionProjection2633]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2635 : Integer.Sparse (Fin 1613) := [(43, -3), (44, 2), (244, 2), (701, 2)]

def reductionPivot2635 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 3, -2], ![0, 4, -4, 0], ![2, -4, 1, 1]]

theorem reductionSound2635 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9119).moment H =
      Integer.Sparse.eval reductionProjection2635 (momentVector H) := by
  have heq : reductionPivot2635 = (fun u v => (normalNode9119).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9119).moment H = injectiveMoment H reductionPivot2635 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9119).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9119).entries)).symm
  have hshape : reductionPivot2635 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2635 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2635 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection4, reductionProjection258, reductionProjection4] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2635 (0 : Fin 3)) = canonicalInput9601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2635 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2635 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9601 hH))).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2635 (1 : Fin 3)) = canonicalInput22431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2635 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2635 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22431 hH))).trans (reductionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2635 (2 : Fin 3)) = canonicalInput22461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2635 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2635 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22461 hH))).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9119).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2635 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9119).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2635 (j : Fin 3)))
      3 9 9 3 ![3, 1, 3] ![3, 9, 3] reductionProjection2635 ![reductionProjection4, reductionProjection258, reductionProjection4]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2636 : Integer.Sparse (Fin 1613) := [(19, 3), (43, 6), (44, -6), (94, -1), (244, -8), (246, -2), (700, -2), (701, -14), (704, -6)]

def reductionPivot2636 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound2636 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode1421).moment H =
      Integer.Sparse.eval reductionProjection2636 (momentVector H) := by
  have heq : reductionPivot2636 = (fun u v => (normalNode1421).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1421).moment H = injectiveMoment H reductionPivot2636 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1421).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2636 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2636 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2636 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2630, oldProjection1071, reductionProjection856, reductionProjection2635] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2636 (0 : Fin 4)) = canonicalInput6302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6302 hH))).trans (reductionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2636 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1709 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1071 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1709 hH))).trans (oldProjectionSound1071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2636 (2 : Fin 4)) = canonicalInput2787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection856 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection856 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2787 hH))).trans (reductionSound856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2636 (3 : Fin 4)) = canonicalInput2786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2635 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2636 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2786 hH))).trans (reductionSound2635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1421).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2636 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1421).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2636 (j : Fin 4)))
      2 36 144 8 ![144, 72, 144, 9] ![1, 2, 1, 16] reductionProjection2636 ![reductionProjection2630, oldProjection1071, reductionProjection856, reductionProjection2635]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2637 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, -60), (20, 10), (43, -96), (44, 112), (94, 16), (106, 32), (243, 48), (244, 144), (246, 32), (316, 144), (692, -48), (700, 80), (701, 320), (704, 128), (1061, -48), (1251, 11)]

def reductionPivot2637 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound2637 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1420).moment H =
      Integer.Sparse.eval reductionProjection2637 (momentVector H) := by
  have heq : reductionPivot2637 = (fun u v => (normalNode1420).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1420).moment H = injectiveMoment H reductionPivot2637 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1420).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2637 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2637 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 36] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2637 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2632, oldProjection1617, reductionProjection2634, reductionProjection857, reductionProjection2636] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2637 (0 : Fin 5)) = canonicalInput6300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2632 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6300 hH))).trans (reductionSound2632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2637 (1 : Fin 5)) = canonicalInput2837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1617 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2837 hH))).trans (oldProjectionSound1617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2637 (2 : Fin 5)) = (normalNode1422).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2634 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2637 (3 : Fin 5)) = canonicalInput2784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection857 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2784 hH))).trans (reductionSound857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2637 (4 : Fin 5)) = (normalNode1421).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2636 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2637 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1420).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2637 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1420).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2637 (j : Fin 5)))
      1 288 288 1 ![288, 288, 288, 288, 36] ![1, 1, 1, 1, 8] reductionProjection2637 ![reductionProjection2632, oldProjection1617, reductionProjection2634, reductionProjection857, reductionProjection2636]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2638 : Integer.Sparse (Fin 1613) := [(328, 1)]

theorem reductionSound2638 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code328).moment H =
      Integer.Sparse.eval reductionProjection2638 (momentVector H) := by
  have hc : coordinates (328 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code328) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2638, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2639 : Integer.Sparse (Fin 1613) := [(1193, 1)]

theorem reductionSound2639 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1193).moment H =
      Integer.Sparse.eval reductionProjection2639 (momentVector H) := by
  have hc : coordinates (1193 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1193) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2639, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2640 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 4), (241, -32), (243, -16), (694, 48), (698, -64), (1047, 48), (1055, 48), (1226, -32), (1227, -16), (1251, 9)]

def reductionPivot2640 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, 1, -1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -2, 0, 1]]

theorem reductionSound2640 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11173).moment H =
      Integer.Sparse.eval reductionProjection2640 (momentVector H) := by
  have heq : reductionPivot2640 = (fun u v => (normalNode11173).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11173).moment H = injectiveMoment H reductionPivot2640 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11173).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2640 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2640 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2640 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1296, oldProjection1365, oldProjection1309, oldProjection1366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2640 (0 : Fin 4)) = canonicalInput22891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1296 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22891 hH))).trans (oldProjectionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2640 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2640 (2 : Fin 4)) = canonicalInput23350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23350 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2640 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1366 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2640 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11173).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2640 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11173).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2640 (j : Fin 4)))
      2 288 1440 10 ![144, 144, 720, 720] ![10, 10, 2, 2] reductionProjection2640 ![oldProjection1296, oldProjection1365, oldProjection1309, oldProjection1366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2641 : Integer.Sparse (Fin 1613) := [(1051, 1)]

theorem reductionSound2641 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1051).moment H =
      Integer.Sparse.eval reductionProjection2641 (momentVector H) := by
  have hc : coordinates (1051 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1051) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2641, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2642 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (94, 35), (1051, -480), (1052, 240), (1219, 240), (1223, 240), (1251, 35)]

def reductionPivot2642 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![1, 0, 0, 1, -2], ![-1, -3, 2, 1, 1], ![1, 3, -2, -2, 0]]

theorem reductionSound2642 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11107).moment H =
      Integer.Sparse.eval reductionProjection2642 (momentVector H) := by
  have heq : reductionPivot2642 = (fun u v => (normalNode11107).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11107).moment H = injectiveMoment H reductionPivot2642 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11107).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11107).entries)).symm
  have hshape : reductionPivot2642 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2642 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![480, 1, 96] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2642 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection1148, reductionProjection2641, oldProjection698] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2642 (0 : Fin 3)) = canonicalInput31043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2642 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection1148 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2642 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection1148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31043 hH))).trans (oldProjectionSound1148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2642 (1 : Fin 3)) = canonicalInput33839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2642 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection2641 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2642 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection2641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound33839 hH))).trans (reductionSound2641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2642 (2 : Fin 3)) = canonicalInput33845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2642 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection698 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2642 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound33845 hH))).trans (oldProjectionSound698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11107).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2642 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11107).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2642 (j : Fin 3)))
      3 1440 1440 3 ![480, 1, 96] ![3, 1440, 15] reductionProjection2642 ![oldProjection1148, reductionProjection2641, oldProjection698]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2643 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, -160), (1050, 240), (1055, 240), (1058, 240), (1221, 240), (1226, -80), (1227, -80), (1250, -60), (1251, -50)]

def reductionPivot2643 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 1, -1, 1], ![0, 0, -2, 2], ![0, 0, 2, -2], ![1, -2, 1, 0]]

theorem reductionSound2643 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11116).moment H =
      Integer.Sparse.eval reductionProjection2643 (momentVector H) := by
  have heq : reductionPivot2643 = (fun u v => (normalNode11116).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11116).moment H = injectiveMoment H reductionPivot2643 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11116).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2643 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2643 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2643 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1304, oldProjection1309, oldProjection1347, oldProjection1344] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2643 (0 : Fin 4)) = canonicalInput23487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1304 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23487 hH))).trans (oldProjectionSound1304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2643 (1 : Fin 4)) = canonicalInput22787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22787 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2643 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2643 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1344⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1344 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2643 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11116).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2643 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11116).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2643 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 360] ![2, 2, 2, 4] reductionProjection2643 ![oldProjection1304, oldProjection1309, oldProjection1347, oldProjection1344]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2644 : Integer.Sparse (Fin 1613) := [(19, -2), (20, 1), (94, -6), (241, 16), (243, 8), (694, -24), (698, 48), (1047, -24), (1050, -24), (1051, 48), (1052, -24), (1055, -48), (1058, -24), (1193, -144), (1219, -24), (1221, -24), (1223, -24), (1226, 24), (1227, 16), (1250, 6), (1251, -3)]

def reductionPivot2644 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-2, 0, 2, -1, 1], ![3, -1, -2, 1, -1]]

theorem reductionSound2644 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10381).moment H =
      Integer.Sparse.eval reductionProjection2644 (momentVector H) := by
  have heq : reductionPivot2644 = (fun u v => (normalNode10381).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10381).moment H = injectiveMoment H reductionPivot2644 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10381).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10381).entries)).symm
  have hshape : reductionPivot2644 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2644 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2644 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2639, reductionProjection2640, reductionProjection2642, reductionProjection2643] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2644 (0 : Fin 4)) = canonicalInput16820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2639 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16820 hH))).trans (reductionSound2639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2644 (1 : Fin 4)) = canonicalInput26253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2640 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26253 hH))).trans (reductionSound2640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2644 (2 : Fin 4)) = canonicalInput26286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26286 hH))).trans (reductionSound2642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2644 (3 : Fin 4)) = canonicalInput26289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2643 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2644 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26289 hH))).trans (reductionSound2643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10381).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2644 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10381).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2644 (j : Fin 4)))
      2 288 1440 10 ![1, 288, 1440, 1440] ![1440, 5, 1, 1] reductionProjection2644 ![reductionProjection2639, reductionProjection2640, reductionProjection2642, reductionProjection2643]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2645 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -25), (241, -80), (247, -80), (698, -80), (1251, -100)]

def reductionPivot2645 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -2, 2]]

theorem reductionSound2645 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10621).moment H =
      Integer.Sparse.eval reductionProjection2645 (momentVector H) := by
  have heq : reductionPivot2645 = (fun u v => (normalNode10621).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10621).moment H = injectiveMoment H reductionPivot2645 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10621).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot2645 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2645 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2645 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1083, oldProjection1220, oldProjection1335, oldProjection168] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2645 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2645 (1 : Fin 4)) = canonicalInput25523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25523 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2645 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8518 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1335 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8518 hH))).trans (oldProjectionSound1335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2645 (3 : Fin 4)) = canonicalInput26138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection168 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2645 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26138 hH))).trans (oldProjectionSound168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10621).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2645 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10621).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2645 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 144, 24] ![2, 4, 10, 60] reductionProjection2645 ![oldProjection1083, oldProjection1220, oldProjection1335, oldProjection168]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2646 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (94, 15), (698, -16), (1226, -16), (1251, 5)]

def reductionPivot2646 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound2646 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10642).moment H =
      Integer.Sparse.eval reductionProjection2646 (momentVector H) := by
  have heq : reductionPivot2646 = (fun u v => (normalNode10642).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10642).moment H = injectiveMoment H reductionPivot2646 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10642).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot2646 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2646 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 240] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2646 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1122, oldProjection1217, oldProjection1220, oldProjection181] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2646 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1122 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2646 (1 : Fin 4)) = canonicalInput26693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1217 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26693 hH))).trans (oldProjectionSound1217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2646 (2 : Fin 4)) = canonicalInput26884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26884 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2646 (3 : Fin 4)) = canonicalInput26886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection181 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2646 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26886 hH))).trans (oldProjectionSound181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10642).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2646 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10642).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2646 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 360, 240] ![2, 2, 4, 6] reductionProjection2646 ![oldProjection1122, oldProjection1217, oldProjection1220, oldProjection181]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2647 : Integer.Sparse (Fin 1613) := [(0, 9), (19, 40), (20, 10), (94, -10), (241, 80), (247, 80), (698, 160), (1226, 80), (1251, -5)]

def reductionPivot2647 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, 0, 0, -2, 3], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]

theorem reductionSound2647 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10372).moment H =
      Integer.Sparse.eval reductionProjection2647 (momentVector H) := by
  have heq : reductionPivot2647 = (fun u v => (normalNode10372).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10372).moment H = injectiveMoment H reductionPivot2647 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10372).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2647 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2647 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 360, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2647 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2645, reductionProjection2646, oldProjection1220, oldProjection1220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2647 (0 : Fin 4)) = canonicalInput17788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2645 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17788 hH))).trans (reductionSound2645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2647 (1 : Fin 4)) = canonicalInput20396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2646 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20396 hH))).trans (reductionSound2646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2647 (2 : Fin 4)) = canonicalInput20414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20414 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2647 (3 : Fin 4)) = canonicalInput20419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2647 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20419 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10372).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2647 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10372).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2647 (j : Fin 4)))
      2 2880 2880 2 ![1440, 288, 360, 360] ![2, 10, 8, 8] reductionProjection2647 ![reductionProjection2645, reductionProjection2646, oldProjection1220, oldProjection1220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2648 : Integer.Sparse (Fin 1613) := [(833, 1)]

theorem reductionSound2648 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code833).moment H =
      Integer.Sparse.eval reductionProjection2648 (momentVector H) := by
  have hc : coordinates (833 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code833) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2648, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2649 : Integer.Sparse (Fin 1613) := [(423, -1), (775, -1), (865, -1), (1197, -1)]

def reductionPivot2649 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![2, -2, 0, 0]]

theorem reductionSound2649 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5522).moment H =
      Integer.Sparse.eval reductionProjection2649 (momentVector H) := by
  have heq : reductionPivot2649 = (fun u v => (normalNode5522).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5522).moment H = injectiveMoment H reductionPivot2649 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5522).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2649 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2649 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2649 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection472, reductionProjection138, oldProjection606, oldProjection588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2649 (0 : Fin 4)) = canonicalInput11108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection472 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11108 hH))).trans (oldProjectionSound472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2649 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1197).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection138 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2649 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4810 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection606 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4810 hH))).trans (oldProjectionSound606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2649 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4808 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2649 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4808 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5522).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2649 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5522).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2649 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2649 ![oldProjection472, reductionProjection138, oldProjection606, oldProjection588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2650 : Integer.Sparse (Fin 1613) := [(1178, 1)]

theorem reductionSound2650 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1178).moment H =
      Integer.Sparse.eval reductionProjection2650 (momentVector H) := by
  have hc : coordinates (1178 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1178) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2650, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2651 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (423, -720), (864, -720), (865, -720), (1050, 240), (1221, 240), (1251, -50)]

def reductionPivot2651 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, -2, 0], ![2, 0, 0, -2]]

theorem reductionSound2651 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3751).moment H =
      Integer.Sparse.eval reductionProjection2651 (momentVector H) := by
  have heq : reductionPivot2651 = (fun u v => (normalNode3751).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3751).moment H = injectiveMoment H reductionPivot2651 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3751).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2651 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2651 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2651 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection606, oldProjection605, oldProjection1304, oldProjection472] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2651 (0 : Fin 4)) = canonicalInput8263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection606 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8263 hH))).trans (oldProjectionSound606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2651 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node605⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection605 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2651 (2 : Fin 4)) = canonicalInput7277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1304 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7277 hH))).trans (oldProjectionSound1304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2651 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3314 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection472 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2651 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3314 hH))).trans (oldProjectionSound472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3751).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2651 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3751).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2651 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection2651 ![oldProjection606, oldProjection605, oldProjection1304, oldProjection472]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2652 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (423, 1440), (775, 720), (833, -1440), (864, 720), (865, 1440), (1050, -240), (1178, -1440), (1197, 720), (1221, -240), (1251, 50)]

def reductionPivot2652 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![0, 2, 0, -1, -1], ![-2, 0, 2, -1, 1], ![3, 0, -2, 0, -1]]

theorem reductionSound2652 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10364).moment H =
      Integer.Sparse.eval reductionProjection2652 (momentVector H) := by
  have heq : reductionPivot2652 = (fun u v => (normalNode10364).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10364).moment H = injectiveMoment H reductionPivot2652 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10364).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10364).entries)).symm
  have hshape : reductionPivot2652 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2652 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 2, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2652 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2648, reductionProjection2649, reductionProjection2650, reductionProjection2651] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2652 (0 : Fin 4)) = canonicalInput13361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2648 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13361 hH))).trans (reductionSound2648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2652 (1 : Fin 4)) = canonicalInput24185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2649 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24185 hH))).trans (reductionSound2649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2652 (2 : Fin 4)) = canonicalInput24209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2650 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24209 hH))).trans (reductionSound2650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2652 (3 : Fin 4)) = canonicalInput24210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2651 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2652 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24210 hH))).trans (reductionSound2651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10364).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2652 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10364).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2652 (j : Fin 4)))
      2 2880 2880 2 ![1, 2, 1, 1440] ![2880, 1440, 2880, 2] reductionProjection2652 ![reductionProjection2648, reductionProjection2649, reductionProjection2650, reductionProjection2651]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2653 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (94, -20), (241, -80), (247, -80), (698, -160), (1226, -80), (1251, -55)]

def reductionPivot2653 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, -1, 0, 0]]

theorem reductionSound2653 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11103).moment H =
      Integer.Sparse.eval reductionProjection2653 (momentVector H) := by
  have heq : reductionPivot2653 = (fun u v => (normalNode11103).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11103).moment H = injectiveMoment H reductionPivot2653 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11103).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2653 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2653 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2653 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1296, oldProjection1345, oldProjection1299, oldProjection1220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2653 (0 : Fin 4)) = canonicalInput23485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1296 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23485 hH))).trans (oldProjectionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2653 (1 : Fin 4)) = canonicalInput22780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1345 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22780 hH))).trans (oldProjectionSound1345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2653 (2 : Fin 4)) = canonicalInput22762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1299 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22762 hH))).trans (oldProjectionSound1299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2653 (3 : Fin 4)) = canonicalInput22760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2653 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22760 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11103).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2653 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11103).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2653 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 360] ![10, 10, 2, 4] reductionProjection2653 ![oldProjection1296, oldProjection1345, oldProjection1299, oldProjection1220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2654 : Integer.Sparse (Fin 1613) := [(1204, 1)]

theorem reductionSound2654 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1204).moment H =
      Integer.Sparse.eval reductionProjection2654 (momentVector H) := by
  have hc : coordinates (1204 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1204) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2654, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2655 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, 15), (698, -80), (775, -720), (1058, 240), (1204, -720), (1226, -80), (1251, 20)]

def reductionPivot2655 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, -1, 1, -1]]

theorem reductionSound2655 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5536).moment H =
      Integer.Sparse.eval reductionProjection2655 (momentVector H) := by
  have heq : reductionPivot2655 = (fun u v => (normalNode5536).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5536).moment H = injectiveMoment H reductionPivot2655 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5536).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2655 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2655 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2655 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1220, reductionProjection2654, oldProjection1347, oldProjection588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2655 (0 : Fin 4)) = canonicalInput21002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21002 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2655 (1 : Fin 4)) = canonicalInput10839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2654 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10839 hH))).trans (reductionSound2654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2655 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4821 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4821 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2655 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4808 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2655 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4808 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5536).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2655 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5536).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2655 (j : Fin 4)))
      2 1440 1440 2 ![360, 1, 720, 1] ![4, 1440, 2, 1440] reductionProjection2655 ![oldProjection1220, reductionProjection2654, oldProjection1347, oldProjection588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

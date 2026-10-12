import NoFourMUBs.Step2.SOS.Canonical013
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical093
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical270
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical208
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6560 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -160), (20, 30), (33, -120), (88, 120), (94, -10), (104, 80), (105, 80), (108, 120), (241, 360), (243, 440), (247, 160), (627, 720), (698, 160), (731, 360), (747, 360), (1047, -120), (1226, 160), (1251, 5), (1290, -120), (1330, 720)]

def reductionPivot6560 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound6560 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3251).moment H =
      Integer.Sparse.eval reductionProjection6560 (momentVector H) := by
  have heq : reductionPivot6560 = (fun u v => (normalNode3251).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3251).moment H = injectiveMoment H reductionPivot6560 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3251).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6560 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6560 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6560 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6558, reductionProjection6423, reductionProjection6559, reductionProjection2465, reductionProjection6468] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6560 (0 : Fin 5)) = (normalNode4757).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6558 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6560 (1 : Fin 5)) = canonicalInput6273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6423 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6273 hH))).trans (reductionSound6423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6560 (2 : Fin 5)) = (normalNode3265).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6560 (3 : Fin 5)) = canonicalInput6188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2465 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6188 hH))).trans (reductionSound2465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6560 (4 : Fin 5)) = (normalNode3257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6468 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6560 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3251).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6560 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3251).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6560 (j : Fin 5)))
      1 720 1440 2 ![288, 1440, 288, 288, 288] ![5, 1, 5, 5, 5] reductionProjection6560 ![reductionProjection6558, reductionProjection6423, reductionProjection6559, reductionProjection2465, reductionProjection6468]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6561 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -3), (94, -1), (105, -32), (108, -48), (241, -16), (243, -32), (247, -16), (1047, 48), (1251, -6), (1319, 48), (1330, -144)]

def reductionPivot6561 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -3, 4], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound6561 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4758).moment H =
      Integer.Sparse.eval reductionProjection6561 (momentVector H) := by
  have heq : reductionPivot6561 = (fun u v => (normalNode4758).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4758).moment H = injectiveMoment H reductionPivot6561 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4758).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6561 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6561 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6561 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1085, reductionProjection2609, reductionProjection6398, reductionProjection6467] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6561 (0 : Fin 4)) = canonicalInput11817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1085 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1085 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11817 hH))).trans (oldProjectionSound1085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6561 (1 : Fin 4)) = canonicalInput9708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2609 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9708 hH))).trans (reductionSound2609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6561 (2 : Fin 4)) = canonicalInput9674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6398 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9674 hH))).trans (reductionSound6398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6561 (3 : Fin 4)) = canonicalInput9672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6561 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9672 hH))).trans (reductionSound6467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4758).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6561 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4758).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6561 (j : Fin 4)))
      2 288 288 2 ![144, 72, 72, 1] ![2, 4, 4, 288] reductionProjection6561 ![oldProjection1085, reductionProjection2609, reductionProjection6398, reductionProjection6467]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6562 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, -10), (241, -80), (243, -80), (698, -80), (1251, 10)]

def reductionPivot6562 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![0, 2, 2, -4], ![1, -1, -1, 1]]

theorem reductionSound6562 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10633).moment H =
      Integer.Sparse.eval reductionProjection6562 (momentVector H) := by
  have heq : reductionPivot6562 = (fun u v => (normalNode10633).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10633).moment H = injectiveMoment H reductionPivot6562 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10633).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot6562 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6562 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6562 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1113, oldProjection1082, oldProjection1083, oldProjection153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6562 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6562 (1 : Fin 4)) = canonicalInput26680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1082 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26680 hH))).trans (oldProjectionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6562 (2 : Fin 4)) = canonicalInput26780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26780 hH))).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6562 (3 : Fin 4)) = canonicalInput26784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection153 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6562 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26784 hH))).trans (oldProjectionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10633).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6562 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10633).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6562 (j : Fin 4)))
      2 720 720 2 ![144, 144, 720, 48] ![5, 5, 1, 15] reductionProjection6562 ![oldProjection1113, oldProjection1082, oldProjection1083, oldProjection153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6563 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 32), (1214, -48), (1225, 16), (1226, 32), (1251, 1)]

def reductionPivot6563 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-3, 3, -1, 1], ![4, -2, -1, -1]]

theorem reductionSound6563 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9722).moment H =
      Integer.Sparse.eval reductionProjection6563 (momentVector H) := by
  have heq : reductionPivot6563 = (fun u v => (normalNode9722).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9722).moment H = injectiveMoment H reductionPivot6563 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9722).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9722).entries)).symm
  have hshape : reductionPivot6563 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6563 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6563 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection228, oldProjection219, oldProjection222] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6563 (0 : Fin 3)) = canonicalInput18700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6563 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection228 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6563 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18700 hH))).trans (oldProjectionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6563 (1 : Fin 3)) = canonicalInput27381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6563 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6563 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27381 hH))).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6563 (2 : Fin 3)) = canonicalInput27388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6563 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection222 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6563 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27388 hH))).trans (oldProjectionSound222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9722).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6563 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9722).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6563 (j : Fin 3)))
      3 144 144 3 ![3, 1, 48] ![48, 144, 3] reductionProjection6563 ![oldProjection228, oldProjection219, oldProjection222]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6564 : Integer.Sparse (Fin 1613) := [(94, 3), (243, -32), (627, -144), (732, -144), (751, -144), (1214, 48), (1225, -16), (1226, -32), (1251, -1)]

def reductionPivot6564 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, -1, 1, -1]]

theorem reductionSound6564 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3266).moment H =
      Integer.Sparse.eval reductionProjection6564 (momentVector H) := by
  have heq : reductionPivot6564 = (fun u v => (normalNode3266).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3266).moment H = injectiveMoment H reductionPivot6564 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3266).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6564 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6564 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6564 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6563, oldProjection585, reductionProjection5841, oldProjection581] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6564 (0 : Fin 4)) = (normalNode9722).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6563 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6564 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3053 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection585 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3053 hH))).trans (oldProjectionSound585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6564 (2 : Fin 4)) = canonicalInput6201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6201 hH))).trans (reductionSound5841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6564 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection581 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6564 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3266).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6564 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3266).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6564 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6564 ![reductionProjection6563, oldProjection585, reductionProjection5841, oldProjection581]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6565 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -40), (19, -260), (20, 30), (88, 160), (94, 20), (105, 160), (108, 240), (231, -240), (241, 560), (242, -480), (243, 800), (244, 80), (247, 240), (627, 1440), (698, 240), (700, 80), (732, 720), (751, 720), (1047, -240), (1214, -240), (1225, 80), (1226, 320), (1248, 720), (1251, 5), (1319, -240), (1330, 720)]

def reductionPivot6565 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound6565 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3253).moment H =
      Integer.Sparse.eval reductionProjection6565 (momentVector H) := by
  have heq : reductionPivot6565 = (fun u v => (normalNode3253).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3253).moment H = injectiveMoment H reductionPivot6565 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3253).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6565 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6565 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6565 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6561, reductionProjection6562, reductionProjection6564, oldProjection2751, reductionProjection6549] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6565 (0 : Fin 5)) = (normalNode4758).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6561 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6565 (1 : Fin 5)) = canonicalInput6277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6562 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6277 hH))).trans (reductionSound6562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6565 (2 : Fin 5)) = (normalNode3266).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6564 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6564 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6565 (3 : Fin 5)) = canonicalInput6191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2751 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6191 hH))).trans (oldProjectionSound2751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6565 (4 : Fin 5)) = (normalNode3262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6549 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6565 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3253).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6565 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3253).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6565 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 288, 1440, 288] ![5, 2, 5, 1, 5] reductionProjection6565 ![reductionProjection6561, reductionProjection6562, reductionProjection6564, oldProjection2751, reductionProjection6549]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6566 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (240, -48), (242, -48), (246, 16), (704, 16)]

def reductionPivot6566 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-1, 2, 2, -3], ![2, -1, -4, 3]]

theorem reductionSound6566 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10303).moment H =
      Integer.Sparse.eval reductionProjection6566 (momentVector H) := by
  have heq : reductionPivot6566 = (fun u v => (normalNode10303).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10303).moment H = injectiveMoment H reductionPivot6566 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10303).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10303).entries)).symm
  have hshape : reductionPivot6566 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6566 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6566 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection154, oldProjection152, oldProjection148] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6566 (0 : Fin 3)) = canonicalInput18725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6566 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection154 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6566 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18725 hH))).trans (oldProjectionSound154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6566 (1 : Fin 3)) = canonicalInput27396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6566 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection152 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6566 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27396 hH))).trans (oldProjectionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6566 (2 : Fin 3)) = canonicalInput27410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6566 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection148 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6566 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27410 hH))).trans (oldProjectionSound148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10303).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6566 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10303).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6566 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6566 ![oldProjection154, oldProjection152, oldProjection148]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6567 : Integer.Sparse (Fin 1613) := [(752, 1)]

theorem reductionSound6567 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code752).moment H =
      Integer.Sparse.eval reductionProjection6567 (momentVector H) := by
  have hc : coordinates (752 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code752) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6567, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6568 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 8), (20, -1), (94, -2), (105, -8), (108, -8), (240, 24), (241, -8), (242, 24), (243, -16), (246, -8), (247, -8), (704, -8), (752, -72), (1251, -3)]

def reductionPivot6568 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -3, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound6568 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4759).moment H =
      Integer.Sparse.eval reductionProjection6568 (momentVector H) := by
  have heq : reductionPivot6568 = (fun u v => (normalNode4759).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4759).moment H = injectiveMoment H reductionPivot6568 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4759).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6568 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6568 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6568 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1174, reductionProjection6566, reductionProjection6398, reductionProjection6567] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6568 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6568 (1 : Fin 4)) = canonicalInput9732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6566 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9732 hH))).trans (reductionSound6566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6568 (2 : Fin 4)) = canonicalInput9674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6398 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9674 hH))).trans (reductionSound6398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6568 (3 : Fin 4)) = canonicalInput9671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6567 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6568 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9671 hH))).trans (reductionSound6567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4759).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6568 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4759).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6568 (j : Fin 4)))
      2 144 144 2 ![144, 144, 72, 1] ![1, 1, 2, 144] reductionProjection6568 ![oldProjection1174, reductionProjection6566, reductionProjection6398, reductionProjection6567]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6569 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (88, -32), (94, 1), (231, 48), (238, 48), (241, -48), (243, -32), (244, -16), (247, -16), (698, -16), (700, -16), (733, -144), (1226, -16), (1251, -2)]

def reductionPivot6569 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -1, 0]]

theorem reductionSound6569 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3268).moment H =
      Integer.Sparse.eval reductionProjection6569 (momentVector H) := by
  have heq : reductionPivot6569 = (fun u v => (normalNode3268).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3268).moment H = injectiveMoment H reductionPivot6569 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3268).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6569 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6569 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6569 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection903, oldProjection1194, oldProjection1004, reductionProjection6471] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6569 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection903 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6569 (1 : Fin 4)) = canonicalInput6373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1194 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6373 hH))).trans (oldProjectionSound1194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6569 (2 : Fin 4)) = canonicalInput6200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1004 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1004 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6200 hH))).trans (oldProjectionSound1004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6569 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code733).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6471 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6569 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3268).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6569 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3268).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6569 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection6569 ![oldProjection903, oldProjection1194, oldProjection1004, reductionProjection6471]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6570 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -320), (20, 30), (88, 240), (94, 75), (105, 80), (108, 80), (231, -1200), (238, -960), (240, -240), (241, 880), (242, -480), (243, 880), (244, 240), (246, 80), (247, 560), (698, 160), (700, 240), (704, 80), (733, 720), (740, 720), (752, 720), (1226, 80), (1251, 110), (1323, -240)]

def reductionPivot6570 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6570 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3255).moment H =
      Integer.Sparse.eval reductionProjection6570 (momentVector H) := by
  have heq : reductionPivot6570 = (fun u v => (normalNode3255).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3255).moment H = injectiveMoment H reductionPivot6570 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3255).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6570 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6570 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6570 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6568, reductionProjection1943, reductionProjection6569, reductionProjection2469, reductionProjection6548] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6570 (0 : Fin 5)) = (normalNode4759).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6568 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6568 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6570 (1 : Fin 5)) = canonicalInput6278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1943 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6278 hH))).trans (reductionSound1943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6570 (2 : Fin 5)) = (normalNode3268).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6569 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6570 (3 : Fin 5)) = canonicalInput6193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2469 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2469 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6193 hH))).trans (reductionSound2469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6570 (4 : Fin 5)) = (normalNode3263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6548 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6570 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3255).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6570 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3255).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6570 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 288, 288, 288] ![10, 1, 5, 5, 5] reductionProjection6570 ![reductionProjection6568, reductionProjection1943, reductionProjection6569, reductionProjection2469, reductionProjection6548]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6571 : Integer.Sparse (Fin 1613) := [(94, 3), (243, -32), (510, -144), (698, -16), (700, -16), (733, -144), (752, -144), (1058, 48), (1226, -16), (1251, -1)]

def reductionPivot6571 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, -1, -1, 1]]

theorem reductionSound6571 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3267).moment H =
      Integer.Sparse.eval reductionProjection6571 (momentVector H) := by
  have heq : reductionPivot6571 = (fun u v => (normalNode3267).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3267).moment H = injectiveMoment H reductionPivot6571 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3267).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6571 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6571 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6571 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1215, reductionProjection6567, reductionProjection4763, reductionProjection6471] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6571 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1215⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6571 (1 : Fin 4)) = canonicalInput6379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6567 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6379 hH))).trans (reductionSound6567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6571 (2 : Fin 4)) = canonicalInput6202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4763 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6202 hH))).trans (reductionSound4763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6571 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code733).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6471 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6571 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3267).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6571 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3267).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6571 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6571 ![oldProjection1215, reductionProjection6567, reductionProjection4763, reductionProjection6471]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6572 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (88, -16), (94, 3), (105, -16), (241, -48), (242, 48), (243, -64), (247, -16), (510, -144), (1089, -144), (1251, -3)]

def reductionPivot6572 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]

theorem reductionSound6572 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3261).moment H =
      Integer.Sparse.eval reductionProjection6572 (momentVector H) := by
  have heq : reductionPivot6572 = (fun u v => (normalNode3261).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3261).moment H = injectiveMoment H reductionPivot6572 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3261).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6572 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6572 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6572 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection674, oldProjection1026, oldProjection1004, reductionProjection4763] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6572 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection674 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6572 (1 : Fin 4)) = canonicalInput6296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1026 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1026 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6296 hH))).trans (oldProjectionSound1026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6572 (2 : Fin 4)) = canonicalInput6197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1004 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1004 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6197 hH))).trans (oldProjectionSound1004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6572 (3 : Fin 4)) = canonicalInput6195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4763 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6572 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6195 hH))).trans (reductionSound4763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3261).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6572 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3261).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6572 (j : Fin 4)))
      2 288 288 2 ![1, 144, 144, 1] ![288, 2, 2, 288] reductionProjection6572 ![oldProjection674, oldProjection1026, oldProjection1004, reductionProjection4763]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6573 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -200), (20, 45), (88, 240), (94, -30), (105, 160), (241, 560), (242, -480), (243, 880), (244, 80), (246, 80), (247, 160), (510, 1440), (698, 320), (700, 240), (704, 160), (733, 720), (752, 720), (1058, -480), (1089, 1440), (1226, 320), (1251, 20), (1321, -240)]

def reductionPivot6573 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound6573 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3258).moment H =
      Integer.Sparse.eval reductionProjection6573 (momentVector H) := by
  have heq : reductionPivot6573 = (fun u v => (normalNode3258).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3258).moment H = injectiveMoment H reductionPivot6573 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3258).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6573 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6573 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6573 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2176, reductionProjection2615, reductionProjection6571, oldProjection2751, reductionProjection6572] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6573 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2176⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2176 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6573 (1 : Fin 5)) = canonicalInput6291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2615 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6291 hH))).trans (reductionSound2615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6573 (2 : Fin 5)) = (normalNode3267).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6571 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6571 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6573 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2934 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2751 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2934 hH))).trans (oldProjectionSound2751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6573 (4 : Fin 5)) = (normalNode3261).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6572 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6573 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6572 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3258).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6573 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3258).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6573 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 1440, 288] ![1, 5, 5, 1, 5] reductionProjection6573 ![oldProjection2176, reductionProjection2615, reductionProjection6571, oldProjection2751, reductionProjection6572]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6574 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -200), (20, 10), (88, 560), (94, 15), (231, -480), (238, -240), (241, 640), (243, 720), (244, 160), (247, 160), (698, 400), (700, 240), (733, 720), (1058, -240), (1226, 800), (1250, 60), (1251, -40), (1323, -480)]

def reductionPivot6574 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6574 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3259).moment H =
      Integer.Sparse.eval reductionProjection6574 (momentVector H) := by
  have heq : reductionPivot6574 = (fun u v => (normalNode3259).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3259).moment H = injectiveMoment H reductionPivot6574 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3259).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6574 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6574 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6574 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2177, reductionProjection1950, reductionProjection6569, oldProjection2751, oldProjection1916] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6574 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2177⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2177 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6574 (1 : Fin 5)) = canonicalInput6292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1950 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6292 hH))).trans (reductionSound1950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6574 (2 : Fin 5)) = (normalNode3268).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6569 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6574 (3 : Fin 5)) = canonicalInput6191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2751 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6191 hH))).trans (oldProjectionSound2751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6574 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1916⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1916 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6574 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3259).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6574 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3259).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6574 (j : Fin 5)))
      1 1440 1440 1 ![720, 288, 288, 1440, 288] ![2, 5, 5, 1, 5] reductionProjection6574 ![oldProjection2177, reductionProjection1950, reductionProjection6569, oldProjection2751, oldProjection1916]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6575 : Integer.Sparse (Fin 1613) := [(1042, 1)]

theorem reductionSound6575 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1042).moment H =
      Integer.Sparse.eval reductionProjection6575 (momentVector H) := by
  have hc : coordinates (1042 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1042) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6575, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6576 : Integer.Sparse (Fin 1613) := [(4, -1), (17, -12), (20, 2), (94, -1)]

def reductionPivot6576 : Matrix (Fin 3) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -4, 4, 1], ![2, 4, -4, -2]]

theorem reductionSound6576 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode9521).moment H =
      Integer.Sparse.eval reductionProjection6576 (momentVector H) := by
  have heq : reductionPivot6576 = (fun u v => (normalNode9521).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation3 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9521).moment H = injectiveMoment H reductionPivot6576 := by
    have hh := congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9521).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation3)).trans (injectiveMoment_transpose H (normalNode9521).entries)).symm
  have hshape : reductionPivot6576 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 2 < 6)
    hH reductionPivot6576 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 2,
      ((![1, 12] : Fin 2 → ℤ) j : ℝ) * (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot6576 (j : Fin 2))) j =
        Integer.Sparse.eval (![reductionProjection66, oldProjection14] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6576 (0 : Fin 2)) = canonicalInput886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6576 (0 : Fin 2)) =
        Integer.Sparse.eval reductionProjection66 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6576 (0 : Fin 2)) =
          Integer.Sparse.eval reductionProjection66 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 2) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound886 hH))).trans (reductionSound66 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6576 (1 : Fin 2)) = canonicalInput12337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6576 (1 : Fin 2)) =
        Integer.Sparse.eval oldProjection14 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6576 (1 : Fin 2)) =
          Integer.Sparse.eval oldProjection14 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 2) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12337 hH))).trans (oldProjectionSound14 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (4 : ℝ) * (normalNode9521).moment H + ∑ j : Fin 2, (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot6576 (j : Fin 2))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9521).moment H) (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot6576 (j : Fin 2)))
      4 48 48 4 ![1, 12] ![48, 4] reductionProjection6576 ![reductionProjection66, oldProjection14]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6577 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (17, 12), (19, -4), (20, -4), (94, -1), (1042, -48)]

def reductionPivot6577 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, -4, 1, 3], ![2, 4, -2, -4]]

theorem reductionSound6577 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9043).moment H =
      Integer.Sparse.eval reductionProjection6577 (momentVector H) := by
  have heq : reductionPivot6577 = (fun u v => (normalNode9043).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9043).moment H = injectiveMoment H reductionPivot6577 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9043).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9043).entries)).symm
  have hshape : reductionPivot6577 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6577 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6577 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection6575, reductionProjection6576, oldProjection278] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6577 (0 : Fin 3)) = canonicalInput8137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6577 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6577 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8137 hH))).trans (reductionSound6575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6577 (1 : Fin 3)) = canonicalInput21702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6577 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6576 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6577 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21702 hH))).trans (reductionSound6576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6577 (2 : Fin 3)) = canonicalInput21732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6577 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection278 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6577 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21732 hH))).trans (oldProjectionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9043).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6577 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9043).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6577 (j : Fin 3)))
      3 144 144 3 ![1, 48, 24] ![144, 3, 6] reductionProjection6577 ![reductionProjection6575, reductionProjection6576, oldProjection278]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6578 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, -4), (20, -3), (94, -3), (106, 16), (243, 16), (1225, 16), (1251, 1)]

def reductionPivot6578 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 0, 2], ![0, 1, -4, 3], ![1, 0, 3, -4]]

theorem reductionSound6578 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9092).moment H =
      Integer.Sparse.eval reductionProjection6578 (momentVector H) := by
  have heq : reductionPivot6578 = (fun u v => (normalNode9092).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9092).moment H = injectiveMoment H reductionPivot6578 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9092).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot6578 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6578 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6578 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection249, oldProjection155, oldProjection130] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6578 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6685 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6578 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6578 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6685 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6578 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6525 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6578 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6578 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6525 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6578 (2 : Fin 3)) = canonicalInput17296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6578 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection130 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6578 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17296 hH))).trans (oldProjectionSound130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9092).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6578 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9092).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6578 (j : Fin 3)))
      3 144 144 3 ![24, 48, 48] ![6, 3, 3] reductionProjection6578 ![oldProjection249, oldProjection155, oldProjection130]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6579 : Integer.Sparse (Fin 1613) := [(3, 12), (4, -2), (17, -12), (19, 12), (20, 9), (94, 1), (105, -16), (106, -32), (243, -48), (1042, 48), (1225, -48), (1251, -2), (1294, 48)]

def reductionPivot6579 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -3, 4], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6579 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4760).moment H =
      Integer.Sparse.eval reductionProjection6579 (momentVector H) := by
  have heq : reductionPivot6579 = (fun u v => (normalNode4760).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4760).moment H = injectiveMoment H reductionPivot6579 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4760).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6579 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6579 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6579 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6577, oldProjection1023, reductionProjection6578, reductionProjection6504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6579 (0 : Fin 4)) = canonicalInput11798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6577 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11798 hH))).trans (reductionSound6577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6579 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4277 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1023 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4277 hH))).trans (oldProjectionSound1023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6579 (2 : Fin 4)) = canonicalInput9676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6578 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9676 hH))).trans (reductionSound6578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6579 (3 : Fin 4)) = canonicalInput9675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6504 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6579 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9675 hH))).trans (reductionSound6504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4760).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6579 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4760).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6579 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 72] ![2, 2, 2, 4] reductionProjection6579 ![reductionProjection6577, oldProjection1023, reductionProjection6578, reductionProjection6504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6580 : Integer.Sparse (Fin 1613) := [(3, -20), (4, 3), (17, 12), (19, -40), (20, -13), (91, 112), (94, -2), (105, 48), (106, 80), (232, -96), (235, -48), (241, 32), (243, 144), (244, 128), (246, 32), (734, 144), (1042, -48), (1225, 160), (1251, 2), (1294, -96)]

def reductionPivot6580 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6580 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3269).moment H =
      Integer.Sparse.eval reductionProjection6580 (momentVector H) := by
  have heq : reductionPivot6580 = (fun u v => (normalNode3269).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3269).moment H = injectiveMoment H reductionPivot6580 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3269).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6580 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6580 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6580 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6579, reductionProjection2606, reductionProjection6510, reductionProjection2485, reductionProjection6505] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6580 (0 : Fin 5)) = (normalNode4760).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6579 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6580 (1 : Fin 5)) = canonicalInput6287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2606 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6287 hH))).trans (reductionSound2606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6580 (2 : Fin 5)) = (normalNode3273).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6580 (3 : Fin 5)) = canonicalInput6203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2485 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6203 hH))).trans (reductionSound2485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6580 (4 : Fin 5)) = (normalNode3271).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6505 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6580 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3269).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6580 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3269).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6580 (j : Fin 5)))
      1 288 288 1 ![288, 72, 288, 288, 288] ![1, 4, 1, 1, 1] reductionProjection6580 ![reductionProjection6579, reductionProjection2606, reductionProjection6510, reductionProjection2485, reductionProjection6505]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6581 : Integer.Sparse (Fin 1613) := [(3, 12), (4, -2), (19, 12), (20, 1), (93, -12), (94, 9), (106, -48), (243, -32), (244, -16), (1060, 48), (1225, -48), (1251, -2), (1294, 48)]

def reductionPivot6581 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -3, 4], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6581 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4761).moment H =
      Integer.Sparse.eval reductionProjection6581 (momentVector H) := by
  have heq : reductionPivot6581 = (fun u v => (normalNode4761).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4761).moment H = injectiveMoment H reductionPivot6581 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4761).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6581 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6581 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6581 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1061, reductionProjection2631, reductionProjection6578, reductionProjection6504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6581 (0 : Fin 4)) = canonicalInput11819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1061 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11819 hH))).trans (oldProjectionSound1061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6581 (1 : Fin 4)) = canonicalInput9710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2631 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9710 hH))).trans (reductionSound2631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6581 (2 : Fin 4)) = canonicalInput9677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6578 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9677 hH))).trans (reductionSound6578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6581 (3 : Fin 4)) = canonicalInput9675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6504 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6581 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9675 hH))).trans (reductionSound6504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4761).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6581 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4761).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6581 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 72] ![2, 2, 2, 4] reductionProjection6581 ![oldProjection1061, reductionProjection2631, reductionProjection6578, reductionProjection6504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6582 : Integer.Sparse (Fin 1613) := [(106, 1), (232, -3), (243, 1), (1057, -3), (1225, 1)]

def reductionPivot6582 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![-2, 4, 0, -2], ![4, -3, -2, 1]]

theorem reductionSound6582 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7437).moment H =
      Integer.Sparse.eval reductionProjection6582 (momentVector H) := by
  have heq : reductionPivot6582 = (fun u v => (normalNode7437).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7437).moment H = injectiveMoment H reductionPivot6582 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7437).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7437).entries)).symm
  have hshape : reductionPivot6582 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6582 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6582 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1699, oldProjection208, oldProjection211] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6582 (0 : Fin 3)) = canonicalInput5499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6582 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1699 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6582 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5499 hH))).trans (reductionSound1699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6582 (1 : Fin 3)) = canonicalInput18702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6582 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection208 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6582 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18702 hH))).trans (oldProjectionSound208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6582 (2 : Fin 3)) = canonicalInput18709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6582 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6582 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18709 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7437).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6582 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7437).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6582 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection6582 ![reductionProjection1699, oldProjection208, oldProjection211]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6583 : Integer.Sparse (Fin 1613) := [(735, 1)]

theorem reductionSound6583 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code735).moment H =
      Integer.Sparse.eval reductionProjection6583 (momentVector H) := by
  have hc : coordinates (735 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code735) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6583, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6584 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 1), (91, -32), (106, -16), (232, 48), (243, -80), (244, -16), (735, -144), (1057, 48), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot6584 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, -1, 4, -3], ![0, 2, -1, -1], ![1, 0, -1, 0]]

theorem reductionSound6584 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3274).moment H =
      Integer.Sparse.eval reductionProjection6584 (momentVector H) := by
  have heq : reductionPivot6584 = (fun u v => (normalNode3274).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3274).moment H = injectiveMoment H reductionPivot6584 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3274).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6584 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6584 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6584 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2498, reductionProjection6582, reductionProjection2484, reductionProjection6583] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6584 (0 : Fin 4)) = (normalNode7436).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2498 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6584 (1 : Fin 4)) = canonicalInput6375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6582 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6375 hH))).trans (reductionSound6582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6584 (2 : Fin 4)) = canonicalInput6210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2484 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6210 hH))).trans (reductionSound2484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6584 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code735).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6583 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6584 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3274).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6584 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3274).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6584 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection6584 ![reductionProjection2498, reductionProjection6582, reductionProjection2484, reductionProjection6583]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6585 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 2), (19, -44), (20, -1), (91, 112), (93, 12), (94, -15), (106, 64), (232, -96), (242, -48), (243, 256), (244, 96), (246, 32), (700, 48), (735, 144), (1057, -48), (1060, -48), (1225, 112), (1226, 16), (1251, 12), (1294, -48)]

def reductionPivot6585 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6585 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3270).moment H =
      Integer.Sparse.eval reductionProjection6585 (momentVector H) := by
  have heq : reductionPivot6585 = (fun u v => (normalNode3270).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3270).moment H = injectiveMoment H reductionPivot6585 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3270).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6585 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6585 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6585 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6581, reductionProjection1950, reductionProjection6584, reductionProjection2497, reductionProjection6546] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6585 (0 : Fin 5)) = (normalNode4761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6581 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6585 (1 : Fin 5)) = canonicalInput6292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1950 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6292 hH))).trans (reductionSound1950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6585 (2 : Fin 5)) = (normalNode3274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6584 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6585 (3 : Fin 5)) = canonicalInput6204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2497 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6204 hH))).trans (reductionSound2497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6585 (4 : Fin 5)) = (normalNode3272).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6546 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6585 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3270).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6585 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3270).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6585 (j : Fin 5)))
      1 288 288 1 ![288, 288, 288, 288, 144] ![1, 1, 1, 1, 2] reductionProjection6585 ![reductionProjection6581, reductionProjection1950, reductionProjection6584, reductionProjection2497, reductionProjection6546]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6586 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -12), (19, -56), (20, 10), (25, -96), (38, -96), (93, 36), (94, 16), (103, -48), (105, 32), (108, 32), (231, -288), (238, -96), (241, 64), (242, -192), (243, 128), (244, 32), (247, 64), (697, -96), (698, 48), (700, 48), (1057, -96), (1059, 16), (1226, 32), (1250, 24), (1251, 15), (1323, -192)]

def reductionPivot6586 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound6586 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3275).moment H =
      Integer.Sparse.eval reductionProjection6586 (momentVector H) := by
  have heq : reductionPivot6586 = (fun u v => (normalNode3275).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3275).moment H = injectiveMoment H reductionPivot6586 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3275).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6586 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6586 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6586 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6286, oldProjection1934, oldProjection1934, oldProjection1459, reductionProjection707] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6586 (0 : Fin 5)) = (normalNode3106).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6286 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6586 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1934⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1934 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6586 (2 : Fin 5)) = canonicalInput6328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1934 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6328 hH))).trans (oldProjectionSound1934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6586 (3 : Fin 5)) = canonicalInput6333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1459 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6333 hH))).trans (oldProjectionSound1459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6586 (4 : Fin 5)) = (normalNode3327).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection707 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6586 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3275).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6586 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3275).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6586 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 1440, 288] ![5, 1, 1, 1, 5] reductionProjection6586 ![reductionProjection6286, oldProjection1934, oldProjection1934, oldProjection1459, reductionProjection707]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6587 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -2), (94, -3), (243, -16), (246, -16), (704, -32), (752, -144), (1251, -9), (1321, 48)]

def reductionPivot6587 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound6587 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3328).moment H =
      Integer.Sparse.eval reductionProjection6587 (momentVector H) := by
  have heq : reductionPivot6587 = (fun u v => (normalNode3328).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3328).moment H = injectiveMoment H reductionPivot6587 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3328).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6587 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6587 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6587 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1327, reductionProjection6567, oldProjection1174, reductionProjection2521] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6587 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4423 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1327 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4423 hH))).trans (oldProjectionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6587 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code752).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6567 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6587 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3017 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3017 hH))).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6587 (3 : Fin 4)) = canonicalInput6341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2521 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6587 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6341 hH))).trans (reductionSound2521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3328).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6587 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3328).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6587 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 144] ![2, 288, 2, 2] reductionProjection6587 ![oldProjection1327, reductionProjection6567, oldProjection1174, reductionProjection2521]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6588 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -60), (4, 5), (19, -80), (20, 30), (93, 180), (94, -85), (103, -240), (105, 240), (106, 80), (108, 160), (238, -240), (241, 240), (243, 720), (246, 80), (247, 160), (698, 80), (704, 160), (752, 720), (1057, -480), (1225, 160), (1226, 160), (1250, 60), (1251, 65), (1321, -240)]

def reductionPivot6588 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound6588 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3276).moment H =
      Integer.Sparse.eval reductionProjection6588 (momentVector H) := by
  have heq : reductionPivot6588 = (fun u v => (normalNode3276).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3276).moment H = injectiveMoment H reductionPivot6588 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3276).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6588 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6588 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 144, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6588 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6287, oldProjection1935, oldProjection1935, reductionProjection6587, oldProjection1458] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6588 (0 : Fin 5)) = (normalNode3107).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6287 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6588 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1935⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1935 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6588 (2 : Fin 5)) = canonicalInput6329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1935 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6329 hH))).trans (oldProjectionSound1935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6588 (3 : Fin 5)) = (normalNode3328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6587 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6588 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3007 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1458 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6588 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3007 hH))).trans (oldProjectionSound1458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3276).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6588 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3276).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6588 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 144, 288, 1440] ![5, 10, 10, 5, 1] reductionProjection6588 ![reductionProjection6287, oldProjection1935, oldProjection1935, reductionProjection6587, oldProjection1458]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6589 : Integer.Sparse (Fin 1613) := [(3, 1), (19, -1), (20, -1), (93, -9), (94, -3), (103, 12), (238, 12), (1057, 24), (1250, -3), (1251, -2)]

def reductionPivot6589 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 3, -3]]

theorem reductionSound6589 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode3277).moment H =
      Integer.Sparse.eval reductionProjection6589 (momentVector H) := by
  have heq : reductionPivot6589 = (fun u v => (normalNode3277).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3277).moment H = injectiveMoment H reductionPivot6589 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3277).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6589 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6589 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6589 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6181, oldProjection1051, oldProjection1051, oldProjection912] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6589 (0 : Fin 4)) = canonicalInput6011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6181 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6011 hH))).trans (reductionSound6181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6589 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2996 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1051 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1051 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2996 hH))).trans (oldProjectionSound1051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6589 (2 : Fin 4)) = canonicalInput6331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1051 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1051 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6331 hH))).trans (oldProjectionSound1051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6589 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3008 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection912 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6589 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection912 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3008 hH))).trans (oldProjectionSound912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3277).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6589 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3277).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6589 (j : Fin 4)))
      2 72 144 4 ![72, 144, 144, 36] ![2, 1, 1, 4] reductionProjection6589 ![reductionProjection6181, oldProjection1051, oldProjection1051, oldProjection912]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6590 : Integer.Sparse (Fin 1613) := [(3, -16), (4, 4), (19, -28), (20, -8), (94, -25), (105, 32), (106, 32), (108, 32), (241, 32), (243, 128), (244, 96), (246, 64), (704, 32), (1031, -96), (1040, -96), (1045, -96), (1046, -48), (1052, -48), (1053, -96), (1251, 3)]

def reductionPivot6590 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound6590 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3278).moment H =
      Integer.Sparse.eval reductionProjection6590 (momentVector H) := by
  have heq : reductionPivot6590 = (fun u v => (normalNode3278).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3278).moment H = injectiveMoment H reductionPivot6590 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3278).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6590 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6590 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 144, 288, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6590 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6288, oldProjection1939, oldProjection1467, reductionProjection6430, reductionProjection6430] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6590 (0 : Fin 5)) = (normalNode3113).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6288 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6590 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1939⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1939 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6590 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3010 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1467 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3010 hH))).trans (oldProjectionSound1467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6590 (3 : Fin 5)) = (normalNode3332).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6430 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6590 (4 : Fin 5)) = canonicalInput6337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6430 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6590 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6337 hH))).trans (reductionSound6430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3278).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6590 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3278).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6590 (j : Fin 5)))
      1 288 288 1 ![144, 144, 288, 144, 144] ![2, 2, 1, 2, 2] reductionProjection6590 ![reductionProjection6288, oldProjection1939, oldProjection1467, reductionProjection6430, reductionProjection6430]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6591 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (233, -48), (240, -48), (241, 16), (1251, 1)]

def reductionPivot6591 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![2, -2, 2, -2], ![-1, 2, -4, 3]]

theorem reductionSound6591 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10902).moment H =
      Integer.Sparse.eval reductionProjection6591 (momentVector H) := by
  have heq : reductionPivot6591 = (fun u v => (normalNode10902).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10902).moment H = injectiveMoment H reductionPivot6591 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10902).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10902).entries)).symm
  have hshape : reductionPivot6591 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6591 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6591 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection152, oldProjection140, reductionProjection1719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6591 (0 : Fin 3)) = canonicalInput22419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6591 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection152 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6591 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22419 hH))).trans (oldProjectionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6591 (1 : Fin 3)) = canonicalInput31814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6591 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection140 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6591 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31814 hH))).trans (oldProjectionSound140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6591 (2 : Fin 3)) = canonicalInput31816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6591 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6591 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31816 hH))).trans (reductionSound1719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10902).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6591 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10902).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6591 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection6591 ![oldProjection152, oldProjection140, reductionProjection1719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
